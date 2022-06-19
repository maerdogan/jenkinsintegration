import mysql.connector

mydb = mysql.connector.connect(
  host='10.130.4.218',
  user="root",
  password="admin"
)

print(mydb)


