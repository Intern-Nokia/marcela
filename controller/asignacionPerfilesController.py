from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('asignacion_perfiles', __name__)

Base = declarative_base()

# Entity AsignacionPerfiles from database
class AsignacionPerfiles(Base):
    __tablename__ = '180 - asignacion perfiles'
    id_pac = Column('ID PAC', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    perfil_asignado = Column('Perfil asignado', Integer)


# Get all AsignacionPerfiles
@app.route('/', methods=['GET'])
def get_asignacion_perfiles():
    conn = connect('root', 'root')
    asignaciones_perfiles = conn.query(AsignacionPerfiles).all()
    result = []
    conn.close()
    for asignacion_perfil in asignaciones_perfiles:
        result.append(
            {
                'ID PAC': asignacion_perfil.id_pac,
                'Legajo': asignacion_perfil.legajo,
                'Perfil asignado': asignacion_perfil.perfil_asignado
            })
    return jsonify(result)
