from flask import jsonify, request
from db.connexion import connect

from models.otros import Otro

def get_otros():
    conn = connect('root', 'root')
    otros = conn.query(Otro).all()
    result = []
    conn.close()
    for otro in otros:
        result.append(
            otro.__to_dict__()
        )
    return jsonify(result)

def add_otro():
    conn = connect('root', 'root')
    
    try:
        data = request.get_json()
        new_otro = Otro(**data)
        conn.add(new_otro)
        conn.commit()
        conn.close()
        return 'Otro requisito creado correctamente', 201
    except Exception as e:
        return 'Error al crear otro requisito: {}'.format(e)
    
def edit_otro(id_otro):
    conn = connect('root', 'root')
    otro = conn.query(Otro).get(id_otro)

    if otro:
        data = request.get_json()

        for key, value in data.items():
            setattr(otro, key, value)
        
        conn.commit()
        conn.close()
        return 'Exámen actualizada exitosamente', 204
    
    else:
        conn.close()
        return 'No se encontro el exámen', 404

