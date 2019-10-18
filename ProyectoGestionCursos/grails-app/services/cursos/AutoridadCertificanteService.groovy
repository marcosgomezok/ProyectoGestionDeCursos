package cursos

import grails.gorm.services.Service

@Service(AutoridadCertificante)
interface AutoridadCertificanteService {

    AutoridadCertificante get(Serializable id)

    List<AutoridadCertificante> list(Map args)

    Long count()

    void delete(Serializable id)

    AutoridadCertificante save(AutoridadCertificante autoridadCertificante)

}