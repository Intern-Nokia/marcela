from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, Integer
from sqlalchemy.ext.declarative import declarative_base

app = Blueprint('cursos_perfil', __name__)

Base = declarative_base()

# Entity CursosPorPerfil from database
class CursosPorPerfil(Base):
    __tablename__ = '210 - cursos por perfil'
    id_curso_perfil = Column('ID Cursos por perfil', Integer, primary_key=True, autoincrement=True)
    perfil = Column('Perfil', Integer)
    curso = Column('Curso', Integer)


# Get all CursosPorPerfil
@app.route('/', methods=['GET'])
def get_cursos_perfil():
    conn = connect('root', 'root')
    cursos_perfil = conn.query(CursosPorPerfil).all()
    result = []
    conn.close()
    for curso_perfil in cursos_perfil:
        result.append(
            {
                'ID Cursos por perfil': curso_perfil.id_curso_perfil,
                'Perfil': curso_perfil.perfil,
                'Curso': curso_perfil.curso
            })
    return jsonify(result)
