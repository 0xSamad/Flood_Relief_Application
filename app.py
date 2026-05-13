from flask import Flask, render_template, request, redirect, url_for, flash
from db_config import fetch_all, get_db_connection

app = Flask(__name__)
app.secret_key = "super_secret_flood_relief_key"

@app.route('/')
def dashboard():
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

    return render_template('dashboard.html', stats=stats, incidents=recent_incidents, shelters=active_shelters_list)

@app.route('/shelters', methods=['GET', 'POST'])
def shelters():
    if request.method == 'POST':
        name = request.form.get('name')
        city = request.form.get('city')
        province = request.form.get('province')
        capacity = request.form.get('capacity')
        
        conn = get_db_connection()
        if conn:
            cursor = conn.cursor()
            cursor.execute(
                "INSERT INTO shelters (name, city, province, capacity) VALUES (%s, %s, %s, %s)",
                (name, city, province, capacity)
            )
            conn.commit()
            cursor.close()
            conn.close()
            flash('Shelter added successfully!', 'success')
            return redirect(url_for('shelters'))

    shelters_data = fetch_all("""
        SELECT s.*, u.name as manager_name 
        FROM shelters s 
        LEFT JOIN users u ON s.managed_by = u.id
        ORDER BY s.province, s.city
    """)
    return render_template('shelters.html', shelters=shelters_data)

@app.route('/evacuees', methods=['GET', 'POST'])
def evacuees():
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

@app.route('/requests')
def relief_requests():
    requests_data = fetch_all("""
        SELECT r.*, s.name as shelter_name, n.name as ngo_name
        FROM relief_requests r
        LEFT JOIN shelters s ON r.shelter_id = s.id
        LEFT JOIN ngos n ON r.ngo_id = n.id
        ORDER BY r.created_at DESC
    """)
    return render_template('requests.html', requests=requests_data)

if __name__ == '__main__':
    app.run(debug=True, port=5000)
