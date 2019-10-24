package cursos

class Usuario extends Persona{
    String usuario
    String password

    static constraints = {
        usuario(blank: false, maxSize:100)
        password(blank: false, maxSize:100)
    }
}