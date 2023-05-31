from flask import Blueprint, jsonify, request
from db.connexion import connect
from sqlalchemy import Column, String, or_, Integer
from sqlalchemy.ext.declarative import declarative_base


app = Blueprint('personal', __name__)

Base = declarative_base()

#Entity Personal from database
class Personal(Base):
    __tablename__ = 'users'
    empresa = Column(String)
    trabajador = Column(String)
    CI = Column(String, primary_key=True)
    cargo = Column(String)
    habilitadoBHP = Column('Habilitado BHP LMS', String)
    nacionalidad = Column(String)
    fechaNacimiento = Column('Fecha Nacimiento', String)
    correo = Column('Correo electrónico', String)
    telefono = Column('Número de teléfono', String)
    edad = Column(String)
    fechaVencimientoCI = Column('Fecha vencimiento CI', String)
    vigenciaVisa = Column('Vigencia Visa', String)
    proyectoActual = Column('Proyecto actual', String)
    correoPersonal =  Column('Correo personal', String)
    inicioContrato = Column('Inicio de contrato', String)
    direccion = Column('Dirección', String)
    comuna = Column(String)
    ciudad = Column(String)
    estadoCivil = Column('ESTADO CIVIL', String)
    activo = Column(Integer)

#Get all personal
def get_personal():
    conn = connect('root', 'root')
    personal = conn.query(Personal).filter(Personal.activo == 1).all()
    result = []
    conn.close()
    for person in personal:
        result.append(
            {
            'empresa': person.empresa,
            'trabajador': person.trabajador,
            'CI' : person.CI,
            'cargo' : person.cargo,
            'habilitadoBHP' : person.habilitadoBHP,
            'nacionalidad' : person.nacionalidad,
            'fechaNacimiento' : person.fechaNacimiento,
            'correo' : person.correo,
            'telefono' : person.telefono,
            'edad' : person.edad,
            'fechaVencimientoCI' : person.fechaVencimientoCI,
            'vigenciaVisa' : person.vigenciaVisa,
            'proyectoActual' : person.proyectoActual,
            'correoPersonal' :  person.correoPersonal,
            'inicioContrato' : person.inicioContrato,
            'direccion': person.direccion,
            'comuna' : person.comuna,
            'ciudad' : person.ciudad,
            'estadoCivil' : person.estadoCivil,
            'activo' : person.activo
        }
        )

    # print(personal)
    return jsonify(result)


def add_personal():
    data = request.get_json()
    new_user = Personal(**data)
    new_user.activo = 1
    
    conn = connect('root', 'root')

    conn.add(new_user)
    conn.commit()

    conn.close()

    return {"message": 'OK'}


def delete_personal(rut):

    conn = connect('root', 'root')
    user = conn.query(Personal).get(rut)
    user.activo = 0
    conn.commit()
    conn.close()

    return 'Usuario eliminado correctamente' 