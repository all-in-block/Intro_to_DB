import mysql.connector

try:

    connection = mysql.connector.connect(
        host = "localhost",
        user = "root",
        password = "",
        database = "alx_book_store"
        )
    cursor = connection.cursor()
    cursor.execute("USE alx_book_store;")
    cursor.execute("SHOW TABLES")
    connection.commit()
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(e)