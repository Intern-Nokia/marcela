from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('dotacion_2013_01', __name__)

Base = declarative_base()

# Entity Dotacion201301 from database
class Dotacion201301(Base):
    __tablename__ = 'dotacion 2013-01'
    legajo = Column('Legajo', String(50), primary_key=True)
    apellido1 = Column('Apellido 1', String(45))
    apellido2 = Column('Apellido 2', String(45))
    nombre1 = Column('Nombre 1', String(45))
    nombre2 = Column('Nombre 2', String(45))
    rut = Column('RUT', String(45))


# Get all Dotacion201301
@app.route('/', methods=['GET'])
def get_dotacion_2013_01():
    conn = connect('root', 'root')
    dotacion_2013_01 = conn.query(Dotacion201301).all()
    result = []
    conn.close()
    for empleado in dotacion_2013_01:
        result.append(
            {
                'Legajo': empleado.legajo,
                'Apellido 1': empleado.apellido1,
                'Apellido 2': empleado.apellido2,
                'Nombre 1': empleado.nombre1,
                'Nombre 2': empleado.nombre2,
                'RUT': empleado.rut
            })
    return jsonify(result)
