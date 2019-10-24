package cursos

class IndexController {
    def cursoService

    def inicio() {
      session.user=null
      [listado: cursoService.listadoProximosCursos()]
    }
}