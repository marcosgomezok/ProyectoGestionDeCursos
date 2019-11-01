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
    match(controller:"administrador", action:"menuPago")
    match(controller:"administrador", action:"listadoPagos")
    match(controller:"administrador", action:"infoCurso")
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
    match(controller:"estadisticas", action:"inicio")
    match(controller:"estadisticas", action:"inscriptosxCurso")
    match(controller:"estadisticas", action:"pagoInscriptos")
    match(controller:"estadisticas", action:"nopagoInscriptos")
    match(controller:"estadisticas", action:"cursosxFecha")
    match(controller:"expositores", action:"inicio")
    match(controller:"expositores", action:"altaExpositor")
    match(controller:"expositores", action:"guardarExpositor")
    match(controller:"expositores", action:"listadoExpositores")
    match(controller:"expositores", action:"asignarCurso")
    match(controller:"expositores", action:"quitarCurso")
    match(controller:"expositores", action:"confirmarQuitar")
    match(controller:"expositores", action:"guardarCursoExpositor")
    match(controller:"expositores", action:"modificar")
    match(controller:"expositores", action:"modificarDatosExp")
    match(controller:"expositores", action:"guardarDatosModif")
    match(controller:"expositores", action:"baja")
    match(controller:"expositores", action:"eliminarExpositor")
    match(controller:"expositores", action:"confirmarEliminar")
    match(controller:"autoridadCertificante", action:"inicio")
    match(controller:"autoridadCertificante", action:"altaAutoridadCertificante")
    match(controller:"autoridadCertificante", action:"guardarAutoridad")
    match(controller:"autoridadCertificante", action:"listadoAutoridad")
    match(controller:"autoridadCertificante", action:"asignarCurso")
    match(controller:"autoridadCertificante", action:"guardarCursoAutoridad")
    match(controller:"autoridadCertificante", action:"quitarCurso")
    match(controller:"autoridadCertificante", action:"confirmarQuitar")
    match(controller:"autoridadCertificante", action:"modificar")
    match(controller:"autoridadCertificante", action:"modificarDatosAut")
    match(controller:"autoridadCertificante", action:"guardarDatosModif")
    match(controller:"autoridadCertificante", action:"baja")
    match(controller:"autoridadCertificante", action:"eliminarAutoridad")
    match(controller:"autoridadCertificante", action:"confirmarEliminar")
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
        if(controllerName=='administrador' && (actionName=='inicio'||actionName=='cuenta'||actionName=='modify'||actionName=='gestionPago'||actionName=='seleccionarPago'||actionName=='modifyPago'||actionName=='gestionCertificados'||actionName=='seleccionarCertificado'||actionName=='modifyCertif'||actionName=='menuPago'||actionName=='listadoPagos'||actionName=='infoCurso')) {
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
        if(controllerName=='expositores' && (actionName=='inicio'||actionName=='altaExpositor'||actionName=='guardarExpositor'||actionName=='listadoExpositores'||actionName=='asignarCurso'||actionName=='quitarCurso'||actionName=='confirmarQuitar'||actionName=='guardarCursoExpositor'||actionName=='modificar'||actionName=='modificarDatosExp'||actionName=='guardarDatosModif'||actionName=='baja'||actionName=='eliminarExpositor'||actionName=='confirmarEliminar')) {
            if(session.user instanceof Aspirante){
                redirect(controller:"aspirante", action: "inicio")
                return false
            }                       
        }
        if(controllerName=='autoridadCertificante' && (actionName=='inicio'||actionName=='altaAutoridadCertificante'||actionName=='guardarAutoridad'||actionName=='listadoAutoridad'||actionName=='asignarCurso'||actionName=='guardarCursoAutoridad'||actionName=='quitarCurso'||actionName=='confirmarQuitar'||actionName=='modificar'||actionName=='modificarDatosAut'||actionName=='guardarDatosModif'||actionName=='baja'||actionName=='eliminarAutoridad'||actionName=='confirmarEliminar')) {
            if(session.user instanceof Aspirante){
                redirect(controller:"aspirante", action: "inicio")
                return false
            }                        
        }
        if(controllerName=='estadisticas' && (actionName=='inicio' || actionName=='inscriptosxCurso' || actionName=='pagoInscriptos' || actionName=='nopagoInscriptos' ||  actionName=='cursosxFecha')) {
            if(session.user instanceof Aspirante){
                redirect(controller:"aspirante", action: "inicio")
                return false
            }                        
        }
        return true        
    }
}
