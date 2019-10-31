package cursos

import grails.gorm.transactions.Transactional

@Transactional
class UsuarioService {

    Usuario usuarioxUser(String usuario){
        return Usuario.findByUsuario(usuario)
    }
    
}