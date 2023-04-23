from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, DateTime
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('certificado', __name__)

Base = declarative_base()

#Entity Certificado from database
class Certificado(Base):
    __tablename__ = '107 - certificados antecedentes'
    id_cert_ant = Column('ID CertAnt', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    certificado_antecedentes = Column('Certificado de antecedentes', String(45))
    fecha_emision = Column('Fecha emisión', DateTime)
    fecha_vencimiento = Column('Fecha vencimiento', DateTime)

#Get all certificados
@app.route('/', methods=['GET'])
def get_certificado():
    conn = connect('root', 'root')
    certificados = conn.query(Certificado).all()
    result = []
    conn.close()
    for certificado in certificados:
        result.append(
            {
            'ID CertAnt': certificado.id_cert_ant,
            'legajo': certificado.legajo,
            'Certificado de antecedentes': certificado.certificado_antecedentes,
            'Fecha emisión': certificado.fecha_emision,
            'Fecha vencimiento': certificado.fecha_vencimiento
            })
    return jsonify(result)
