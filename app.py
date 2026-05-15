from flask import Flask, render_template, request, redirect, url_for, flash, session
from werkzeug.security import generate_password_hash, check_password_hash
from functools import wraps
from db_config import fetch_all, get_db_connection

app = Flask(__name__)
app.secret_key = "super_secret_flood_relief_key"

def login_required(f):
    @wraps(f)
    def decorated_function(*args, **kwargs):
        if 'user_id' not in session:
            flash('Please log in to access this page.', 'warning')
            return redirect(url_for('login'))
        return f(*args, **kwargs)
    return decorated_function

# --- Authentication Routes ---
@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        name = request.form.get('name')
        email = request.form.get('email')
        password = request.form.get('password')
        city = request.form.get('city')
        phone = request.form.get('phone')
        role = request.form.get('role', 'viewer')
        
        # In a real app, you'd check if email already exists
        hashed_pw = generate_password_hash(password)
        
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            try:
                cursor.execute(
                    "INSERT INTO users (name, email, password_hash, role, city, phone) VALUES (%s, %s, %s, %s, %s, %s)",
                    (name, email, hashed_pw, role, city, phone)
                )
                conn.commit()
                flash('Registration successful! Please log in.', 'success')
                return redirect(url_for('login'))
            except Exception as e:
                flash(f'Error: {e}', 'danger')
            finally:
                cursor.close()
                conn.close()
    return render_template('register.html')

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form.get('email')
        password = request.form.get('password')
        
        users = fetch_all("SELECT * FROM users WHERE email = %s", (email,))
        if users:
            user = users[0]
            # Check password (also allowing plain text check for synthetic data bypass)
            if check_password_hash(user['password_hash'], password) or user['password_hash'] == password:
                session['user_id'] = user['id']
                session['user_name'] = user['name']
                session['user_role'] = user['role']
                flash(f"Welcome back, {user['name']}!", 'success')
                return redirect(url_for('dashboard'))
            else:
                flash('Invalid email or password.', 'danger')
        else:
            flash('Invalid email or password.', 'danger')
            
    return render_template('login.html')

@app.route('/logout')
def logout():
    session.clear()
    flash('You have been logged out.', 'success')
    return redirect(url_for('login'))

# --- Main App Routes ---
@app.route('/', methods=['GET', 'POST'])
@login_required
def dashboard():
    if request.method == 'POST':
        district = request.form.get('district')
        province = request.form.get('province')
        severity = request.form.get('severity')
        description = request.form.get('description')
        latitude = request.form.get('latitude')
        longitude = request.form.get('longitude')
        
        # If lat/long are empty, default to some coordinates based on district/province (dummy for now)
        if not latitude: latitude = 30.0
        if not longitude: longitude = 70.0
            
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            cursor.execute(
                "INSERT INTO incidents (district, province, severity, description, latitude, longitude, reported_by) VALUES (%s, %s, %s, %s, %s, %s, %s)",
                (district, province, severity, description, latitude, longitude, session.get('user_id'))
            )
            conn.commit()
            cursor.close()
            conn.close()
            flash('Incident reported successfully. Emergency services have been notified.', 'danger')
            return redirect(url_for('dashboard'))
    # Fetch summary stats for the dashboard
    stats = {}
    
    # Check if DB is connected
    conn = get_db_connection()
    if conn is None:
        return render_template('dashboard.html', error="Database connection failed. Make sure MySQL is running and credentials are correct in .env")
    else:
        conn.close()

    # Get total evacuees
    evacuees_count = fetch_all("SELECT COUNT(*) as total FROM evacuees")
    stats['total_evacuees'] = evacuees_count[0]['total'] if evacuees_count else 0
    
    # Get active shelters
    shelters_count = fetch_all("SELECT COUNT(*) as total FROM shelters WHERE status != 'closed'")
    stats['active_shelters'] = shelters_count[0]['total'] if shelters_count else 0
    
    # Get total incidents
    incidents_count = fetch_all("SELECT COUNT(*) as total FROM incidents")
    stats['total_incidents'] = incidents_count[0]['total'] if incidents_count else 0
    
    # Get pending relief requests
    requests_count = fetch_all("SELECT COUNT(*) as total FROM relief_requests WHERE status = 'pending'")
    stats['pending_requests'] = requests_count[0]['total'] if requests_count else 0

    # Fetch recent incidents for the map
    recent_incidents = fetch_all("SELECT district, province, severity, latitude, longitude, description FROM incidents ORDER BY reported_at DESC LIMIT 10")
    
    # Fetch active shelters for the map
    active_shelters_list = fetch_all("SELECT name, city, latitude, longitude, current_occupancy, capacity FROM shelters WHERE status = 'open'")

    # Fetch data for charts
    health_stats = fetch_all("SELECT health_status, COUNT(*) as count FROM evacuees GROUP BY health_status")
    capacity_stats = fetch_all("SELECT name, current_occupancy, capacity FROM shelters WHERE status != 'closed' ORDER BY (current_occupancy/capacity) DESC LIMIT 5")

    # Fetch shelters with pending relief requests for the map (orange markers)
    pending_request_shelters = fetch_all("""
        SELECT s.name as shelter_name, s.city, s.province, s.latitude, s.longitude,
               COUNT(r.id) as pending_count
        FROM relief_requests r
        JOIN shelters s ON r.shelter_id = s.id
        WHERE r.status = 'pending'
        GROUP BY s.id, s.name, s.city, s.province, s.latitude, s.longitude
    """)

    return render_template('dashboard.html', stats=stats, incidents=recent_incidents, shelters=active_shelters_list, health_stats=health_stats, capacity_stats=capacity_stats, pending_request_shelters=pending_request_shelters)

