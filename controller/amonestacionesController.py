from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, DateTime, Text
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('amonestacion', __name__)

Base = declarative_base()

# Entity Amonestacion from database
class Amonestacion(Base):
    __tablename__ = '104 - amonestaciones'
    id_amonestacion = Column('ID Amonestación', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    fecha = Column('Fecha', DateTime)
    causa = Column('Causa', Text)


# Get all amonestaciones
@app.route('/', methods=['GET'])
def get_amonestacion():
    conn = connect('root', 'root')
    amonestaciones = conn.query(Amonestacion).all()
    result = []
    conn.close()
    for amonestacion in amonestaciones:
        result.append(
            {
            'ID Amonestación': amonestacion.id_amonestacion,
            'Legajo': amonestacion.legajo,
            'Fecha': amonestacion.fecha,
            'Causa': amonestacion.causa
            })
    return jsonify(result)
