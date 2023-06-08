from flask import jsonify
from db.connexion import connect

from models.asignaciones import AsignacionCurso, AsignacionDotacion, AsignacionOtros, AsignacionPerfil
from models.cursos import Curso
from models.examenes import Examen
from models.perfil import Perfil
from models.personal import Personal
from models.otros import Otro
from models.dotacion import Dotacion

def get_cursos_por_perfil():
    conn = connect('root', 'root')
    cursos_persona = conn.query(AsignacionCurso, Perfil, Curso).join(Perfil, Perfil.id == AsignacionCurso.perfil).join(Curso, Curso.id == AsignacionCurso.curso).all()
    result = []
    conn.close()

    for row in cursos_persona:
        asignacion = row.AsignacionCurso.__to_dict__()
        perfil = row.Perfil.__to_dict__()
        persona = row.Curso.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(perfil)
        inner_join.update(persona)
        result.append(
            inner_join
        )
    return jsonify(result)


def get_perfiles_por_persona():
    conn = connect('root', 'root')
    perfil_persona = conn.query(AsignacionPerfil, Perfil, Personal).join(Perfil, Perfil.id == AsignacionPerfil.perfil).join(Personal, Personal.CI == AsignacionPerfil.persona).all()
    result = []
    conn.close()

    for row in perfil_persona:
        asignacion = row.AsignacionPerfil.__to_dict__()
        perfil = row.Perfil.__to_dict__()
        persona = row.Personal.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(perfil)
        inner_join.update(persona)
        result.append(
            inner_join
        )
    return jsonify(result)


def get_examenes_por_perfil():
    conn = connect('root', 'root')
    examenes_persona = conn.query(AsignacionOtros, Perfil, Examen).join(Perfil, Perfil.id == AsignacionOtros.perfil).join(Examen, Examen.id == AsignacionOtros.examen).all()
    result = []
    conn.close()

    for row in examenes_persona:
        asignacion = row.AsignacionOtros.__to_dict__()
        perfil = row.Perfil.__to_dict__()
        examen = row.Examen.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(perfil)
        inner_join.update(examen)
        result.append(
            inner_join
        )
    return jsonify(result)


def get_otros_por_perfil():
    conn = connect('root', 'root')
    otros_persona = conn.query(AsignacionOtros, Perfil, Otro).join(Perfil, Perfil.id == AsignacionOtros.perfil).join(Otro, Otro.id == AsignacionOtros.otro).all()
    result = []
    conn.close()

    for row in otros_persona:
        asignacion = row.AsignacionOtros.__to_dict__()
        perfil = row.Perfil.__to_dict__()
        otro = row.Otro.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(perfil)
        inner_join.update(otro)
        result.append(
            inner_join
        )
    return jsonify(result)

def get_dotacion_por_perfil():
    conn = connect('root', 'root')
    dotacion_persona = conn.query(AsignacionDotacion, Perfil, Dotacion).join(Perfil, Perfil.id == AsignacionDotacion.perfil).join(Dotacion, Dotacion.id == AsignacionDotacion.dotacion).all()
    result = []
    conn.close()

    for row in dotacion_persona:
        asignacion = row.AsignacionDotacions.__to_dict__()
        perfil = row.Perfil.__to_dict__()
        dotacion = row.Dotacion.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(perfil)
        inner_join.update(dotacion)
        result.append(
            inner_join
        )
    return jsonify(result)