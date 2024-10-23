from flask import Flask, jsonify, render_template, request
from config import Config
import mysql.connector

app = Flask(__name__)

def db_connection():
    return mysql.connector.connect(
        host=Config.HOST,
        port=Config.PORT,
        user=Config.USER,
        password=Config.PASSWORD,
        database=Config.DATABASE
    )
@app.route('/inicio')
def index():
    return render_template('index.html')

@app.route('/Crud')
def CRUD():
    return render_template('CRUD.html')

@app.route('/inicio/hoja_de_vida_Sebastian.html')
def hojs_s():
    return render_template('hoja_de_vida_Sebastian.html')

@app.route('/sitios_turisticos', methods=['GET'])
def obtener_sitios_turisticos():
    sql = "SELECT * FROM sitios_turisticos"
    connection = db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute(sql)
    sitios = cursor.fetchall()
    cursor.close()
    connection.close()

    return jsonify(sitios), 200

@app.route('/sitios_turisticos/<int:id>', methods=['GET'])
def obtener_sitio_turistico(id):
    sql = "SELECT * FROM sitios_turisticos WHERE id = %s"
    connection = db_connection()
    cursor = connection.cursor(dictionary=True)
    cursor.execute(sql, (id,))
    sitio = cursor.fetchone()
    cursor.close()
    connection.close()

    if sitio:
        return jsonify(sitio), 200
    else:
        return jsonify({'error': 'Sitio turístico no encontrado'}), 404

@app.route('/sitios_turisticos', methods=['POST'])
def crear_sitio_turistico():
    data = request.get_json()
    sql = "INSERT INTO sitios_turisticos (nombre, descripcion, ubicacion) VALUES (%s, %s, %s)"
    connection = db_connection()
    cursor = connection.cursor()
    cursor.execute(sql, (data['nombre'], data['descripcion'], data['ubicacion']))
    connection.commit()
    nuevo_sitio_id = cursor.lastrowid
    cursor.close()
    connection.close()

    return jsonify({'id': nuevo_sitio_id, **data}), 201

@app.route('/sitios_turisticos/<int:id>', methods=['PUT'])
def actualizar_sitio_turistico(id):
    data = request.get_json()
    sql = "UPDATE sitios_turisticos SET nombre = %s, descripcion = %s, ubicacion = %s, fecha_creacion = %s WHERE id = %s"
    connection = db_connection()
    cursor = connection.cursor()
    cursor.execute(sql, (data['nombre'], data['descripcion'], data['ubicacion'], data['fecha_creacion'], id))
    connection.commit()
    cursor.close()
    connection.close()

    return jsonify({'id': id, **data}), 200

@app.route('/sitios_turisticos/<int:id>', methods=['DELETE'])
def borrar_sitio_turistico(id):
    sql = "DELETE FROM sitios_turisticos WHERE id = %s"
    connection = db_connection()
    cursor = connection.cursor()
    cursor.execute(sql, (id,))
    connection.commit()
    cursor.close()
    connection.close()

    return jsonify({'message': 'Sitio turístico borrado'}), 204

if __name__ == '__main__':
    app.run(debug=True)
