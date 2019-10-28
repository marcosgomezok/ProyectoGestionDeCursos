package cursos

class Inscripcion {
    String tipoInscrip
    CuponPago cupon
    Certificado certif
    Curso curso
    Aspirante asp
    static constraints = {
        tipoInscrip(inList: ['Postulante','Inscripto'])      
    }
}

