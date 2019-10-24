package cursos

class Inscripcion {
    String tipoInscrip
    String pago
    Certificado certif
    Curso curso
    Aspirante asp
    static constraints = {
        tipoInscrip(inList: ['Postulante','Inscripto'])
        pago(inList: ['Pendiente','Realizado'])
    }
}

