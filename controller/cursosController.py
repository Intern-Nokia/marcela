from flask import jsonify, request
from db.connexion import connect
from models.cursos import Curso

def get_cursos():
    conn = connect('root', 'root')
    cursos = conn.query(Curso).all()
    result = []
    conn.close()
    for curso in cursos:
        result.append(
            {
                'id': curso.id,
                'nombre': curso.nombre,
                'institucion': curso.institucion,
                'modalidad': curso.modalidad,
                'vigencia': curso.vigencia,
                'costo': curso.costo
            }
        )
    return jsonify(result)

def add_curso():
    conn = connect('root', 'root')
    
    try:
        data = request.get_json()
        new_curso = Curso(**data)
        conn.add(new_curso)
        conn.commit()
        conn.close()
        return 'Curso creado correctamente', 201
    except Exception as e:
        print(f'Error: {e}')
        return 'Error al crear el curso: {}'.format(e)
    
def edit_curso(id_curso):
    conn = connect('root', 'root')
    curso = conn.query(Curso).get(id_curso)

    if curso:
        data = request.get_json()

        for key, value in data.items():
            setattr(curso, key, value)
        
        conn.commit()
        conn.close()
        return 'Curso actualizado exitosamente', 204
    
    else:
        conn.close()
        return 'No se encontro el curso', 404

