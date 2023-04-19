from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String
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
@app.route('/personal', methods=['GET'])
def get_personal():
    conn = connect('root', 'root')
    personal = conn.query(Personal).all()
    result = []
    conn.close()
    for person in personal:
        result.append(
            {
            'legajo': person.legajo,
            'name': person.name,
            'lastName': person.last_name,
            'RUT': person.rut
            })
    return jsonify(result)
