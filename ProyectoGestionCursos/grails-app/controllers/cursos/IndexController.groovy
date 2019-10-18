package cursos

class IndexController {
    def indexService

    def inicio() {
      session.user=null
      [listado: indexService.listadoCursos()]
    }
}