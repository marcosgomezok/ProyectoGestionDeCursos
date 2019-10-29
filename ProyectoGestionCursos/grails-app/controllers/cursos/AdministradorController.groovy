package cursos

class AdministradorController {
    def cursoService
    def administradorService
    def inscripcionService

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