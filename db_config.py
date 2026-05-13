import os
import mysql.connector
from mysql.connector import Error
from dotenv import load_dotenv

# Load environment variables (like DB passwords) from a .env file
load_dotenv()

def get_db_connection():
    """Establishes and returns a connection to the MySQL database."""
    try:
        connection = mysql.connector.connect(
            host=os.getenv('DB_HOST', 'localhost'),
            user=os.getenv('DB_USER', 'root'),          # Change this if your MySQL user is different
            password=os.getenv('DB_PASSWORD', ''),      # Set your MySQL password in a .env file
            database=os.getenv('DB_NAME', 'flood_relief_db')
        )
        if connection.is_connected():
            return connection
    except Error as e:
        print(f"Error connecting to MySQL: {e}")
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
