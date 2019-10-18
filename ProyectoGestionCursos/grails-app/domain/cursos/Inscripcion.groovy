package cursos

class Inscripcion {
    String tipoInscrip
    String pago
    Certificado certif
    static hasMany =[asp: Aspirante, cursos: Curso]
    static belongsTo =[asp: Aspirante, cursos: Curso]
    static constraints = {
        tipoInscrip(inList: ['Postulante','Inscripto'])
        pago(inList: ['Pendiente','Realizado'])
    }
}
