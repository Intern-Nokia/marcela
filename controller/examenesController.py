from sqlalchemy import Column, Integer, String, Text
from sqlalchemy.ext.declarative import declarative_base
from flask import Blueprint, jsonify
from db.connexion import connect

app = Blueprint('examenes', __name__)

Base = declarative_base()

class Examen(Base):
    __tablename__ = '141 - examenes'
    id_examen = Column('ID Examen', Integer, primary_key=True, autoincrement=True)
    nombre_examen = Column('Nombre examen', String(45))
    observaciones = Column('Observaciones', Text)

@app.route('/', methods=['GET'])
def get_examenes():
    conn = connect('root', 'root')
    examenes = conn.query(Examen).all()
    result = []
    conn.close()
    for examen in examenes:
        result.append(
            {
                'ID Examen': examen.id_examen,
                'Nombre examen': examen.nombre_examen,
                'Observaciones': examen.observaciones
            }
        )
    return jsonify(result)
