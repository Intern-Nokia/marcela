from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, Date
from sqlalchemy.ext.declarative import declarative_base


app = Blueprint('contratos', __name__)

Base = declarative_base()

#Entity Contrato from database
class Contrato(Base):
    __tablename__ = '102 - contratos'
    id_contrato = Column('IDContrato' ,Integer, primary_key=True)
    legajo = Column('Legajo', String)
    type_agreement = Column('Tipo contrato', String)
    agreement = Column('Contrato', String)
    init_date = Column('Fecha inicio', Date)
    end_date = Column('Fecha fin', Date)
    observation = Column('Observaciones', String)


#Get all contratos
@app.route('/', methods=['GET'])
def get_contratos():
    conn = connect('root', 'root')
    contratos = conn.query(Contrato).all()
    result = []
    conn.close()
    for contrato in contratos:
        result.append(
            {
            'IDContrato': contrato.id_contrato,
            'Legajo': contrato.legajo,
            'Tipo contrato': contrato.type_agreement,
            'Contrato': contrato.agreement,
            'Fecha inicio': contrato.init_date,
            'Fecha fin': contrato.end_date,
            'Observaciones': contrato.observation
            })
    return jsonify(result)