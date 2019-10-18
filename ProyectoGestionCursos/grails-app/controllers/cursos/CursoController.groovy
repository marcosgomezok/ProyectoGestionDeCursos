package cursos

class CursoController {
    def cursoService

    def alta() {
      [curso: new Curso()]
    }

    def save() {
      cursoService.altaCurso(params)
      redirect(controller:"Administrador",action:"inicio")
    }
    


}
