package cursos

import grails.gorm.transactions.Transactional

@Transactional
class AspiranteService {

  void altaAspirante(Map params) {
    def aspirante = new Aspirante(params).save(flush:true)
  }
  List listadoCursos() {
    def cursos = Curso.findAll()
      return cursos
  }
  List buscarCurso(int id) {
          return Curso.findAllById(params.id)
    }
}