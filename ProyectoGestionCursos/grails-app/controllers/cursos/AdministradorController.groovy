package cursos

class AdministradorController {
    def cursoService
    def administradorService
    def inscripcionService
    def usuarioService

    def inicio() {
      [listado: cursoService.listadoCursos()]
    }

    def cuenta(){
      [adm: administradorService.administradorxId(session.user.id)]
    }

    def modify(){
      if(params.dni==null){   
        redirect(controller:"Administrador",action:"inicio")
      }
      else{
      def u = administradorService.modifyAdministrador(params, session.user.id)
      session.user = u
      redirect(controller:"Administrador",action:"inicio")
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
            redirect(controller:"Administrador",action:"inicio")
            }
          }
        }
      else{
        chain(action: "cuenta", model:[params: params])
        flash.messagepw = "Clave actual invalida"
      }
      }
      else{
        redirect(controller:"Administrador",action:"inicio")
      }
    }

    def menuPago(){
      render(view:"menuPago")
    }

    def listadoPagos(){
      [inscripciones: inscripcionService.inscripciones()]
    }

    def gestionPago(){
      [inscripciones: inscripcionService.noPago()]
    }

    def seleccionarPago(){
      [inscrip: inscripcionService.inscripcionxId(params)]
    }

    def modifyPago(){
      if(params.id==null){   
        redirect(controller:"Administrador",action:"inicio")
      }
      else{
      [inscrip: inscripcionService.modifyPago(params)]
      redirect(controller:"Administrador",action:"inicio")
      }
    }

    def gestionCertificados(){
      [inscripciones: inscripcionService.inscripcionespCertificados()]
    }

    def seleccionarCertificado(){
      [inscrip: inscripcionService.inscripcionxId(params)]
    }

    def modifyCertif(){
      if(params.id==null){   
        redirect(controller:"Administrador",action:"inicio")
      }
      else{
      [inscrip: inscripcionService.modifyCertif(params)]
      redirect(controller:"Administrador",action:"inicio")
      }
    }

    def infoCurso(){
      if(params.id==null){   
        redirect(controller:"Administrador",action:"inicio")
      }
      else{
      [curso: cursoService.cursoxId(params)]
      }
    }
}