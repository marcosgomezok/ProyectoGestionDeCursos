package cursos

import grails.gorm.transactions.Transactional

@Transactional
class AdministradorService {
  Administrador administradorxId(Long id){
    return Administrador.get(id)
  }

  Administrador modifyAdministrador(Map params, Long id){
    def adm = Administrador.get(id)
    adm.nombre = params.nombre
    adm.apellido = params.apellido
    adm.dni = Integer.parseInt(params.dni)
    adm.save(flush:true)
    return Usuario.findById(id)
  }
}