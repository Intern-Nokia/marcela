from sqlalchemy import Column, Integer, String, Float
from sqlalchemy.orm import declarative_base


Base = declarative_base()

class Otro(Base):
    __tablename__ = 'otros'
    id = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(50))
    vigencia = Column(Integer)
    costo = Column(Float)

    def __to_dict__(self):
        return {
            'id_otro': self.id,
            'nombre_otro': self.nombre,
            'vigencia_otro':self.vigencia,
            'costo_otro': self.costo
        }