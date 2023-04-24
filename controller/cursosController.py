from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

app = Blueprint('cursos', __name__)


class Curso(Base):
    __tablename__ = '121 - cursos'
    id_curso = Column('ID Curso', Integer, primary_key=True, autoincrement=True)
    nombre_curso = Column('Nombre curso', String(45))
    duracion = Column('Duración', Integer)
    organizacion = Column('Organización que lo dicta', String(45))
    codigo_sence = Column('Código SENCE', String(45))
    precio_estimado = Column('Precio estimado', Integer)

@app.route('/', methods=['GET'])
def get_cursos():
    conn = connect('root', 'root')
    cursos = conn.query(Curso).all()
    result = []
    conn.close()
    i = 0
    for curso in cursos:
        result.append(
            {
            'ID Curso': curso.id_curso,
            'Nombre curso': curso.nombre_curso,
            'Duración': curso.duracion,
            'Organización que lo dicta': curso.organizacion,
            'Código SENCE': curso.codigo_sence,
            'Precio estimado': curso.precio_estimado,
            'image': "https://picsum.photos/200/300?random={}".format(i)
            })
        i = i + 1
    return jsonify(result)
