import sqlite3
import os

conn = sqlite3.connect('movies_database.db')
cursor = conn.cursor()
base_path = os.path.dirname(__file__)

for sql_file in ['sql_features/update_records.sql',
                 'sql_features/delete_records.sql']:
    full_path = os.path.join(base_path, sql_file)
    with open(full_path) as f:
        cursor.executescript(f.read())

conn.commit()
conn.close()
