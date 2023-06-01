from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Text, Integer
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('epp', __name__)

Base = declarative_base()

class EPPUsuario(Base):
    __tablename__ = 'epp_usuario'
    id  = Column('idepp_usuario', Integer, primary_key=True, autoincrement=True)
    rut = Column(String)
    nombreEpp = Column(String)
    fechaEntrega = Column(String)

# Entity EPP from database
class EPP(Base):
    __tablename__ = 'epp'
    epp = Column("NombreDelRequisito", String, primary_key=True)
    vigencia = Column(String)
    costo = Column(Integer)



# Get all EPP
def get_epp():
    conn = connect('root', 'root')
    epps = conn.query(EPP).all()
    result = []
    conn.close()
    for epp in epps:
        result.append(
            {
                'epp': epp.epp,
                'vigencia': epp.vigencia,
                'costo': epp.costo
            })
    return jsonify(result)

def get_epp_usuario(rut):
    conn = connect('root', 'root')
    epps = conn.query(EPPUsuario).filter(EPPUsuario.rut == rut).all()
    result = []
    conn.close()
    for epp in epps:
        result.append(
            {
                'nombre': epp.nombreEpp,
                'fechaEntrega': epp.fechaEntrega,
            })
    return jsonify(result)
