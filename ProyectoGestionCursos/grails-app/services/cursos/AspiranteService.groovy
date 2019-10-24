package cursos

import grails.gorm.transactions.Transactional

@Transactional
class AspiranteService {

  void altaAspirante(Map params) {
    def aspirante = new Aspirante(params).save(flush:true)
  }
}