from datetime import date
from sqlalchemy import Column, Date, Integer, String
from sqlalchemy.ext.declarative import declarative_base

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
    empresa = Column(String(150))
    trabajador = Column(String(150))
    tipo_identificacion = Column(String(50))
    CI = Column(String(150), primary_key=True)
    cargo = Column(String(150))
    nacionalidad = Column(String(150))
    fecha_nacimiento = Column(Date)
    correo = Column(String(150))
    telefono = Column(String(150))
    fecha_vencimiento_CI = Column(String(50))
    vigencia_visa = Column(String(150))
    proyecto_actual = Column(String(150))
    correo_personal =  Column(String(150))
    inicio_contrato = Column(String(50))
    direccion = Column(String(150))
    comuna = Column(String(150))
    ciudad = Column(String(150))
    estado_civil = Column(String(150))
    activo = Column(Integer, default=1)

    def __to_dict__(self):
        return {
            'empresa': self.empresa,
            'trabajador': self.trabajador,
            'CI': self.CI,
            'tipo_identificacion': self.tipo_identificacion,
            'cargo': self.cargo,
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