package cursos

class Certificado {
    String tipoCertif
    static constraints = {
        tipoCertif(nullable: true, inList: ['Asistencia','Aprobado','Expositor'])
    }
}
