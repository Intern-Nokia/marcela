from flask import jsonify, request
from db.connexion import connect
from models.personal import Personal

# Get all personal


def get_personal():
    conn = connect('root', 'root')
    personal = conn.query(Personal).filter(Personal.activo == 1).all()
    result = []
    conn.close()
    for person in personal:
        result.append(
            person.__to_dict__()
        )

    return jsonify(result)


def add_personal():
    data = request.get_json()
    new_user = Personal(**data)

    conn = connect('root', 'root')
    conn.add(new_user)
    conn.commit()
    conn.close()
    return {"message": 'OK'}


def edit_persona(rut):
    conn = connect('root', 'root')
    user = conn.query(Personal).get(rut)

    if user:
        new_data = request.get_json()

        for key, value in new_data.items():
            setattr(user, key, value)

        conn.commit()
        conn.close()
        return 'Persona actualizada exitosamente', 204

    else:
        conn.close()
        return 'No se encontro la persona.', 404


def delete_personal(rut):
    conn = connect('root', 'root')
    user = conn.query(Personal).get(rut)
    user.activo = 0
    conn.commit()
    conn.close()

    return jsonify(result)
