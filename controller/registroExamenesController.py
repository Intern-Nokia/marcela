from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer, DateTime, Text
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('registro_examenes', __name__)

Base = declarative_base()

# Entity RegistroExamenes from database
class RegistroExamenes(Base):
    __tablename__ = '170 - registro examenes'
    id_reg_examen = Column('ID RegExamen', Integer, primary_key=True, autoincrement=True)
    legajo = Column('Legajo', String(45))
    examen = Column('Examen', Integer)
    fecha_examen = Column('Fecha examen', DateTime)
    vencimiento_examen = Column('Vencimiento examen', DateTime)
    copia_examen = Column('Copia examen', Text)
    observaciones = Column('Observaciones', Text)


# Get all RegistroExamenes
@app.route('/', methods=['GET'])
def get_registro_examenes():
    conn = connect('root', 'root')
    registros_examenes = conn.query(RegistroExamenes).all()
    result = []
    conn.close()
    for registro_examenes in registros_examenes:
        result.append(
            {
                'ID RegExamen': registro_examenes.id_reg_examen,
                'Legajo': registro_examenes.legajo,
                'Examen': registro_examenes.examen,
                'Fecha examen': registro_examenes.fecha_examen,
                'Vencimiento examen': registro_examenes.vencimiento_examen,
                'Copia examen': registro_examenes.copia_examen,
                'Observaciones': registro_examenes.observaciones
            })
    return jsonify(result)
