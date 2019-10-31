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

  Aspirante aspirantexUsername(String usuario){
    return Aspirante.findByUsuario(usuario)
  }

  Usuario modifyAspirante(Map params, Long id){
    def asp = Aspirante.get(id)
    asp.properties = params
    asp.save(flush:true)
    return Usuario.findById(id)
  }

  List aspiranteCursos(Long id){
    return Inscripcion.withCriteria() {           
      asp {
        eq("id", id)
        }
      }
  }

  List aspiranteCertificados(Long id){
    return Inscripcion.withCriteria() {           
      asp {
        eq("id", id)
        }
      certif{
        isNotNull("tipoCertif")
        }
      }
  }

  List aspiranteCupones(Long id){
    return Inscripcion.withCriteria() {  
      eq("tipoInscrip", "Inscripto")         
      asp {
        eq("id", id)
        }
      }
  }
}