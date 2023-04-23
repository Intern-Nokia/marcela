
from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, DateTime, Enum, Text
from sqlalchemy.ext.declarative import declarative_base
app = Blueprint('registro_capacitaciones', __name__)

Base = declarative_base()

# Entity RegistroCapacitacion from database
class RegistroCapacitacion(Base):
    __tablename__ = '160 - registro capacitaciones'
    id_reg_capacitacion = Column('ID RegCapacitacion', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    curso = Column('Curso', Integer)
    duracion = Column('Duración', Integer)
    codigo_sence = Column('Código SENCE', String(45))
    fecha_capacitacion = Column('Fecha capacitacion', DateTime)
    tiene_vencimiento = Column('Tiene vencimiento?', Enum('Si', 'No'))
    fecha_vencimiento = Column('Fecha vencimiento', DateTime)
    copia_certificado = Column('Copia certificado', Text)


# Get all RegistroCapacitacion
@app.route('/', methods=['GET'])
def get_registro_capacitacion():
    conn = connect('root', 'root')
    registros_capacitacion = conn.query(RegistroCapacitacion).all()
    result = []
    conn.close()
    for registro_capacitacion in registros_capacitacion:
        result.append(
            {
                'ID RegCapacitacion': registro_capacitacion.id_reg_capacitacion,
                'Legajo': registro_capacitacion.legajo,
                'Curso': registro_capacitacion.curso,
                'Duración': registro_capacitacion.duracion,
                'Código SENCE': registro_capacitacion.codigo_sence,
                'Fecha capacitacion': registro_capacitacion.fecha_capacitacion,
                'Tiene vencimiento?': registro_capacitacion.tiene_vencimiento,
                'Fecha vencimiento': registro_capacitacion.fecha_vencimiento,
                'Copia certificado': registro_capacitacion.copia_certificado
            })
    return jsonify(result)
