from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer
from sqlalchemy.ext.declarative import declarative_base

Base = declarative_base()

app = Blueprint('cursos', __name__)

class CursosUsuario(Base):
    __tablename__ = 'cursos_usuario'
    id = Column(Integer, primary_key=True)
    CI = Column(String)
    curso = Column(String)
    fecha_realizacion = Column(String)
    fecha_vencimiento = Column(String)
    url_certificado = Column(String)


class Curso(Base):
    __tablename__ = 'cursos'
    nombre = Column("NombredelRequisito", String, primary_key=True)
    institucion = Column(String)
    modalidad = Column("Online/Presencial", String)
    vigencia = Column(String)
    costo = Column(Integer)

def get_cursos():
    conn = connect('root', 'root')
    cursos = conn.query(Curso).all()
    result = []
    conn.close()
    for curso in cursos:
        result.append(
            {
                'nombre': curso.nombre,
                'institucion': curso.institucion,
                'modalidad': curso.modalidad,
                'vigencia': curso.vigencia,
                'costo': curso.costo
            }
        )
    return jsonify(result)

def get_cursos_usuario_CI(CI):
    conn = connect('root', 'root')
    cursos = conn.query(CursosUsuario).filter(CursosUsuario.CI == CI).all()
    result = []
    conn.close()
    for curso in cursos:
        result.append(
            {
                'id': curso.id,
                'CI': curso.CI,
                'curso': curso.curso,
                'fecha_realizacion': curso.fecha_realizacion,
                'fecha_vencimiento': curso.fecha_vencimiento,
                'url_certificado': curso.url_certificado 
            }
        )

    return jsonify(result)
