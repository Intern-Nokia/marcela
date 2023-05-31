from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('otros_requisitos_perfil', __name__)

Base = declarative_base()

# Entity OtrosRequisitosPorPerfil from database
class OtrosRequisitosPorPerfil(Base):
    __tablename__ = 'otros'
    nombre = Column("NombredelRequisito", String, primary_key=True)


# Get all OtrosRequisitosPorPerfil
def get_otros_requisitos_perfil():
    conn = connect('root', 'root')
    otros_requisitos_perfil = conn.query(OtrosRequisitosPorPerfil).all()
    result = []
    conn.close()
    for otro_requisito_perfil in otros_requisitos_perfil:
        result.append(
            {
                'nombre': otro_requisito_perfil.nombre
            })
    return jsonify(result)
