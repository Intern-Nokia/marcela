from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, DateTime, Text
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('registro_entrega_epp', __name__)

Base = declarative_base()

# Entity RegistroEntregaEPP from database
class RegistroEntregaEPP(Base):
    __tablename__ = '150 - registro entrega epp'
    id_ent_epp = Column('ID EntEPP', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    epp = Column('EPP', Integer)
    fecha_entrega = Column('Fecha entrega', DateTime)
    comentario = Column('Comentario', Text)
    registro_entrega = Column('Registro de entrega', String(45))


# Get all RegistroEntregaEPP
@app.route('/', methods=['GET'])
def get_registro_entrega_epp():
    conn = connect('root', 'root')
    registros_entrega_epp = conn.query(RegistroEntregaEPP).all()
    result = []
    conn.close()
    for registro_entrega_epp in registros_entrega_epp:
        result.append(
            {
                'ID EntEPP': registro_entrega_epp.id_ent_epp,
                'Legajo': registro_entrega_epp.legajo,
                'EPP': registro_entrega_epp.epp,
                'Fecha entrega': registro_entrega_epp.fecha_entrega,
                'Comentario': registro_entrega_epp.comentario,
                'Registro de entrega': registro_entrega_epp.registro_entrega
            })
    return jsonify(result)
