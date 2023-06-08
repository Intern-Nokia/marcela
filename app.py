from flask import Flask
from db.connexion import create_tables
from routes.routes import load_routes
from flask_cors import CORS

# App Config
app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False
CORS(app)
create_tables('root', 'root')


if __name__ == '__main__':
    load_routes(app)
    app.run(debug=True)