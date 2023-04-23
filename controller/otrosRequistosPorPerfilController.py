from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('otros_requisitos_perfil', __name__)

Base = declarative_base()

# Entity OtrosRequisitosPorPerfil from database
class OtrosRequisitosPorPerfil(Base):
    __tablename__ = '240 - otros requisitos por perfil'
    id_requisito = Column('ID Requisito', Integer, primary_key=True, autoincrement=True)
    requisito = Column('Requisito', String(45))
    perfil = Column('Perfil', Integer)


# Get all OtrosRequisitosPorPerfil
@app.route('/', methods=['GET'])
def get_otros_requisitos_perfil():
    conn = connect('root', 'root')
    otros_requisitos_perfil = conn.query(OtrosRequisitosPorPerfil).all()
    result = []
    conn.close()
    for otro_requisito_perfil in otros_requisitos_perfil:
        result.append(
            {
                'ID Requisito': otro_requisito_perfil.id_requisito,
                'Requisito': otro_requisito_perfil.requisito,
                'Perfil': otro_requisito_perfil.perfil
            })
    return jsonify(result)
