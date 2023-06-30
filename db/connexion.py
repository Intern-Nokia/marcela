from sqlalchemy import MetaData, create_engine, text
from sqlalchemy.orm import sessionmaker
from models.asignaciones import Base as Base_asignaciones
from models.cumpllimientos import Base as Base_cumplimiento
from models.cursos import Base as Base_cursos
from models.dotacion import Base as Base_dotacion
from models.examenes import Base as Base_examenes
from models.otros import Base as Base_otros
from models.perfil import Base as Base_perfiles
from models.personal import Base as Base_personal

def connect(user: str, password: str):
    engine = create_engine('mysql+pymysql://'+user+':'+password+'@localhost:3306/marcela')

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


def create_tables(user: str, password: str):
    
    try:
        engine = create_engine('mysql+pymysql://'+user+':'+password+'@localhost:3306/marcela')
            
        #Crear las tablas
        metadata = MetaData()
        metadata.bind = engine

        #Obtener las tablas existentes
        metadata.reflect(bind=engine)

        #Crear solo las tablas que no existen
        Base_personal.metadata.create_all(engine, checkfirst=True)
        Base_cursos.metadata.create_all(engine, checkfirst=True)
        Base_perfiles.metadata.create_all(engine, checkfirst=True)
        Base_examenes.metadata.create_all(engine, checkfirst=True)
        Base_otros.metadata.create_all(engine, checkfirst=True)
        Base_dotacion.metadata.create_all(engine, checkfirst=True)

        Base_asignaciones.metadata.create_all(engine, checkfirst=True)
        Base_cumplimiento.metadata.create_all(engine, checkfirst=True)

        return True
    except Exception as e:
        print(e)
        return False
