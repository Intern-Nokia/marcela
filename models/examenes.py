from sqlalchemy import Column, Integer, String, Float
from sqlalchemy.orm import declarative_base


Base = declarative_base()

class Examen(Base):
    __tablename__ = 'examenes'
    id = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(50))
    institucion = Column(String(50))
    vigencia = Column(Integer)
    costo = Column(Float)

    def __to_dict__(self):
        return {
            'id_examen': self.id,
            'nombre_examen': self.nombre,
            'institucion_examen': self.institucion,
            'vigencia_examen': self.vigencia,
            'costo_examen': self.costo
        }