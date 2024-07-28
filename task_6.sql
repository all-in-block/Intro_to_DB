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
    cursor.execute("INSERT INTO customer(customer_id, customer_name, email, address) VALUES(2, "Blessing Malik", "bmalik@sandtech.com", "124 Happiness  Ave."), VALUES(3, "Obed Ehoneah", "eobed@sandtech.com", "125 Happiness  Ave."), VALUES(4, "Nehemial Kamolu", "nkamolu@sandtech.com", "126 Happiness  Ave.") ")
    connection.commit()
    print("Database 'alx_book_store' created successfully!")

except mysql.connector.Error as e:
    print(e)