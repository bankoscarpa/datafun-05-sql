import sqlite3

conn = sqlite3.connect('movies_database.db')
cursor = conn.cursor()

for sql_file in ['sql_create/drop_tables_01.sql',
                 'sql_create/create_tables_02.sql',
                 'sql_create/insert_records_03.sql']:
    with open(sql_file) as f:
        cursor.executescript(f.read())

conn.commit()
conn.close()
