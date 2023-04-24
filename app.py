from flask import Flask
from routes.routes import load_routes
from flask_cors import CORS

# App Config
app = Flask(__name__)
app.config['JSON_AS_ASCII'] = False
CORS(app)

if __name__ == '__main__':
    load_routes(app)
    app.run(debug=True)