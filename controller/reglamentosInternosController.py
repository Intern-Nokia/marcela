from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, DateTime, Text
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('reglamentos_internos', __name__)

Base = declarative_base()

class ReglamentoInterno(Base):
    __tablename__ = '108 - reglamentos internos'
    IdReglamentoInterno = Column('IdReglamentoInterno', Integer, primary_key=True, autoincrement=True)
    Versión = Column('Versión', String(45))
    Fecha = Column('Fecha', DateTime)
    Documento = Column('Documento', Text)

@app.route('/', methods=['GET'])
def get_reglamentos_internos():
    conn = connect('root', 'root')
    reglamentos_internos = conn.query(ReglamentoInterno).all()
    result = []
    conn.close()
    for reglamento_interno in reglamentos_internos:
        result.append(
            {
            'IdReglamentoInterno': reglamento_interno.IdReglamentoInterno,
            'Versión': reglamento_interno.Versión,
            'Fecha': reglamento_interno.Fecha,
            'Documento': reglamento_interno.Documento
            })
    return jsonify(result)
