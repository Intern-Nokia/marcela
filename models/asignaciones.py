from sqlalchemy import Column, Integer, ForeignKey, String
from sqlalchemy.orm import declarative_base
from models.personal import Personal
from models.cursos import Curso
from models.otros import Otro
from models.dotacion import Dotacion
from models.perfil import Perfil
from models.examenes import Examen


Base = declarative_base()


class AsignacionCurso(Base):
    __tablename__ = 'asignacion_cursos'
    id = Column(Integer, primary_key=True, autoincrement=True)
    curso = Column(Integer, ForeignKey(Curso.id, ondelete='CASCADE', onupdate='CASCADE'))
    perfil = Column(Integer, ForeignKey(Perfil.id, ondelete='CASCADE', onupdate='CASCADE'))

    def __to_dict__(self):
        return {
            'id_asignacion_curso': self.id,
            'curso': self.curso,
            'perfil': self.perfil
        }
    

class AsignacionExamen(Base):
    __tablename__ = 'asignacion_examenes'
    id = Column(Integer, primary_key=True, autoincrement=True)
    perfil = Column(Integer, ForeignKey(Perfil.id, ondelete='CASCADE', onupdate='CASCADE'))
    examen = Column(Integer, ForeignKey(Examen.id, ondelete='CASCADE', onupdate='CASCADE'))

    def __to_dict__(self):
        return {
            'id_asignacion_examen': self.id,
            'examen': self.examen,
            'perfil': self.perfil
        }

class AsignacionDotacion(Base):
    __tablename__ = 'asigancion_dotacion'
    id = Column(Integer, primary_key=True, autoincrement=True)
    perfil = Column(Integer, ForeignKey(Perfil.id, ondelete='CASCADE', onupdate='CASCADE'))
    dotacion = Column(Integer, ForeignKey(Dotacion.id, ondelete='CASCADE', onupdate='CASCADE'))

    def __to_dict__(self):
        return {
            'id_asignacion_dotacion': self.id,
            'dotacion': self.dotacion,
            'perfil': self.perfil
        }

class AsignacionOtros(Base):
    __tablename__ = 'asignacion_otros'
    id = Column(Integer, primary_key=True, autoincrement=True)
    perfil = Column(Integer, ForeignKey(Perfil.id, ondelete='CASCADE', onupdate='CASCADE'))
    otro = Column(Integer, ForeignKey(Otro.id, ondelete='CASCADE', onupdate='CASCADE'))

    def __to_dict__(self):
        return {
            'id_asignacion_otro': self.id,
            'otro': self.otro,
            'perfil': self.perfil
        }

class AsignacionPerfil(Base):
    __tablename__ = 'asignacion_perfil'
    id = Column(Integer, primary_key=True, autoincrement=True)
    perfil = Column(Integer, ForeignKey(Perfil.id, ondelete='CASCADE', onupdate='CASCADE'))
    persona = Column(String(50), ForeignKey(Personal.CI, ondelete='CASCADE', onupdate='CASCADE'))

    def __to_dict__(self):
        return {
            'id_asignacion_perfil': self.id,
            'perfil': self.perfil,
            'persona': self.persona
        }