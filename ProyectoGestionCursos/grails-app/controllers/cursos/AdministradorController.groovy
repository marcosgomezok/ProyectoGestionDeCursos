package cursos

class AdministradorController {
    def administradorService

    def inicio() {
      [listado: administradorService.listadoCursos()]
    }
    def admasistencias(){

    }
    def estadisticas(){
      
    }
}