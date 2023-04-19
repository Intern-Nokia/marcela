from flask import Flask

# App Config
app = Flask(__name__)

def load_routes(app):
    from controller.personalController import get_personal
    app.add_url_rule('/personal', view_func=get_personal)


if __name__ == '__main__':
    load_routes(app)
    app.run(debug=True)


