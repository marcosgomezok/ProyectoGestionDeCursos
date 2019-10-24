package cursos

import grails.gorm.transactions.Transactional

@Transactional
class InscripcionService {

    List listadoInscriptosS() {
      def inscriptos = Aspirante.findAll()
      return inscriptos
  }

   

}