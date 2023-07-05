from sqlalchemy import Column, Integer, String, Float
from sqlalchemy.orm import declarative_base


Base = declarative_base()

class Otro(Base):
    __tablename__ = 'otros'
    id = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(150))
    vigencia = Column(Integer)
    institucion = Column(String(150))
    costo = Column(Float)

    def __to_dict__(self):
        return {
            'id_otro': self.id,
            'nombre_otro': self.nombre,
            'vigencia_otro':self.vigencia,
            'institucion_otro': self.institucion,
            'costo_otro': self.costo
        }