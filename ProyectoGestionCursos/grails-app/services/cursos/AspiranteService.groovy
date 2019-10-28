package cursos

import grails.gorm.transactions.Transactional

@Transactional
class AspiranteService {

  void altaAspirante(Map params) {
    def aspirante = new Aspirante(params).save(flush:true)
  }

  Aspirante aspirantexId(Long id){
    return Aspirante.get(id)
  }

  Usuario modifyAspirante(Map params, Long id){
    def asp = Aspirante.get(id)
    asp.nombre = params.nombre
    asp.apellido = params.apellido
    asp.dni = Integer.parseInt(params.dni)
    asp.email = params.email
    asp.categoria = params.categoria
    asp.save(flush:true)
    def u = Usuario.findById(id)
    return u
  }

  List aspiranteCursos(Long id){
    def miscursos = Inscripcion.withCriteria() {           
      asp {
        eq("id", id)
        }
      }
    return miscursos
  }

  List aspiranteCertificados(Long id){
    def miscertif = Inscripcion.withCriteria() {           
      asp {
        eq("id", id)
        }
      certif{
        isNotNull("tipoCertif")
        }
      }
    return miscertif
  }

  List aspiranteCupones(Long id){
    def miscupones = Inscripcion.withCriteria() {  
      eq("tipoInscrip", "Inscripto")         
      asp {
        eq("id", id)
        }
      }
    return miscupones
  }
}