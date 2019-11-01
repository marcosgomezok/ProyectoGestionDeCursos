package cursos

class UsuarioController {
    def usuarioService

    def inicio() {
      session.user=null
      redirect(controller:"Usuario",action: "login")
    }
    
    def login() {
      session.user=null
      if (request.get){
      return render(view: "inicio")
      }
      def u = usuarioService.usuarioxUser(params.usuario)
      if (u){
        if (u.password == u.generateMD5_A(params.password)) {
        session.user = u
        if(u instanceof Aspirante){
        redirect(controller:"Aspirante",action:"inicio")   
        }
        if(u instanceof Administrador){
        redirect(controller:"Administrador",action:"inicio")    
        }
        } 
        else{  
        render(view: "inicio", model: [message: "Clave incorrecta"])
        }
      } 
      else{
      render(view: "inicio", model: [message: "Usuario no encontrado",params: params])
      }
    }

    def logout(){
      session.user=null
      redirect(controller:"usuario", action: "inicio")
    }
}
