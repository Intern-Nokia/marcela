from flask import jsonify, request
from db.connexion import connect

from models.perfil import Perfil


def get_perfiles():
    conn = connect('root', 'root')
    perfiles = conn.query(Perfil).all()
    result = []
    conn.close()
    for perfil in perfiles:
        result.append(
            perfil.__to_dict__()
        )
    return jsonify(result)

def add_perfil():
    conn = connect('root', 'root')
    
    try:
        data = request.get_json()
        new_perfil = Perfil(**data)
        conn.add(new_perfil)
        conn.commit()
        conn.close()
        return 'perfil creado correctamente', 201
    except Exception as e:
        return 'Error al crear el perfil: {}'.format(e)
    
def edit_perfil(id_perfil):
    conn = connect('root', 'root')
    perfil = conn.query(Perfil).get(id_perfil)

    if perfil:
        data = request.get_json()

        for key, value in data.items():
            setattr(perfil, key, value)
        
        conn.commit()
        conn.close()
        return 'perfil actualizado exitosamente', 204
    
    else:
        conn.close()
        return 'No se encontro el perfil', 404
