from flask import jsonify, request
from db.connexion import connect
from sqlalchemy import and_

from models.asignaciones import AsignacionCurso, AsignacionDotacion, AsignacionExamen, AsignacionOtros, AsignacionPerfil
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
    examenes_persona = conn.query(AsignacionExamen, Perfil, Examen).join(Perfil, Perfil.id == AsignacionExamen.perfil).join(Examen, Examen.id == AsignacionExamen.examen).all()
    result = []
    conn.close()

    for row in examenes_persona:
        asignacion = row.AsignacionExamen.__to_dict__()
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
        asignacion = row.AsignacionDotacion.__to_dict__()
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

def add_curso_perfil():
    conn = connect('root', 'root')

    try:
        data = request.get_json()
        new_curso_perfil = AsignacionCurso(**data)
        existe = conn.query(AsignacionCurso).filter(and_(AsignacionCurso.curso==data['curso'], AsignacionCurso.perfil==data['perfil'])).first()
        if existe:
            return jsonify({'error': 'El perfil ya tiene este requisito'}), 409
        else:
            conn.add(new_curso_perfil)
            conn.commit()
            conn.close()
            return jsonify({'message': 'Requisito añadido exitosamente'}), 201
    except Exception as e:
        return jsonify({'error': e})


def add_examen_perfil():
    conn = connect('root', 'root')

    try:
        data = request.get_json()
        new_examen_perfil = AsignacionExamen(**data)
        existe = conn.query(AsignacionExamen).filter(and_(AsignacionExamen.examen==data['examen'], AsignacionExamen.perfil==data['perfil'])).first()
        if existe:
            return jsonify({'error': 'El perfil ya tiene este requisito'}), 409
        else:
            conn.add(new_examen_perfil)
            conn.commit()
            conn.close()
            return jsonify({'message': 'Requisito añadido exitosamente'}), 201
    except Exception as e:
        return jsonify({'error': e})
    
def add_dotacion_perfil():
    conn = connect('root', 'root')

    try:
        data = request.get_json()
        new_dotacion_perfil = AsignacionDotacion(**data)
        existe = conn.query(AsignacionDotacion).filter(and_(AsignacionDotacion.dotacion==data['dotacion'], AsignacionDotacion.perfil==data['perfil'])).first()
        if existe:
            return jsonify({'error': 'El perfil ya tiene este requisito'}), 409
        else:
            conn.add(new_dotacion_perfil)
            conn.commit()
            conn.close()
            return jsonify({'message': 'Requisito añadido exitosamente'}), 201
    except Exception as e:
        return jsonify({'error': e})
    
def add_otro_perfil():
    conn = connect('root', 'root')

    try:
        data = request.get_json()
        new_otro_perfil = AsignacionOtros(**data)
        existe = conn.query(AsignacionOtros).filter(and_(AsignacionOtros.otro==data['otro'], AsignacionOtros.perfil==data['perfil'])).first()
        if existe:
            return jsonify({'error': 'El perfil ya tiene este requisito'}), 409
        else:
            conn.add(new_otro_perfil)
            conn.commit()
            conn.close()
            return jsonify({'message': 'Requisito añadido exitosamente'}), 201
    except Exception as e:
        return jsonify({'error': e})

def add_perfil_persona():
    conn = connect('root', 'root')

    try:
        data = request.get_json()
        new_asignacion_perfil = AsignacionPerfil(**data)
        existe = conn.query(AsignacionPerfil).filter(and_(AsignacionPerfil.perfil==data['perfil'], AsignacionPerfil.persona == data['persona'])).first()
        if existe:
            return jsonify({'error': "El usuario ya tiene este perfil"}), 409
        else:
            conn.add(new_asignacion_perfil)
            conn.commit()
            conn.close()
            return jsonify({'message': 'Perfil Añadido Exitosamente'}), 201
    except Exception as e:
        print(f'Error al asignar el perfil: {e}')
        return f'Error al asignar el perfil: {e}'