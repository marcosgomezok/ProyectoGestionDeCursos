package cursos

class IndexController {
    def cursoService

    def inicio() {
      session.user=null
      [listado: cursoService.listadoProximosCursos()]
    }
    
    def infoCurso(){
      session.user=null
      if(params.id==null){   
        redirect(uri: "/")
      }
      else{
      [curso: cursoService.cursoxId(params)]
      }
    }
}