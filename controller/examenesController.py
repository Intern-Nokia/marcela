from flask import jsonify, request
from db.connexion import connect
from models.examenes import Examen

def get_examenes():
    conn = connect('root', 'root')
    examenes = conn.query(Examen).all()
    result = []
    conn.close()
    for examen in examenes:
        result.append(
            {
                'id': examen.id,
                'nombre': examen.nombre,
                'institucion': examen.institucion,
                'vigencia': examen.vigencia,
                'costo': examen.costo
            }
        )
    return jsonify(result)

def add_examen():
    conn = connect('root', 'root')
    
    try:
        data = request.get_json()
        new_examen = Examen(**data)
        conn.add(new_examen)
        conn.commit()
        conn.close()
        return 'Exámen creado correctamente', 201
    except Exception as e:
        return 'Error al crear el exámen: {}'.format(e)
    
def edit_examen(id_examen):
    conn = connect('root', 'root')
    examen = conn.query(Examen).get(id_examen)

    if examen:
        data = request.get_json()

        for key, value in data.items():
            setattr(examen, key, value)
        
        conn.commit()
        conn.close()
        return 'Exámen actualizada exitosamente', 204
    
    else:
        conn.close()
        return 'No se encontro el exámen', 404