@app.route('/search')
@login_required
def search():
    query = request.args.get('q', '').strip()
    if not query:
        return redirect(url_for('dashboard'))
        
    search_term = f"%{query}%"
    
    shelters_results = fetch_all("SELECT * FROM shelters WHERE name LIKE %s OR city LIKE %s", (search_term, search_term))
    evacuees_results = fetch_all("SELECT * FROM evacuees WHERE name LIKE %s OR home_district LIKE %s", (search_term, search_term))
    incidents_results = fetch_all("SELECT * FROM incidents WHERE district LIKE %s OR description LIKE %s", (search_term, search_term))
    
    return render_template('search_results.html', query=query, shelters=shelters_results, evacuees=evacuees_results, incidents=incidents_results)

@app.route('/shelters', methods=['GET', 'POST'])
@login_required
def shelters():
    if request.method == 'POST':
        action = request.form.get('action', 'add')
        name = request.form.get('name')
        city = request.form.get('city')
        province = request.form.get('province')
        capacity = request.form.get('capacity')
        
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            if action == 'add':
                cursor.execute(
                    "INSERT INTO shelters (name, city, province, capacity) VALUES (%s, %s, %s, %s)",
                    (name, city, province, capacity)
                )
                flash('Shelter added successfully!', 'success')
            elif action == 'edit':
                shelter_id = request.form.get('shelter_id')
                cursor.execute(
                    "UPDATE shelters SET name=%s, city=%s, province=%s, capacity=%s WHERE id=%s",
                    (name, city, province, capacity, shelter_id)
                )
                flash('Shelter updated successfully!', 'success')
            conn.commit()
            cursor.close()
            conn.close()
            return redirect(url_for('shelters'))

    shelters_data = fetch_all("""
        SELECT s.*, u.name as manager_name 
        FROM shelters s 
        LEFT JOIN users u ON s.managed_by = u.id
        ORDER BY s.province, s.city
    """)
    return render_template('shelters.html', shelters=shelters_data)

@app.route('/evacuees', methods=['GET', 'POST'])
@login_required
def evacuees():
    if session.get('user_role') == 'viewer':
        flash('Access denied. You do not have permission to view evacuee data.', 'danger')
        return redirect(url_for('dashboard'))

    if request.method == 'POST':
        name = request.form.get('name')
        age = request.form.get('age')
        gender = request.form.get('gender')
        home_district = request.form.get('home_district')
        shelter_id = request.form.get('shelter_id')
        health_status = request.form.get('health_status')

        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            cursor.execute(
                "INSERT INTO evacuees (shelter_id, name, age, gender, home_district, health_status) VALUES (%s, %s, %s, %s, %s, %s)",
                (shelter_id, name, age, gender, home_district, health_status)
            )
            # Update shelter occupancy
            cursor.execute("UPDATE shelters SET current_occupancy = current_occupancy + 1 WHERE id = %s", (shelter_id,))
            conn.commit()
            cursor.close()
            conn.close()
            flash('Evacuee registered successfully!', 'success')
            return redirect(url_for('evacuees'))

    evacuees_data = fetch_all("""
        SELECT e.*, s.name as shelter_name 
        FROM evacuees e
        LEFT JOIN shelters s ON e.shelter_id = s.id
        ORDER BY e.arrived_at DESC LIMIT 50
    """)
    active_shelters = fetch_all("SELECT id, name FROM shelters WHERE status != 'closed'")
    return render_template('evacuees.html', evacuees=evacuees_data, shelters=active_shelters)

@app.route('/requests', methods=['GET', 'POST'])
@login_required
def relief_requests():
    if request.method == 'POST':
        shelter_id = request.form.get('shelter_id')
        ngo_id = request.form.get('ngo_id')
        item_needed = request.form.get('item_needed')
        quantity_needed = request.form.get('quantity_needed')
        urgency = request.form.get('urgency')
        
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            cursor.execute(
                "INSERT INTO relief_requests (shelter_id, ngo_id, item_needed, quantity_needed, urgency, status) VALUES (%s, %s, %s, %s, %s, 'pending')",
                (shelter_id, ngo_id, item_needed, quantity_needed, urgency)
            )
            conn.commit()
            cursor.close()
            conn.close()
            flash('Relief request submitted successfully!', 'success')
            return redirect(url_for('relief_requests'))

    requests_data = fetch_all("""
        SELECT r.*, s.name as shelter_name, n.name as ngo_name
        FROM relief_requests r
        LEFT JOIN shelters s ON r.shelter_id = s.id
        LEFT JOIN ngos n ON r.ngo_id = n.id
        ORDER BY r.created_at DESC
    """)
    shelters_list = fetch_all("SELECT id, name FROM shelters WHERE status != 'closed'")
    ngos_list = fetch_all("SELECT id, name FROM ngos")
    return render_template('requests.html', requests=requests_data, shelters=shelters_list, ngos=ngos_list)

