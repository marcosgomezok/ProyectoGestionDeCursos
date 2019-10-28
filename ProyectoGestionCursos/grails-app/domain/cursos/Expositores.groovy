package cursos

class Expositores extends Persona {
    String titulo
    static hasMany = [cursos: Curso]
    static belongsTo = [cursos: Curso]

    static constraints = {
        titulo(maxSize: 300, nullable: true)
    }
}
