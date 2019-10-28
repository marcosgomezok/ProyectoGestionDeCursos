package cursos

import grails.gorm.transactions.Transactional

@Transactional
class ExpositoresService {

  void altaExpositor(Map params) {
    def expositor = new Expositores(params).save(flush:true)
  }
  
  List listadoExpositores() {
    return Expositores.findAll()
  }

  List listadoExpositoresSincurso(Curso curso) {
    def expositores = Expositores.findAll()
    def List<Expositores> expsacar = []
        curso.exp.collect().each{ Expositores c ->
          expsacar.push(c)
        }
    expositores.removeAll(expsacar)
    return expositores
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