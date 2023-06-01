from controller import *

def load_routes(app):
    # RUTAS DE USUARIOS
    app.add_url_rule('/personal/', view_func= personalController.get_personal, methods=['GET'])
    app.add_url_rule('/personal/<string:rut>', view_func=personalController.delete_personal, methods=['PATCH'])
    app.add_url_rule('/personal/', view_func= personalController.add_personal, methods=['POST'])

    # app.add_url_rule('/personal/<string:nombre>', view_func= personalController.get_personal_by_name, methods=['GET'])
    app.add_url_rule('/cargos', view_func=cargosController.get_cargos)
    app.add_url_rule('/contratos', view_func=contratosController.get_contratos)
    app.add_url_rule('/amonestaciones', view_func=amonestacionesController.get_amonestacion)
    app.add_url_rule('/asignacion-perfiles', view_func=asignacionPerfilesController.get_asignacion_perfiles)
    app.add_url_rule('/certificado-antecedentes', view_func=certificadoAntecedentesController.get_certificado)
    
    #RUTAS CURSOS
    app.add_url_rule('/cursos', view_func=cursosController.get_cursos)
    app.add_url_rule('/cursos/<string:CI>', view_func=cursosController.get_cursos_usuario_CI, methods=['GET'])
    app.add_url_rule('/cursos-perfil', view_func=cursosPorPerfilController.get_cursos_perfil)
    app.add_url_rule('/dotacion', view_func=dotacionController.get_dotacion_2013_01)
    
    #RUTAS DEL EPP
    app.add_url_rule('/epp', view_func=eppController.get_epp)
    app.add_url_rule('/epp/<string:rut>', view_func=eppController.get_epp_usuario, methods=['GET'])

    #RUTAS DE LOS EXAMENES
    app.add_url_rule('/examenes', view_func=examenesController.get_examenes)
    app.add_url_rule('/examenes-perfil', view_func=examenPorPerfilController.get_examenes_por_perfil)
    
    #RUTAS DE OTROS
    app.add_url_rule('/otros/<string:rut>', view_func=otrosRequistosPorPerfilController.get_otros_usuario, methods=['GET'])
    
    
    app.add_url_rule('/perfil-requisitos', view_func=perfilesRequisitosController.get_perfil_requisito)
    app.add_url_rule('/recursos', view_func=recursosController.get_recurso)
    app.add_url_rule('/registro-capacitacion', view_func=registroCapacitaciones.get_registro_capacitacion)
    app.add_url_rule('/registro-DAS', view_func=registroEntregaDAS.get_registro_entrega_das)
    app.add_url_rule('/registro-EPP', view_func=registroEntregaEPP.get_registro_entrega_epp)
    app.add_url_rule('/registro-RI', view_func=registroEntregaRI.get_registro_entrega_ri)
    app.add_url_rule('/registro-examenes', view_func=registroExamenesController.get_registro_examenes)
    app.add_url_rule('/reglamento-interno', view_func=reglamentosInternosController.get_reglamentos_internos)





















