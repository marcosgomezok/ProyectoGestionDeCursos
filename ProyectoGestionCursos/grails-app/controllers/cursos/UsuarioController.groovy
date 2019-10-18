package cursos

class UsuarioController {

    def usuarioService
    def inicio() {
      session.user=null
      render(view:"inicio")
    }
    
    def login() {
      if (request.get) {
      return redirect(controller: "usuario", view: 'inicio')
      }
      def u = Usuario.findByUsuario(params.usuario)
      if (u) {
        if (u.password == params.password) {
        session.user = u
        if(u instanceof Aspirante){
        redirect(controller:"Aspirante",action:"inicio")   
        }
        if(u instanceof Administrador){
        redirect(controller:"Administrador",action:"inicio")    
        }
        } 
        else {  
        redirect(controller:"Usuario",action:"inicio")
        flash.message = "Contraseña incorrecta"
        }
      } 
      else {
      redirect(controller:"Usuario",action:"inicio")
      flash.message = "Usuario no encontrado"
      }
    }
      def logout() {
      session.user=null
      redirect(controller:"usuario", action: "inicio")
    }
}
