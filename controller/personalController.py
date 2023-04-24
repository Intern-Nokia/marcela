from flask import Blueprint, jsonify, request
from db.connexion import connect
from sqlalchemy import Column, String, or_
from sqlalchemy.ext.declarative import declarative_base


app = Blueprint('personal', __name__)

Base = declarative_base()

#Entity Personal from database
class Personal(Base):
    __tablename__ = '100 - personal'
    legajo = Column('Legajo' ,String, primary_key=True)
    name = Column('Nombre', String)
    last_name = Column('Apellido Paterno', String)
    rut = Column('RUT', String)


#Get all personal
def get_personal():
    conn = connect('root', 'root')
    personal = conn.query(Personal).all()
    result = []
    conn.close()
    i = 0
    for person in personal:
        result.append(
            {
            'legajo': person.legajo,
            'name': person.name,
            'lastName': person.last_name,
            'RUT': person.rut,
            'image': "https://picsum.photos/200/300?random={}".format(i)
            })
        i = i + 1

    return jsonify(result)


def get_personal_by_name(nombre):
    # nombre = request.view_args['nombre']
    conn = connect('root', 'root')
    personal = conn.query(Personal).filter(or_(Personal.name.like(nombre + '%'),
                                               Personal.legajo.like(nombre + '%'),
                                               Personal.rut.like(nombre + '%'))).all()

    result = []
    conn.close()
    i = 0
    for person in personal:
        result.append(
            {
            'legajo': person.legajo,
            'name': person.name,
            'lastName': person.last_name,
            'RUT': person.rut,
            'image': "https://picsum.photos/200/300?random={}".format(i)
            })
        i = i + 1

    return jsonify(result)