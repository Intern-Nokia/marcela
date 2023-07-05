from flask import request
import os

def upload_files():


    if not os.path.exists('C:/Users/Juan/marcela/files'):
        os.makedirs('C:/Users/Juan/marcela/files')

    if 'file' not in request.files:
        return 'No se selecciono ningún archivo', 400
    
    file = request.files['file']
    print(file)
    file.save('C:/Users/Juan/marcela/files/'+file.filename)

    return 'Archivo subido correctamente', 200