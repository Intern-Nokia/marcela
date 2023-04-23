from flask import Flask
from routes.routes import load_routes

# App Config
app = Flask(__name__)

if __name__ == '__main__':
    load_routes(app)
    app.run(debug=True)


