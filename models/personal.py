from datetime import date
from sqlalchemy import BigInteger, Boolean, Column, Date, Integer, String
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy.orm import column_property
from sqlalchemy.sql import func

Base = declarative_base()


def calcular_edad(fecha_nacimiento):
    fecha_actual = date.today()
    edad = fecha_actual.year - fecha_nacimiento.year
    if fecha_actual.month < fecha_nacimiento.month or (fecha_nacimiento.month == fecha_actual.month and fecha_actual.day < fecha_nacimiento.day):
        edad = edad - 1
    return edad

#Entity Personal from database
class Personal(Base):
    __tablename__ = 'personal'
    empresa = Column(String(50))
    trabajador = Column(String(50))
    CI = Column(String(50), primary_key=True)
    cargo = Column(String(50))
    habilitado_BHP = Column(Boolean)
    nacionalidad = Column(String(50))
    fecha_nacimiento = Column(Date)
    correo = Column(String(50))
    telefono = Column(BigInteger)
    fecha_vencimiento_CI = Column(Date)
    vigencia_visa = Column(String(50))
    proyecto_actual = Column(String(50))
    correo_personal =  Column(String(50))
    inicio_contrato = Column(Date)
    direccion = Column(String(50))
    comuna = Column(String(50))
    ciudad = Column(String(50))
    estado_civil = Column(String(50))
    activo = Column(Integer, default=1)

    def __to_dict__(self):
        return {
            'empresa': self.empresa,
            'trabajador': self.trabajador,
            'CI': self.CI,
            'cargo': self.cargo,
            'habilitado_BHP': self.habilitado_BHP,
            'nacionalidad': self.nacionalidad,
            'fecha_nacimiento': self.fecha_nacimiento,
            'correo': self.correo,
            'telefono': self.telefono,
            'fecha_vencimiento_CI': self.fecha_vencimiento_CI,
            'vigencia_visa': self.vigencia_visa,
            'proyecto_actual': self.proyecto_actual,
            'correo_personal': self.correo_personal,
            'inicio_contrato': self.inicio_contrato,
            'direccion': self.direccion,
            'comuna': self.comuna,
            'ciudad': self.ciudad,
            'estado_civil': self.estado_civil,
            'edad': calcular_edad(self.fecha_nacimiento)
        }