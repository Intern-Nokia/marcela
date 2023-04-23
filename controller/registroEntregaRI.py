from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, DateTime, Text
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('registroEntregaRI', __name__)

Base = declarative_base()

#Entity RegistroEntregaRI from database
class RegistroEntregaRI(Base):
    __tablename__ = '106 - registro entrega ri'
    id_entrega_ri = Column('ID entrega RI', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    registro_entrega_ri = Column('Registro de entrega RI', Text)
    fecha_entrega_ri = Column('Fecha entrega RI', DateTime)
    reglamento_entregado = Column('Reglamento entregado', Integer)
    

#Get all registros entrega RI
@app.route('/registro-entrega-ri', methods=['GET'])
def get_registro_entrega_ri():
    conn = connect('root', 'root')
    registros_entrega_ri = conn.query(RegistroEntregaRI).all()
    result = []
    conn.close()
    for registro_entrega_ri in registros_entrega_ri:
        result.append(
            {
            'ID entrega RI': registro_entrega_ri.id_entrega_ri,
            'Legajo': registro_entrega_ri.legajo,
            'Registro de entrega RI': registro_entrega_ri.registro_entrega_ri,
            'Fecha entrega RI': registro_entrega_ri.fecha_entrega_ri,
            'Reglamento entregado': registro_entrega_ri.reglamento_entregado
            })
    return jsonify(result)
