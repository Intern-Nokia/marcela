from sqlalchemy import Column, ForeignKey, Integer, String, Date
from sqlalchemy.orm import declarative_base
from models.otros import Otro
from models.cursos import Curso
from models.dotacion import Dotacion
from models.examenes import Examen
from models.personal import Personal


Base = declarative_base()

class CumplimentoCurso(Base):
    __tablename__ = 'cumplimiento_cursos'
    id = Column(Integer, primary_key=True, autoincrement=True)
    persona = Column(String(50), ForeignKey(Personal.CI, ondelete='CASCADE', onupdate='CASCADE'))
    curso = Column(Integer, ForeignKey(Curso.id, ondelete='CASCADE', onupdate='CASCADE'))
    fecha_presentacion = Column(Date)
    fecha_vencimiento = Column(Date)
    certificado = Column(String(200))

    def __to_dict__(self):
        return {
            'id_cumplimiento_curso': self.id,
            'id_persona': self.persona,
            'id_curso': self.curso,
            'fecha_realizacion_curso': self.fecha_presentacion,
            'fecha_vencimiento_curso': self.fecha_vencimiento,
            'certificado_curso': self.certificado
        }

class CumplimientoExamen(Base):
    __tablename__ = 'cumplimiento_examenes'
    id = Column(Integer, primary_key=True, autoincrement=True)
    persona = Column(String(50), ForeignKey(Personal.CI, ondelete='CASCADE', onupdate='CASCADE'))
    examen = Column(Integer, ForeignKey(Examen.id, ondelete='CASCADE', onupdate='CASCADE'))
    fecha_presentacion = Column(Date)
    fecha_vencimiento = Column(Date)
    certificado = Column(String(200))

    def __to_dict__(self):
        return {
            'id_cumplimiento_examen': self.id,
            'id_persona': self.persona,
            'id_examen': self.examen,
            'fecha_realizacion_examen': self.fecha_presentacion,
            'fecha_vencimiento_examen': self.fecha_vencimiento,
            'certificado_examen': self.certificado
        }
    
class CumplimientoDotacion(Base):
    __tablename__ = 'cumplimiento_dotacion'
    id = Column(Integer, primary_key=True, autoincrement=True)
    persona = Column(String(50), ForeignKey(Personal.CI, ondelete='CASCADE', onupdate='CASCADE'))
    dotacion = Column(Integer, ForeignKey(Dotacion.id, ondelete='CASCADE', onupdate='CASCADE'))
    fecha_presentacion = Column(Date)
    fecha_vencimiento = Column(Date)

    def __to_dict__(self):
        return {
            'id_cumplimiento_dotacion': self.id,
            'id_persona': self.persona,
            'id_dotacion': self.dotacion,
            'fecha_realizacion_dotacion': self.fecha_presentacion,
            'fecha_vencimiento_dotacion': self.fecha_vencimiento,
        }

class CumplimientoOtro(Base):
    __tablename__ = 'cumplimiento_otros'
    id = Column(Integer, primary_key=True, autoincrement=True)
    persona = Column(String(50), ForeignKey(Personal.CI, ondelete='CASCADE', onupdate='CASCADE'))
    otro = Column(Integer, ForeignKey(Otro.id, ondelete='CASCADE', onupdate='CASCADE'))
    fecha_presentacion = Column(Date)
    fecha_vencimiento = Column(Date)
    certificado = Column(String(200))

    def __to_dict__(self):
        return {
            'id_cumplimiento_otro': self.id,
            'id_persona': self.persona,
            'id_otro': self.otro,
            'fecha_realizacion_otro': self.fecha_presentacion,
            'fecha_vencimiento_otro': self.fecha_vencimiento,
            'certificado_otro': self.certificado
        }