package cursos

class Certificado {
    String tipoCertif
    static belongsTo = [ins: Inscripcion]
    
    static constraints = {
        tipoCertif(nullable: true, inList: ['Asistencia','Aprobado','Expositor'])
    }
}