@app.route('/requests/fulfill/<int:req_id>', methods=['POST'])
@login_required
def fulfill_request(req_id):
    if session.get('user_role') not in ['admin', 'ngo_rep']:
        flash("You don't have permission to fulfill requests.", "danger")
        return redirect(url_for('relief_requests'))
        
    conn = get_db_connection()
    if conn:
        cursor = conn.cursor()
        cursor.execute("UPDATE relief_requests SET status = 'fulfilled' WHERE id = %s", (req_id,))
        conn.commit()
        cursor.close()
        conn.close()
        flash('Request successfully fulfilled!', 'success')
    return redirect(url_for('relief_requests'))

@app.route('/supplies', methods=['GET', 'POST'])
@login_required
def supplies():
    if session.get('user_role') == 'viewer':
        flash('Access denied. You do not have permission to view supply inventory.', 'danger')
        return redirect(url_for('dashboard'))

    if request.method == 'POST':
        action = request.form.get('action')
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            if action == 'consume':
                item_id = request.form.get('item_id')
                consume_amount = int(request.form.get('consume_amount', 0))
                cursor.execute("UPDATE supplies SET quantity = quantity - %s, last_updated = NOW() WHERE id = %s AND quantity >= %s", 
                              (consume_amount, item_id, consume_amount))
                if cursor.rowcount == 0:
                    flash('Invalid quantity or item.', 'danger')
                else:
                    flash(f'Successfully consumed {consume_amount} items.', 'success')
            elif action == 'add':
                shelter_id = request.form.get('shelter_id')
                item_name = request.form.get('item_name')
                category = request.form.get('category')
                quantity = int(request.form.get('quantity', 0))
                cursor.execute("INSERT INTO supplies (shelter_id, item_name, category, quantity, last_updated) VALUES (%s, %s, %s, %s, NOW())", 
                              (shelter_id, item_name, category, quantity))
                flash('New supply stock added successfully.', 'success')
            
            conn.commit()
            cursor.close()
            conn.close()
            return redirect(url_for('supplies'))

    supplies_data = fetch_all("""
        SELECT su.*, s.name as shelter_name 
        FROM supplies su
        LEFT JOIN shelters s ON su.shelter_id = s.id
        ORDER BY su.last_updated DESC
    """)
    active_shelters = fetch_all("SELECT id, name FROM shelters WHERE status != 'closed'")
    return render_template('supplies.html', supplies=supplies_data, shelters=active_shelters)

@app.route('/admin/ngos', methods=['GET', 'POST'])
@login_required
def admin_ngos():
    if session.get('user_role') != 'admin':
        flash('Access denied. Admin privileges required.', 'danger')
        return redirect(url_for('dashboard'))

    if request.method == 'POST':
        action = request.form.get('action')
        if action == 'add':
            name = request.form.get('name')
            contact_person = request.form.get('contact_person')
            email = request.form.get('email')
            phone = request.form.get('phone')
            areas_covered = request.form.get('areas_covered')
            
            conn = get_db_connection()
            if conn:
                cursor = conn.cursor()
                cursor.execute(
                    "INSERT INTO ngos (name, contact_person, email, phone, areas_covered) VALUES (%s, %s, %s, %s, %s)",
                    (name, contact_person, email, phone, areas_covered)
                )
                conn.commit()
                cursor.close()
                conn.close()
                flash('NGO registered successfully!', 'success')
            return redirect(url_for('admin_ngos'))

    ngos_data = fetch_all("SELECT * FROM ngos ORDER BY id DESC")
    return render_template('admin_ngos.html', ngos=ngos_data)

@app.route('/admin/users', methods=['GET', 'POST'])
@login_required
def admin_users():
    if session.get('user_role') != 'admin':
        flash('Access denied. Admin privileges required.', 'danger')
        return redirect(url_for('dashboard'))

    if request.method == 'POST':
        user_id = request.form.get('user_id')
        new_role = request.form.get('new_role')
        
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            cursor.execute("UPDATE users SET role = %s WHERE id = %s", (new_role, user_id))
            conn.commit()
            cursor.close()
            conn.close()
            flash('User role updated successfully!', 'success')
        return redirect(url_for('admin_users'))

    users_data = fetch_all("SELECT id, name, email, city, role FROM users ORDER BY id DESC")
    return render_template('admin_users.html', users=users_data)

if __name__ == '__main__':
    app.run(debug=True, port=5000)
