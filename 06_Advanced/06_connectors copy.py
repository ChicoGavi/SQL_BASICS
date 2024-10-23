import fdb


db_host = 'localhost'  # o la IP del servidor
db_port = 3050         # puerto por defecto de Firebird
db_name = 'C:/PROGRAM FILES/EMS/SQL MANAGER FOR INTERBASE & FIREBIRD/PRUEBA'  # ruta de tu base de datos
db_user = 'SYSDBA'
db_password = '1234'


con = fdb.connect(
    host=db_host,
    database=db_name,
    user=db_user,
    password=db_password,
    port=db_port
)

cur = con.cursor()

cur.execute("SELECT * FROM NEW_TABLE")
# Recuperar y mostrar los resultados
for row in cur.fetchall():
    print(row)