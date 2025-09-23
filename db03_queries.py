import sqlite3

conn = sqlite3.connect('movies_database.db')
cursor = conn.cursor()

for sql_file in ['sql_queries/query_join.sql',
                 'sql_queries/query_aggregation.sql']:
    with open(sql_file) as f:
        cursor.execute(f.read())
        results = cursor.fetchall()
        for row in results:
            print(row)

conn.close()
