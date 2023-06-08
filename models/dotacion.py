from sqlalchemy import Column, Integer, String, Float
from sqlalchemy.orm import declarative_base


Base = declarative_base()

class Dotacion(Base):
    __tablename__ = 'dotacion'
    id = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(50))
    vigencia = Column(Integer)
    costo = Column(Float)

    def __to_dict__(self):
        return {
            'id_dotacion': self.id,
            'nombre_dotacion': self.nombre,
            'vigencia_dotacion': self.vigencia,
            'costo_dotacion': self.costo
       }