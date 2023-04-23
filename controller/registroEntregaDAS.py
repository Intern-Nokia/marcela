from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, DateTime, Text
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('registroEntregaDAS', __name__)

Base = declarative_base()

#Entity RegistroEntregaDas from database
class RegistroEntregaDas(Base):
    __tablename__ = '105 - registro entrega das'
    id_entrega = Column('ID entrega', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    registro_entrega_das = Column('Registro de entrega DAS', Text)
    fecha_entrega_das = Column('Fecha entrega DAS', DateTime)


#Get all registros de entrega DAS
@app.route('/registro_entrega_das', methods=['GET'])
def get_registro_entrega_das():
    conn = connect('root', 'root')
    registros_entrega_das = conn.query(RegistroEntregaDas).all()
    result = []
    conn.close()
    for registro in registros_entrega_das:
        result.append(
            {
            'ID entrega': registro.id_entrega,
            'Legajo': registro.legajo,
            'Registro de entrega DAS': registro.registro_entrega_das,
            'Fecha entrega DAS': registro.fecha_entrega_das,
            })
    return jsonify(result)
