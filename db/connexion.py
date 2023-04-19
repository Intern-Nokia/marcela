from sqlalchemy import create_engine, text
from sqlalchemy.orm import sessionmaker

def connect(user: str, password: str):
    engine = create_engine('mysql+pymysql://'+user+':'+password+'@localhost:3306/marcela_db')

    try:
    # Conectarse a la base de datos
        Session = sessionmaker(bind=engine)
        session = Session()

        query = text("SELECT database();")
        # Ejecutar una consulta para recuperar el nombre del schema actual
        result = session.execute(query)

        # Imprimir el nombre del schema actual
        print("El nombre del schema actual es:", result.scalar())

        return session
    except Exception as e:
        print("Error al conectar a la base de datos:", e)