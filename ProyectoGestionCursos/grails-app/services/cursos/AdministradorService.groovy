package cursos

import grails.gorm.transactions.Transactional

@Transactional
class AdministradorService {
    List listadoCursos() {
      def cursos = Curso.findAllByEstado("Activo")
      return cursos
  }
}