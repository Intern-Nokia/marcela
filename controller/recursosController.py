from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, DateTime, Text, Integer
from sqlalchemy.ext.declarative import declarative_base


app = Blueprint('recurso', __name__)

Base = declarative_base()

#Entity Personal from database
class Recurso(Base):
    __tablename__ = '103 - recursos asignados'
    id_asignacion = Column('ID Asignacion', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    recurso_asignado = Column('Recurso asignado', String(45))
    fecha_asignacion = Column('Fecha asignación', DateTime)
    fecha_devolucion = Column('Fecha devolución', DateTime)
    comentarios = Column('Comentarios', Text)


#Get all recursos
@app.route('/', methods=['GET'])
def get_recurso():
    conn = connect('root', 'root')
    recursos = conn.query(Recurso).all()
    result = []
    conn.close()
    for recurso in recursos:
        result.append(
            {
            'ID Asignacion': recurso.id_asignacion,
            'legajo': recurso.legajo,
            'Recurso asignado': recurso.last_name,
            'Fecha asignacion': recurso.fecha_asignacion,
            'Fecha devolucion': recurso.fecha_devolucion,
            'Comentarios': recurso.comentarios
            })
    return jsonify(result)
