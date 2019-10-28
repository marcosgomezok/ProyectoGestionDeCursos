package cursos

class Usuario extends Persona{
    String usuario
    String password

    static constraints = {
        usuario(blank: false, maxSize:100,unique: true)
        password(blank: false, maxSize:100)
    }
}
