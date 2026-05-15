"""
Migration script: runs DDL + DML on Railway startup using Railway's internal DB_HOST.
This file runs once when deployed via Railway, then the app takes over.
Delete or disable this after first successful deployment.
"""
import os
import mysql.connector
from dotenv import load_dotenv

load_dotenv()

def run_migration():
    conn = mysql.connector.connect(
        host=os.getenv('DB_HOST'),
        port=int(os.getenv('DB_PORT', 3306)),
        user=os.getenv('DB_USER'),
        password=os.getenv('DB_PASSWORD'),
        database=os.getenv('DB_NAME'),
        use_pure=True
    )
    cursor = conn.cursor()

    base = os.path.dirname(__file__)
    sql_files = [
        os.path.join(base, 'sql', 'flood_relief_ddl.sql'),
        os.path.join(base, 'sql', 'flood_relief_dml.sql'),
    ]

    for filepath in sql_files:
        print(f"Running {os.path.basename(filepath)}...")
        with open(filepath, 'r', encoding='utf-8') as f:
            raw = f.read()

        current = []
        for line in raw.splitlines():
            stripped = line.strip()
            if stripped.startswith('--') or stripped == '':
                continue
            current.append(stripped)
            if stripped.endswith(';'):
                stmt = ' '.join(current)
                current = []
                if stmt.upper().startswith('CREATE DATABASE') or stmt.upper().startswith('USE '):
                    continue
                try:
                    cursor.execute(stmt)
                except mysql.connector.Error as e:
                    if e.errno not in (1050, 1062):  # ignore table exists & duplicate entry
                        print(f"  WARN: {e}")
        conn.commit()
        print(f"  Done.")

    cursor.close()
    conn.close()
    print("Migration complete!")

if __name__ == '__main__':
    run_migration()
