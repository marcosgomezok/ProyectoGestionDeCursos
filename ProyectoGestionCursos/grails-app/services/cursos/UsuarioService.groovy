package cursos

import grails.gorm.transactions.Transactional

@Transactional
class UsuarioService {

    Usuario usuarioxUser(String usuario){
        return Usuario.findByUsuario(usuario)
    }

    Usuario modifyPw(Map params, Long id){
    def u = Usuario.get(id)
    u.password = params.password
    u.save(flush:true)
    return Usuario.findById(id)
  }
    
}