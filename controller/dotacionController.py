from flask import jsonify, request
from db.connexion import connect

from models.dotacion import Dotacion


def get_dotacion():
    conn = connect('root', 'root')
    dotaciones = conn.query(Dotacion).all()
    result = []
    conn.close()
    for dotacion in dotaciones:
        result.append(
            {
                'id': dotacion.id,
                'nombre': dotacion.nombre,
                'vigencia': dotacion.vigencia,
                'costo': dotacion.costo
            }
        )
    return jsonify(result)

def add_dotacion():
    conn = connect('root', 'root')
    
    try:
        data = request.get_json()
        new_dotacion = Dotacion(**data)
        conn.add(new_dotacion)
        conn.commit()
        conn.close()
        return 'Dotación creada correctamente', 201
    except Exception as e:
        return 'Error al crear el curso: {}'.format(e)
    
def edit_dotacion(id_dotacion):
    conn = connect('root', 'root')
    dotacion = conn.query(Dotacion).get(id_dotacion)

    if dotacion:
        data = request.get_json()

        for key, value in data.items():
            setattr(dotacion, key, value)
        
        conn.commit()
        conn.close()
        return 'Dotación actualizada exitosamente', 204
    
    else:
        conn.close()
        return 'No se encontro la dotación', 404

