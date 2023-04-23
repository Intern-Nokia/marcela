from flask import Blueprint, jsonify
from db.connexion import connect
from sqlalchemy import Column, String, Integer
from sqlalchemy.ext.declarative import declarative_base


app = Blueprint('cargos', __name__)

Base = declarative_base()

#Entity Cargo from database
class Cargo(Base):
    __tablename__ = '101 - cargos'
    id_cargo = Column('ID Cargo' ,Integer, primary_key=True)
    name = Column('Nombre cargo', String)
    profile = Column('Perfil de responsabilidad', String)
    area = Column('Area', String)


#Get all cargos
@app.route('/', methods=['GET'])
def get_cargos():
    conn = connect('root', 'root')
    cargos = conn.query(Cargo).all()
    result = []
    conn.close()
    for cargo in cargos:
        result.append(
            {
            'ID Cargo': cargo.id_cargo,
            'name': cargo.name,
            'profile': cargo.profile,
            'area': cargo.area
            })
    return jsonify(result)