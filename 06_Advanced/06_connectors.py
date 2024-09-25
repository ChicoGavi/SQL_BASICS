# CONNECTORS
# Lección 19.1: https://youtu.be/OuJerKzV5T0?t=20876
# Lección 19.2: https://youtu.be/OuJerKzV5T0?t=21149

# Ejemplo de conexión desde Python a una base de datos local
# Se ejemplifica cómo evitar SQL INJECTION

# Instalacion paquete conector SQL: pip install mysql-connector-python

import mysql.connector

def mostrar_user(user):

        config = {
        "host": "127.0.0.1",
        "port": "3306",
        "database": "hola_mysql",
        "user": "root",
        "password": "admin1234"
        }

         # config = {
         #     "host": "bpw0hq9h09e7mqicjhtl-mysql.services.clever-cloud.com",
        #     "port": "3306",
         #     "database": "bpw0hq9h09e7mqicjhtl",
         #     "user": "uqzby88erlhvkrty",
         #     "password": "oePXiCOHdU1WRV80NPyv"
         # }

        connection = mysql.connector.connect(**config)
        cursor = connection.cursor()

        query = "SELECT * FROM users WHERE user_id = 1 " 
        print(query)
        cursor.execute(query)
        result = cursor.fetchall()

        for row in result:
                print(row)

        cursor.close()
        connection.close()


        mostrar_user(1)
        #mostrar_user("'; UPDATE users SET age = '15' WHERE user_id = 1; --")
