package cursos


class SecurityInterceptor {

    boolean after() { true }

  void afterView() {
      // no-op
  }

  SecurityInterceptor() {
    match(controller:"aspirante", action:"inicio")
    match(controller:"aspirante", action:"cuenta")
    match(controller:"aspirante", action:"modify")
    match(controller:"aspirante", action:"modifyPw")
    match(controller:"aspirante", action:"miscupones")
    match(controller:"aspirante", action:"miscursos")
    match(controller:"aspirante", action:"miscertificados")
    match(controller:"aspirante", action:"inscripcion")
    match(controller:"aspirante", action:"cupon")
    match(controller:"aspirante", action:"confirmarBajaInscripcion")
    match(controller:"aspirante", action:"bajaInscripcion")
    match(controller:"aspirante", action:"verCupon")
    match(controller:"aspirante", action:"verCertificado")
    match(controller:"administrador", action:"inicio")
    match(controller:"administrador", action:"cuenta")
    match(controller:"administrador", action:"modify")
    match(controller:"administrador", action:"modifyPw")
    match(controller:"administrador", action:"gestionPago")
    match(controller:"administrador", action:"seleccionarPago")
    match(controller:"administrador", action:"modifyPago")
    match(controller:"administrador", action:"gestionCertificados")
    match(controller:"administrador", action:"seleccionarCertificado")
    match(controller:"administrador", action:"modifyCertif")
    match(controller:"curso", action:"inicio")
    match(controller:"curso", action:"alta")
    match(controller:"curso", action:"save")
    match(controller:"curso", action:"listadoCursos")
    match(controller:"curso", action:"baja")
    match(controller:"curso", action:"muestraCursoEliminar")
    match(controller:"curso", action:"confirmarBaja")
    match(controller:"curso", action:"modificar")
    match(controller:"curso", action:"seleccionarModify")
    match(controller:"curso", action:"confirmarModify")
    match(controller:"administrador", action:"inicio")
    match(controller:"administrador", action:"inscriptosxCurso")
    match(controller:"administrador", action:"pagoInscriptos")
    match(controller:"administrador", action:"nopagoInscriptos")
    match(controller:"administrador", action:"cursosxFecha")
    
  }

  boolean before() {
        if (!session.user && actionName != "login") {
          redirect(controller: "usuario", action: "inicio")
          return false
        }
        if(controllerName=='aspirante' && (actionName=='inicio'||actionName=='cuenta'||actionName=='modify'||actionName=='modifyPw'||actionName=='miscupones'||actionName=='miscursos'||actionName=='miscertificados'||actionName=='inscripcion'||actionName=='cupon'||actionName=='confirmarBajaInscripcion'||actionName=='bajaInscripcion'||actionName=='verCupon'||actionName=='verCertificado')) {
            if(session.user instanceof Administrador){
                redirect(controller:"administrador", action: "inicio")
                 return false   
            }                                        
        }
        if(controllerName=='administrador' && (actionName=='inicio'||actionName=='cuenta'||actionName=='modify'||actionName=='gestionPago'||actionName=='seleccionarPago'||actionName=='modifyPago'||actionName=='gestionCertificados'||actionName=='seleccionarCertificado'||actionName=='modifyCertif')) {
            if(session.user instanceof Aspirante){
                redirect(controller:"aspirante", action: "inicio")
                return false
            }                      
        }
        if(controllerName=='curso' && (actionName=='inicio'||actionName=='alta'||actionName=='save'||actionName=='listadoCursos'||actionName=='baja'||actionName=='muestraCursoEliminar'||actionName=='confirmarBaja'||actionName=='modificar'||actionName=='seleccionarModify'||actionName=='confirmarModify')) {
            if(session.user instanceof Aspirante){
                redirect(controller:"aspirante", action: "inicio")
                return false
            }                       
        }
        if(controllerName=='astadisticas' && (actionName=='inicio' || actionName=='inscriptosxCurso' || actionName=='pagoInscriptos' || actionName=='nopagoInscriptos' ||  actionName=='cursosxFecha')) {
            if(session.user instanceof Aspirante){
                redirect(controller:"aspirante", action: "inicio")
                return false
            }                        
        }
        return true        
    }
}
