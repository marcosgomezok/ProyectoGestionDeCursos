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

  Expositores expositorxId(Map params){
    return Expositores.get(params.id)
  }

  void modificarExpositor(Map params){
    def c = Expositores.get(params.id)
    c.nombre = params.nombre
    c.apellido= params.apellido
    c.dni= Integer.parseInt(params.dni)
    c.titulo= params.titulo
    c.save(flush:true)
  }

  void eliminarExpositor(Map params){
    def expositor= Expositores.get(params.id)
    expositor.cursos.collect().each { Curso cursos ->
            cursos.removeFromExp(expositor)
        }
        expositor.delete(flush:true)
        
  }

  void quitarCurso(Map params){
    def expositor= Expositores.get(params.id_exp)
    def curso= Curso.get(params.id)
    curso.removeFromExp(expositor)
    expositor.save(flush:true)
  }
  
  void guardarExpositor(Map params){
    def curso = Curso.get(params.id)
    def expositor = Expositores.get(params.id_exp)
    expositor.addToCursos(curso)
    curso.addToExp(expositor)
    curso.save(flush: true)
    expositor.save(flush:true)
  }

}