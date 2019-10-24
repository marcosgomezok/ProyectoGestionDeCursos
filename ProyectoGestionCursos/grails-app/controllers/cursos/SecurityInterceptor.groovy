package cursos


class SecurityInterceptor {

    boolean after() { true }

  void afterView() {
      // no-op
  }

  SecurityInterceptor() {
      match(controller:"aspirante", action:"inicio")
      match(controller:"aspirante", action:"inscripcion")
      match(controller:"aspirante", action:"cupon")
      match(controller:"aspirante", action:"miscursos")
      match(controller:"aspirante", action:"miscertificados")
      match(controller:"administrador", action:"inicio")
      match(controller:"curso", action:"alta")
      match(controller:"administrador", action:"admasistencias")
      match(controller:"administrador", action:"estadisticas")
  }

  boolean before() {
        if (!session.user && actionName != "login") {
          redirect(controller: "usuario", action: "inicio")
          return false
        }
        if(controllerName=='aspirante' && (actionName=='cupon' || actionName=='miscursos' || actionName=='miscertificados' || actionName=='inscripcion'|| actionName=='inicio')) {
            if(session.user instanceof Administrador){
                redirect(controller:"administrador", action: "inicio")
                 return false   
            }                                           
        }
        if(controllerName=='administrador' && (actionName=='inicio' || actionName=='admasistencias'|| actionName=='estadisticas')) {
            if(session.user instanceof Aspirante){
                redirect(controller:"Aspirante", action: "inicio")
                return false
            }                      
        }
        if(controllerName=='curso' && actionName=='alta') {
            if(session.user instanceof Aspirante){
                redirect(controller:"Aspirante", action: "inicio")
                return false
            }                      
        }
        return true        
    }


}
