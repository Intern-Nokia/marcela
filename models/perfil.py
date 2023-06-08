from sqlalchemy import Column, Integer, String
from sqlalchemy.orm import declarative_base


Base = declarative_base()

class Perfil(Base):
    __tablename__ = 'perfil'
    id = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(50))
    proyecto = Column(String(50))
    numero_contrato = Column(Integer)

    def __to_dict__(self):
        return {
            'id_perfil': self.id,
            'nombre_perfil': self.nombre,
            'proyecto': self.proyecto,
            'numero_contrato': self.proyecto
        }
