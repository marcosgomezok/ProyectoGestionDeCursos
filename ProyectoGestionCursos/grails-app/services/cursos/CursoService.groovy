package cursos

import grails.gorm.transactions.Transactional

@Transactional
class CursoService {

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
    c.estado = params.estado
    c.save(flush:true)
  }

  void modificar(Map params){
    def c = new Curso(params)
    c.nombre = params.nombre
      c.fecha_desde = Date.parse('dd/MM/yyyy', params.fecha_desde)
      c.fecha_hasta = Date.parse('dd/MM/yyyy', params.fecha_hasta)
      c.cantidad_horas = Integer.parseInt(params.cantidad_horas)
      c.lugar = params.lugar
      c.horarios = params.horarios
      c.fecha_lim_inscrip = Date.parse('dd/MM/yyyy', params.fecha_lim_inscrip)
      c.fechadel_certificado = Date.parse('dd/MM/yyyy', params.fechadel_certificado)
      c.cupo_minimo = Integer.parseInt(params.cupo_minimo)
      c.cupo_maximo = Integer.parseInt(params.cupo_maximo)
      c.costo = Integer.parseInt(params.costo)
      c.estado = params.estado
      c.save(flush:true)
  }

  List listadoCursos() {
      def cursos = Curso.findAll()
      return cursos
  }
  
  List listadoProximosCursos() {
      def cursos = Curso.findAllByEstado("Baja")
      return cursos
  }

  List buscarCurso(int id) {
          return Curso.findAllById(params.id)
    }


}