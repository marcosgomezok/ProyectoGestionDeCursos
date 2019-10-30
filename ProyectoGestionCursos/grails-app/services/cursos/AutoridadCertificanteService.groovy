package cursos

import grails.gorm.transactions.Transactional

@Transactional
class AutoridadCertificanteService {

  void altaAutoridad(Map params) {
    def autoridad = new AutoridadCertificante(params).save(flush:true)
  }

  void altaAutoridadCertificante(Map params) {
    byte[] file = params.firma
      def img = new AutoridadCertificante(apellido: params.apellido, nombre:params.nombre, dni: params.dni, firma:file, cargo: params.cargo)
      img.save(flush:true)
      if (img.hasErrors()) {
            img.errors.allErrors.each {
                println it
            }
      }
  }

  void verImagenS(Map params){
    def img = AutoridadCertificante.get(params.id)
    response.outputStream << img
    response.outputStream.flush()
  }

  AutoridadCertificante autoridadxId(Map params){
    return AutoridadCertificante.get(params.id)
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
 
  void modificarAutoridad(Map params){
    def c = AutoridadCertificante.get(params.id)
    c.nombre = params.nombre
    c.apellido= params.apellido
    c.dni= Integer.parseInt(params.dni)
    c.cargo= params.cargo
    c.save(flush:true)
  }

  void eliminarAutoridad(Map params){
    def autoridad= AutoridadCertificante.get(params.id)
    autoridad.cursos.collect().each { Curso cursos ->
            cursos.removeFromAut(autoridad)
        }
        autoridad.delete(flush:true)
        
  }

  void guardarAutoridad(Map params){
    def curso = Curso.get(params.id)
    def autoridad = AutoridadCertificante.get(params.id_aut)
    autoridad.addToCursos(curso)
    autoridad.save(flush:true)
    curso.addToAut(autoridad)
    curso.save(flush: true)
  }

  void quitarCurso(Map params){
    def curso = Curso.get(params.id)
    def autoridad= AutoridadCertificante.get(params.id_exp)
    curso.removeFromAut(autoridad)
    autoridad.save(flush:true)
  }
}