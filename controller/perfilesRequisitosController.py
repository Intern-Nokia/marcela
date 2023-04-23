from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, Text
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('perfiles_requisitos', __name__)

Base = declarative_base()

# Entity PerfilRequisito from database
class PerfilRequisito(Base):
    __tablename__ = '200 - perfiles requisitos'
    id_perfil = Column('ID Perfil', Integer, primary_key=True, autoincrement=True)
    tipo_perfil = Column('Tipo perfil', String(45))
    empresa_asociada = Column('Empresa asociada', String(45))
    observaciones = Column('Observaciones', Text)


# Get all PerfilRequisito
@app.route('/', methods=['GET'])
def get_perfil_requisito():
    conn = connect('root', 'root')
    perfiles_requisitos = conn.query(PerfilRequisito).all()
    result = []
    conn.close()
    for perfil_requisito in perfiles_requisitos:
        result.append(
            {
                'ID Perfil': perfil_requisito.id_perfil,
                'Tipo perfil': perfil_requisito.tipo_perfil,
                'Empresa asociada': perfil_requisito.empresa_asociada,
                'Observaciones': perfil_requisito.observaciones
            })
    return jsonify(result)
