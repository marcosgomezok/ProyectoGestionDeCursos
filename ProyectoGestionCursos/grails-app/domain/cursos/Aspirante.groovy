package cursos

class Aspirante extends Usuario {
    String email
    String categoria
    static hasMany = [ins: Inscripcion]
    static belongsTo = [ins: Inscripcion]

    static constraints = {
        email(email: true, nullable: true)
        categoria(inList: ['Alumno', 'Docente','Publico General'])
    }
}
