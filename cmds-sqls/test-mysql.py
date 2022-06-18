import mysql.connector
from mysql.connector import errorcode

# Obtain connection string information from the portal

connection = pymysql.connect(host='10.130.4.218',
                             user='root',
                             password='admin',
                             db='mysqldb',
                             charset='utf8mb4',
                             cursorclass=pymysql.cursors.DictCursor)

# Construct connection string
try:
    with connection.cursor() as cursor:
        # Read a single record
        sql = "SELECT `id`, `firstname`,`lastname` FROM `users` WHERE `id`=%s"
        cursor.execute(sql, ('2',))
        result = cursor.fetchone()
        print(result)
finally:
    connection.close()
