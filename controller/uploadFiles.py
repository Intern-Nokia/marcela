import os
import uuid
from flask import jsonify, send_from_directory, request

UPLOAD_FOLDER = 'C:/Users/ruizsanc/marcela_backend/files'


def upload_files():

    try:
        if not os.path.exists(UPLOAD_FOLDER):
            os.makedirs(UPLOAD_FOLDER)

        if 'file' not in request.files:
            return jsonify({'error': 'No se seleccionó ningún archivo'})

        file = request.files['file']
        file_extension = os.path.splitext(file.filename)[1]
        unique_filename = str(uuid.uuid4()) + file_extension
        file_path = os.path.join(UPLOAD_FOLDER, unique_filename)
        file.save(file_path)

        return jsonify({'url': f'http://localhost:5000/files/{unique_filename}', 'filename': unique_filename})

    except Exception as e:
        return jsonify({'error': str(e)})


def serve_file(filename):
    return send_from_directory(UPLOAD_FOLDER, filename)
