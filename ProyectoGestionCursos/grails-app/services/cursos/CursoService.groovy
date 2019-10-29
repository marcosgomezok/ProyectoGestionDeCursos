package cursos

import grails.gorm.transactions.Transactional

@Transactional
class CursoService {

  List buscarCurso(int id) {
          return Curso.findAllById(params.id)
    }

    void borrarExpositoresCursos(int id) {
        def curso = Curso.get(id)
        curso.exp.collect().each { Expositores exp ->
            curso.removeFromExp(exp)
            curso.delete(flush:true)
        }
    }

  /*NO TOCAR LOS SERVICIOS DE ABAJO*/
  List cursosxFechas(Map params){
    def fechaD = new Date().parse('yyyy-MM-dd', params.fecha_desde)
    def fechaH = new Date().parse('yyyy-MM-dd', params.fecha_hasta)
    def cursos = Curso.withCriteria() {           
      between("fecha_desde", fechaD, fechaH)
    }
    return cursos
  }

  Curso cursoxId(Map params){
    return Curso.get(params.id)
  }

  List listadoCursos() {
    return Curso.findAll()
  }

  List listadoProximosCursos() {
    def cursos = Curso.withCriteria() {           
      gt("fecha_desde", new Date())
    }
    return cursos
  }

  List listadoCursosFinalizados() {
    def cursos = Curso.withCriteria() {           
      lt("fecha_hasta", new Date())
    }
    return cursos
  }

  void altaCurso(Map params) {
    def c = new Curso()
    c.nombre = params.nombre
    c.fecha_desde = Date.parse('yyyy-MM-dd', params.fecha_desde)
    c.fecha_hasta = Date.parse('yyyy-MM-dd', params.fecha_hasta)
    c.cantidad_horas = Integer.parseInt(params.cantidad_horas)
    c.lugar = params.lugar
    c.horarios = params.horarios
    c.fecha_lim_inscrip = Date.parse('yyyy-MM-dd', params.fecha_lim_inscrip)
    c.fechadel_certificado = Date.parse('yyyy-MM-dd', params.fechadel_certificado)
    c.cupo_minimo = Integer.parseInt(params.cupo_minimo)
    c.cupo_maximo = Integer.parseInt(params.cupo_maximo)
    c.costo = Integer.parseInt(params.costo)
    c.save(flush:true)
    def curso = Curso.get(c.id)
    def auto
    def exp
    params.aut.each{
      auto = AutoridadCertificante.get(it)
      auto.addToCursos(curso).save(flush: true)
      curso.addToAut(auto).save(flush: true)
    }
    params.exp.each{
      exp = Expositores.get(it)
      exp.addToCursos(curso).save(flush: true)
      curso.addToExp(exp).save(flush: true)
    }
  }

  void bajaCurso(Map params){
    Curso.get(params.id).delete(flush: true)
  }

  void modifyCurso(Map params){
    def c = Curso.get(params.id)
    c.nombre = params.nombre
    c.fecha_desde = Date.parse('yyyy-MM-dd', params.fecha_desde)
    c.fecha_hasta = Date.parse('yyyy-MM-dd', params.fecha_hasta)
    c.cantidad_horas = Integer.parseInt(params.cantidad_horas)
    c.lugar = params.lugar
    c.horarios = params.horarios
    c.fecha_lim_inscrip = Date.parse('yyyy-MM-dd', params.fecha_lim_inscrip)
    c.fechadel_certificado = Date.parse('yyyy-MM-dd', params.fechadel_certificado)
    c.cupo_minimo = Integer.parseInt(params.cupo_minimo)
    c.cupo_maximo = Integer.parseInt(params.cupo_maximo)
    c.costo = Integer.parseInt(params.costo)
    c.save(flush:true)
    def curso = Curso.get(c.id)
    def auto
    def exp

    curso.exp.collect().each{ Expositores expe ->
    curso.removeFromExp(expe).save(flush: true)
    expe.removeFromCursos(curso).save(flush: true)
    }
    curso.aut.collect().each{ AutoridadCertificante aut ->
    curso.removeFromAut(aut).save(flush: true)
    aut.removeFromCursos(curso).save(flush: true)
    }

    params.aut.each{
      auto = AutoridadCertificante.get(it)
      auto.addToCursos(curso).save(flush: true)
      curso.addToAut(auto).save(flush: true)
    }
    params.exp.each{
      exp = Expositores.get(it)
      exp.addToCursos(curso).save(flush: true)
      curso.addToExp(exp).save(flush: true)
    }
  }
}