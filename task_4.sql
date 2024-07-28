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
    cursor.execute("SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE, COLUMN_TYPE, COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = 'alx_book_store' AND TABLE_NAME = 'Books';")
    connection.commit()
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(e)