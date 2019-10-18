package cursos

import grails.gorm.transactions.Transactional

@Transactional
class IndexService {

  List listadoCursos() {
    def cursos = Curso.findAll()
      return cursos
  }
}
