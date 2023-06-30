from sqlalchemy import Column, Integer, String, BigInteger
from sqlalchemy.orm import declarative_base


Base = declarative_base()

class Perfil(Base):
    __tablename__ = 'perfil'
    id = Column(Integer, primary_key=True, autoincrement=True)
    nombre = Column(String(150))
    proyecto = Column(String(150))
    cliente = Column(String(100))
    faena = Column(String(150))
    numero_contrato = Column(String(150))

    def __to_dict__(self):
        return {
            'id_perfil': self.id,
            'nombre_perfil': self.nombre,
            'proyecto': self.proyecto,
            'cliente': self.cliente,
            'faena': self.faena,
            'numero_contrato': self.numero_contrato
        }
