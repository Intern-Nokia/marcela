from sqlalchemy import Column, Integer, String, Text
from sqlalchemy.ext.declarative import declarative_base
from flask import Blueprint, jsonify
from db.connexion import connect

app = Blueprint('examenes', __name__)

Base = declarative_base()

class Examen(Base):
    __tablename__ = 'examenes'
    nombre = Column("NombredelRequisito", String, primary_key=True)
    institucion = Column(String)
    vigencia = Column(String)
    costo = Column(Integer)


@app.route('/', methods=['GET'])
def get_examenes():
    conn = connect('root', 'root')
    examenes = conn.query(Examen).all()
    result = []
    conn.close()
    for examen in examenes:
        result.append(
            {
                'nombre': examen.nombre,
                'institucion': examen.institucion,
                'vigencia': examen.vigencia,
                'costo': examen.costo
            }
        )
    return jsonify(result)
