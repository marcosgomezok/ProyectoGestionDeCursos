package cursos

class AspiranteController {
    def aspiranteService
    def cursoService
    def inscripcionService
    def usuarioService

    def inicio() {
      [listado: cursoService.listadoCursos()]
    }

    def alta() {
      session.user = null
      [aspirante: new Aspirante()]
    }

    def save() {
      if(params.usuario != null){   
      def asp = aspiranteService.aspirantexUsername(params.usuario)
        if(asp){
          chain(action: "alta", model:[params: params])
          flash.message = "Nombre de usuario en uso"
        }
        else{
          if(params.password.value.length < 6 || params.password.value.length > 8){
            chain(action: "alta", model:[params: params])
            flash.message = "La clave debe tener entre 6 y 8 caracteres"
          }
          else{
            if(params.password != params.re_password){
            chain(action: "alta", model:[params: params])
            flash.message = "Las claves no son iguales"
            }
            else{
            aspiranteService.altaAspirante(params)
            redirect(controller:"Usuario",action:"inicio")
            }
          }
        } 
      }
      else{
        redirect(controller:"Usuario",action:"inicio")
      }
    }

    def cuenta(){
      [asp: aspiranteService.aspirantexId(session.user.id)]
    }

    def modify(){
      if(params.dni!=null){   
        session.user = aspiranteService.modifyAspirante(params, session.user.id)
        redirect(controller:"Aspirante",action:"inicio")  
      }
      else{
        redirect(controller:"Aspirante",action:"inicio")
      }
    }   

    def modifyPw(){
      if(params.password != null){
      def u = usuarioService.usuarioxUser(session.user.usuario)
      if(session.user.password == u.generateMD5_A(params.actpassword)){
        if(params.password.value.length < 6 || params.password.value.length > 8){
            chain(action: "cuenta", model:[params: params])
            flash.messagepw = "La clave debe tener entre 6 y 8 caracteres"
          }
          else{
            if(params.password != params.re_password){
            chain(action: "cuenta", model:[params: params])
            flash.messagepw = "Las claves no son iguales"
            }
            else{
            session.user = usuarioService.modifyPw(params, session.user.id)
            redirect(controller:"Aspirante",action:"inicio")
            }
          }
        }
      else{
        chain(action: "cuenta", model:[params: params])
        flash.messagepw = "Clave actual invalida"
      }
      }
      else{
        redirect(controller:"Aspirante",action:"inicio")
      }
    }

    def miscursos(){
      [miscursos: aspiranteService.aspiranteCursos(session.user.id)]
    }

    def miscertificados(){
      [miscertif: aspiranteService.aspiranteCertificados(session.user.id)]
    } 

    def miscupones(){
      [miscupones: aspiranteService.aspiranteCupones(session.user.id)]
    } 

    def inscripcion(){
      if(params.id!=null){   
        def curso = cursoService.cursoxId(params)
        def inscriptos = inscripcionService.verificarInscripcion(curso,session.user.id)
        if(inscriptos.size() == 0){
          render(view: "inscripcion", model: [curso: curso])
        }
        else{
        render(view: "inscripcion")
        }
      }
      else{
        redirect(controller:"Aspirante",action:"inicio")
      }
    }

    def cupon() {
      if(params.id!=null){
      [cupon:  inscripcionService.altaInscripcion(params,session.user.id)]
      }
      else{
      redirect(controller:"Aspirante",action:"inicio")
      }
    }

    def confirmarBajaInscripcion(){
      if(params.id!=null){
      [inscripcion: inscripcionService.inscripcionxId(params)]
      }
      else{
      redirect(controller:"Aspirante",action:"inicio")
      }  
    }

    def bajaInscripcion(){
      if(params.id!=null){
      inscripcionService.bajaInscripcion(params)
      redirect(controller:"Aspirante",action:"inicio")
      }
      else{
      redirect(controller:"Aspirante",action:"inicio")
      }
    }

    def verCupon(){
      if(params.id!=null){
      [inscripcion: inscripcionService.inscripcionxId(params)]
      }
      else{
      redirect(controller:"Aspirante",action:"inicio")
      }
    }

    def verCertificado(){
    if(params.id!=null){
      [inscripcion: inscripcionService.inscripcionxId(params)]
      }
      else{
      redirect(controller:"Aspirante",action:"inicio")
      }
    }
}