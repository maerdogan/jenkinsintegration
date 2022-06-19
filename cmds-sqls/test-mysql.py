import mysql.connector

mydb = mysql.connector.connect(
  host='10.128.3.116',
  user="root",
  password="admin"
)

print(mydb)
