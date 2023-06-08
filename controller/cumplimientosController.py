from flask import jsonify
from db.connexion import connect
from models.cumpllimientos import CumplimentoCurso, CumplimientoDotacion, CumplimientoExamen, CumplimientoOtro
from models.cursos import Curso
from models.dotacion import Dotacion
from models.examenes import Examen
from models.otros import Otro
from models.personal import Personal


def get_cursos_por_persona():
    conn = connect('root', 'root')
    cursos_persona = conn.query(CumplimentoCurso, Personal, Curso).join(Personal, Personal.CI == CumplimentoCurso.persona).join(Curso, Curso.id == CumplimentoCurso.curso).all()
    result = []
    conn.close()

    for row in cursos_persona:
        asignacion = row.CumplimientoCurso.__to_dict__()
        curso = row.Curso.__to_dict__()
        persona = row.Persona.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(curso)
        inner_join.update(persona)
        result.append(
            inner_join
        )
    return jsonify(result)


def get_examenes_por_persona():
    conn = connect('root', 'root')
    examenes_persona = conn.query(CumplimientoExamen, Personal, Examen).join(Personal, Personal.CI == CumplimientoExamen.persona).join(Curso, Curso.id == CumplimientoExamen.examen).all()
    result = []
    conn.close()

    for row in examenes_persona:
        asignacion = row.CumplimientoExamen.__to_dict__()
        examen = row.Examen.__to_dict__()
        persona = row.Persona.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(examen)
        inner_join.update(persona)
        result.append(
            inner_join
        )
    return jsonify(result)


def get_otros_por_persona():
    conn = connect('root', 'root')
    otros_persona = conn.query(CumplimientoOtro, Personal, Otro).join(Personal, Personal.CI == CumplimientoOtro.persona).join(Otro, Otro.id == CumplimientoOtro.otro).all()
    result = []
    conn.close()

    for row in otros_persona:
        asignacion = row.CumplimientoOtro.__to_dict__()
        otro = row.Otro.__to_dict__()
        persona = row.Persona.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(otro)
        inner_join.update(persona)
        result.append(
            inner_join
        )
    return jsonify(result)


def get_dotacion_por_persona():
    conn = connect('root', 'root')
    dotacion_persona = conn.query(CumplimientoDotacion, Personal, Dotacion).join(Personal, Personal.CI == CumplimientoDotacion.persona).join(Dotacion, Dotacion.id == CumplimientoDotacion.dotacion).all()
    result = []
    conn.close()

    for row in dotacion_persona:
        asignacion = row.CumplimientoOtro.__to_dict__()
        dotacion = row.Dotacion.__to_dict__()
        persona = row.Persona.__to_dict__()

        inner_join = {}

        inner_join.update(asignacion)
        inner_join.update(dotacion)
        inner_join.update(persona)
        result.append(
            inner_join
        )
    return jsonify(result)

