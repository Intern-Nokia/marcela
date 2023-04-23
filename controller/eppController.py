from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Text, Integer
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('epp', __name__)

Base = declarative_base()

# Entity EPP from database
class EPP(Base):
    __tablename__ = '131 - epp'
    id_epp = Column('ID EPP', Integer, primary_key=True, autoincrement=True)
    epp_nombre = Column('EPP nombre', String(45))
    epp_descripcion = Column('EPP descripción', Text)
    certificado = Column('Certificado', String(45))
    tipo_proteccion = Column('Tipo de proteccion', Text)


# Get all EPP
@app.route('/', methods=['GET'])
def get_epp():
    conn = connect('root', 'root')
    epps = conn.query(EPP).all()
    result = []
    conn.close()
    for epp in epps:
        result.append(
            {
                'ID EPP': epp.id_epp,
                'EPP nombre': epp.epp_nombre,
                'EPP descripción': epp.epp_descripcion,
                'Certificado': epp.certificado,
                'Tipo de proteccion': epp.tipo_proteccion
            })
    return jsonify(result)
