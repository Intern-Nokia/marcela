from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, Integer
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('examenes_por_perfil', __name__)

Base = declarative_base()

# Entity ExamenesPorPerfil from database
class ExamenesPorPerfil(Base):
    __tablename__ = '230 - examenes por perfil'
    id_examenes_por_perfil = Column('ID Examenes por perfil', Integer, primary_key=True, autoincrement=True)
    examen = Column('Examen', Integer)
    perfil = Column('Perfil', Integer)


# Get all ExamenesPorPerfil
@app.route('/', methods=['GET'])
def get_examenes_por_perfil():
    conn = connect('root', 'root')
    examenes_por_perfil = conn.query(ExamenesPorPerfil).all()
    result = []
    conn.close()
    for examen_por_perfil in examenes_por_perfil:
        result.append(
            {
                'ID Examenes por perfil': examen_por_perfil.id_examenes_por_perfil,
                'Examen': examen_por_perfil.examen,
                'Perfil': examen_por_perfil.perfil
            })
    return jsonify(result)
