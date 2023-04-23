from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, Integer, ForeignKey, Enum
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('epp_por_perfil', __name__)

Base = declarative_base()

# Entity EPPPorPerfil from database
class EPPPorPerfil(Base):
    __tablename__ = '220 - epp por perfil'
    id_epp_perfil = Column('ID EPP por perfil', Integer, primary_key=True, autoincrement=True)
    epp_id = Column('EPP', Integer)
    perfil_id = Column('Perfil', Integer)
    recambio_periodico = Column('Recambio periódico', Enum('Si', 'No'))
    periodicidad = Column('Periodicidad', Integer)


# Get all EPPPorPerfil
@app.route('/', methods=['GET'])
def get_epp_por_perfil():
    conn = connect('root', 'root')
    epp_por_perfil = conn.query(EPPPorPerfil).all()
    result = []
    conn.close()
    for epp_perfil in epp_por_perfil:
        result.append(
            {
                'ID EPP por perfil': epp_perfil.id_epp_perfil,
                'EPP': epp_perfil.epp_id,
                'Perfil': epp_perfil.perfil_id,
                'Recambio periódico': epp_perfil.recambio_periodico,
                'Periodicidad': epp_perfil.periodicidad
            })
    return jsonify(result)
