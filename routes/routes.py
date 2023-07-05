from controller import *
from controller import otrosRequisitosController

def load_routes(app):

    #REGISTRAR USUARIOS
    app.add_url_rule('/register', view_func=auth.register_user, methods=['POST'])
    #INICIO DE SESION
    app.add_url_rule('/login', view_func=auth.login, methods=['POST'])


    # RUTAS DE USUARIOS
    app.add_url_rule('/personal/', view_func= personalController.get_personal, methods=['GET'])
    app.add_url_rule('/personal/<string:rut>', view_func=personalController.delete_personal, methods=['PATCH'])
    app.add_url_rule('/personal/', view_func= personalController.add_personal, methods=['POST'])
    app.add_url_rule('/personal/<string:rut>', view_func= personalController.edit_persona, methods=['PUT'])

    #RUTAS CURSOS
    app.add_url_rule('/cursos', view_func=cursosController.get_cursos, methods=['GET'])
    app.add_url_rule('/cursos', view_func=cursosController.add_curso, methods=['POST'])
    app.add_url_rule('/cursos/<int:id_curso>', view_func=cursosController.edit_curso, methods=['PUT'])

    #RUTAS DOTACION
    app.add_url_rule('/dotacion', view_func=dotacionController.get_dotacion, methods=['GET'])
    app.add_url_rule('/dotacion', view_func=dotacionController.add_dotacion, methods=['POST'])
    app.add_url_rule('/dotacion/<int:id_dotacion>', view_func=dotacionController.edit_dotacion, methods=['PUT'])
    

    #RUTAS DE LOS EXAMENES
    app.add_url_rule('/examenes', view_func=examenesController.get_examenes, methods=['GET'])
    app.add_url_rule('/examenes', view_func=examenesController.add_examen, methods=['POST'])
    app.add_url_rule('/examenes/<int:id_examen>', view_func=examenesController.edit_examen, methods=['PUT'])

    #RUTAS DE OTROS
    app.add_url_rule('/otros', view_func=otrosRequisitosController.get_otros, methods=['GET'])
    app.add_url_rule('/otros', view_func=otrosRequisitosController.add_otro, methods=['POST'])
    app.add_url_rule('/otros/<int:id_otro>', view_func=otrosRequisitosController.edit_otro, methods=['PUT'])
    
    #RUTAS PERFILES
    app.add_url_rule('/perfil', view_func=perfilesRequisitosController.get_perfiles, methods=['GET'])
    app.add_url_rule('/perfil', view_func=perfilesRequisitosController.add_perfil, methods=['POST'])
    app.add_url_rule('/perfil/<int:id_perfil>', view_func=perfilesRequisitosController.edit_perfil, methods=['PUT'])


    #RUTAS ASIGNACIONES
    #PERFILES POR PERSONA
    app.add_url_rule('/perfil/personas', view_func=asignacionesController.get_perfiles_por_persona, methods=['GET'])
    #CURSOS POR PERFIL
    app.add_url_rule('/perfil/cursos', view_func=asignacionesController.get_cursos_por_perfil, methods=['GET'])
    #AÑADIR CURSOS A REQUISITOS PERFIL
    app.add_url_rule('/perfil/cursos', view_func=asignacionesController.add_curso_perfil, methods=['POST'])
    
    #EXAMENES POR PERFIL
    app.add_url_rule('/perfil/examenes', view_func=asignacionesController.get_examenes_por_perfil, methods=['GET'])
    #AÑADIR EXAMENES A REQUISITOS PERFIL
    app.add_url_rule('/perfil/examenes', view_func=asignacionesController.add_examen_perfil, methods=['POST'])
    
    # OTROS REQUISITOS POR PERFIL
    app.add_url_rule('/perfil/otros', view_func=asignacionesController.get_otros_por_perfil, methods=['GET'])
    #AÑADIR OTROS REQUISITOS A REQUISITOS PERFIL
    app.add_url_rule('/perfil/otros', view_func=asignacionesController.add_otro_perfil, methods=['POST'])
    
    
    # DOTACION POR PERFIL
    app.add_url_rule('/perfil/dotacion', view_func=asignacionesController.get_dotacion_por_perfil, methods=['GET'])
    #AÑADIR DOTACION A REQUISITOS PERFIL
    app.add_url_rule('/perfil/dotacion', view_func=asignacionesController.add_dotacion_perfil, methods=['POST'])
    
    
    # AÑADIR PERFIL A PERSONA
    app.add_url_rule('/perfil/personas', view_func=asignacionesController.add_perfil_persona, methods=['POST'])


    #RUTAS CUMPLIMIENTOS
    #CURSOS POR PERSONA
    app.add_url_rule('/personal/cursos', view_func=cumplimientosController.get_cursos_por_persona, methods=['GET'])
    #AÑADIR CURSO A PERSONA
    app.add_url_rule('/personal/cursos', view_func=cumplimientosController.add_curso_persona, methods=['POST'])

    #EXAMENES POR PERSONA
    app.add_url_rule('/personal/examenes', view_func=cumplimientosController.get_examenes_por_persona, methods=['GET'])
    # AÑADIR EXÁMEN A PERSONA
    app.add_url_rule('/personal/examenes', view_func=cumplimientosController.add_examen_persona, methods=['POST'])

    #OTROS REQUISITOS POR PERSONA
    app.add_url_rule('/personal/otros', view_func=cumplimientosController.get_otros_por_persona, methods=['GET'])
    #AÑADIR OTRO REQUISITO A PERSONA
    app.add_url_rule('/personal/otros', view_func=cumplimientosController.add_otro_persona, methods=['POST'])

    
    #DOTACION POR PERSONA
    app.add_url_rule('/personal/dotacion', view_func=cumplimientosController.get_dotacion_por_persona, methods=['GET'])
    # AÑADIR DOTACION A PERSONA
    app.add_url_rule('/personal/dotacion', view_func=cumplimientosController.add_dotacion_persona, methods=['POST'])




    #CARGA DE ARCHIVOS
    app.add_url_rule('/upload', view_func=uploadFiles.upload_files, methods=['POST'])









