from sqlalchemy import Column, Integer, String, Float
from sqlalchemy.orm import declarative_base


Base = declarative_base()

class Curso(Base):
    __tablename__ = 'cursos'
    id = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(150))
    institucion = Column(String(150))
    modalidad = Column(String(150))
    vigencia = Column(Integer)
    costo = Column(Float)

    def __to_dict__(self):
        return {
            'id_curso': self.id,
            'nombre_curso': self.nombre,
            'institucion_curso': self.institucion,
            'modalidad': self.modalidad,
            'vigencia_curso': self.vigencia,
            'costo_curso': self.costo
        }