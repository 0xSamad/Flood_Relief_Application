import os
import mysql.connector
from mysql.connector import Error
from dotenv import load_dotenv

# Load environment variables (like DB passwords) from a .env file
load_dotenv()

def get_db_connection():
    """Establishes and returns a connection to the MySQL database with retries."""
    import time
    attempts = 5
    for i in range(attempts):
        try:
            connection = mysql.connector.connect(
                host=os.getenv('DB_HOST') or os.getenv('MYSQLHOST') or 'localhost',
                user=os.getenv('DB_USER') or os.getenv('MYSQLUSER') or 'root',
                password=os.getenv('DB_PASSWORD') or os.getenv('MYSQLPASSWORD') or '',
                database=os.getenv('DB_NAME') or os.getenv('MYSQLDATABASE') or 'flood_relief_db',
                port=int(os.getenv('DB_PORT') or os.getenv('MYSQLPORT') or 3306),
                connect_timeout=10
            )
            if connection.is_connected():
                return connection
        except Error as e:
            print(f"Attempt {i+1}/{attempts} failed: {e}")
            if i < attempts - 1:
                time.sleep(5)
    return None

def fetch_all(query, params=None):
    """Helper function to fetch all rows for a given query."""
    conn = get_db_connection()
    if conn is None:
        return []
    
    try:
        cursor = conn.cursor(dictionary=True) # dictionary=True returns rows as dicts
        cursor.execute(query, params or ())
        result = cursor.fetchall()
        return result
    except Error as e:
        print(f"Database error: {e}")
        return []
    finally:
        if conn.is_connected():
            cursor.close()
            conn.close()
def run_migrations():
    """Automatically runs DDL and DML scripts on startup to ensure the database is populated."""
    conn = get_db_connection()
    if not conn:
        return
    
    try:
        cursor = conn.cursor()
        base = os.path.dirname(__file__)
        sql_files = [
            os.path.join(base, 'sql', 'flood_relief_ddl.sql'),
            os.path.join(base, 'sql', 'flood_relief_dml.sql'),
        ]

        for filepath in sql_files:
            if not os.path.exists(filepath):
                continue
            
            with open(filepath, 'r', encoding='utf-8') as f:
                raw = f.read()

            current = []
            for line in raw.splitlines():
                stripped = line.strip()
                if not stripped or stripped.startswith('--'):
                    continue
                current.append(stripped)
                if stripped.endswith(';'):
                    stmt = ' '.join(current)
                    current = []
                    if stmt.upper().startswith(('CREATE DATABASE', 'USE ')):
                        continue
                    try:
                        cursor.execute(stmt)
                    except Error as e:
                        # Ignore 1050 (Table already exists), 1062 (Duplicate entry), 1061 (Duplicate key)
                        if e.errno not in (1050, 1062, 1061, 1060):
                            print(f"Migration Warn: {e}")
        conn.commit()
        cursor.close()
        conn.close()
        print("✅ Database auto-migration successful.")
    except Exception as e:
        print(f"❌ Auto-migration failed: {e}")

# Run migrations automatically when the app starts
run_migrations()
