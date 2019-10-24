package cursos

import grails.gorm.transactions.Transactional

@Transactional
class ExpositoresService {

  void altaExpositor(Map params) {
    def expositor = new Expositores(params).save(flush:true)
  }
  
  List listadoExpositores() {
    def expositor = Expositores.findAll()
      return expositor
  }

  List listadoCursos() {
    def cursos = Curso.findAll()
      return cursos
  }
  /*void altaExpositor(Map params) {
    def curso = Curso.get(params.id)
    def expositor = new Expositores(params).save(flush:true)
    curso.addToExp(expositor)
    curso.save(flush: true)
  }
  List listadoCursos() {
    def cursos = Curso.findAll()
      return cursos
  }
  List buscarCurso(int id) {
          return Curso.findAllById(params.id)
    }*/

}