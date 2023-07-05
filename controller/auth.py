from flask import request, jsonify
from flask_bcrypt import generate_password_hash, check_password_hash
from models.users import User
from db.connexion import connect

def register_user():
    conn = connect('root', 'root')
    data = request.get_json()

    email = data['email']
    hashed_password = generate_password_hash(data['password']).decode('utf-8')

    new_user = User(email=email, password=hashed_password)

    conn.add(new_user)
    conn.commit()
    conn.close()

    print(new_user.__to_dict__())

    return jsonify('Usuario agregado exitosamente'), 201

def login():
    conn = connect('root', 'root')
    data = request.get_json()

    email = data['email']
    password = data['password']

    user = conn.query(User).filter_by(email=email).first()

    if user:
        if check_password_hash(user.password, password):
            return jsonify({'message': 'Credenciales correctas'}), 200
    
    return jsonify({'message': 'Usuario o contraseña incorrectas'}), 401





