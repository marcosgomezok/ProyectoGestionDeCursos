package cursos

class AutoridadCertificante extends Persona{
    byte[] firma 
    String cargo
    static hasMany =[cursos: Curso]
    static belongsTo = [cursos: Curso]

    static constraints = {
        cargo(inList: ['Decano','Secretario/a','Academico','Director/a Departamento'])
    }
}
