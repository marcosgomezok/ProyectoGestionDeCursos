package cursos

import grails.gorm.transactions.Transactional

@Transactional
class AutoridadCertificanteService {

  void altaAutoridad(Map params) {
    def autoridad = new AutoridadCertificante(params).save(flush:true)
  }

  List listadoAutoridades() {
    return  AutoridadCertificante.findAll()
  }
   List listadoCursos() {
    def cursos = Curso.findAll()
      return cursos
  }
  List listadoAutoridadesSincurso(Curso curso) {
    def autoridades = AutoridadCertificante.findAll()
    def List<AutoridadCertificante> autsacar = []
        curso.aut.collect().each{ AutoridadCertificante a ->
          autsacar.push(a)
        }
    autoridades.removeAll(autsacar)
    return autoridades
    }
}