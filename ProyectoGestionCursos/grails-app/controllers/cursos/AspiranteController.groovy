package cursos

class AspiranteController {
    def aspiranteService
    def cursoService
    def inscripcionService

    def inicio() {
      [listado: cursoService.listadoCursos()]
    }

    def alta() {
      session.user = null
      [aspirante: new Aspirante()]
    }

    def save() {
      if(params.dni==null){   
        redirect(controller:"Usuario",action:"inicio")
      }
      else{
      aspiranteService.altaAspirante(params)
      redirect(controller:"Usuario",action:"inicio")
      }
    }

    def cuenta(){
      [asp: aspiranteService.aspirantexId(session.user.id)]
    }

    def modify(){
      if(params.dni==null){   
        redirect(controller:"Aspirante",action:"inicio")
      }
      else{
      def u = aspiranteService.modifyAspirante(params, session.user.id)
      session.user = u
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
      if(params.id==null){   
        redirect(controller:"Aspirante",action:"inicio")
      }
      else{
        def curso = cursoService.cursoxId(params)
        def inscriptos = inscripcionService.verificarInscripcion(curso,session.user.id)
        if(inscriptos.size() == 0){
          render(view: "inscripcion", model: [curso: curso])
        }
        else{
        render(view: "inscripcion")
        }
      }
    }

    def cupon() {
    if(params.id==null){   
      redirect(controller:"Aspirante",action:"inicio")
      }
    else{
      [cupon:  inscripcionService.altaInscripcion(params,session.user.id)]
    }
    }
}