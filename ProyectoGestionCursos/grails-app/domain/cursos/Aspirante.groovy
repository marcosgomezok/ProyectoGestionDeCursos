package cursos

class Aspirante extends Persona {
    String email
    String categoria
    static hasMany =[cursos: Curso]
    static belongsTo = [cursos: Curso]

    static constraints = {
        email(email: true, nullable: true)//permite valores nulos
        categoria(inList: ['Alumno', 'Docente','Publico General'])
    }
}
