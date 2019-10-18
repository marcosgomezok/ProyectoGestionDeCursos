package cursos

import grails.gorm.services.Service

@Service(Expositores)
interface ExpositoresService {

    Expositores get(Serializable id)

    List<Expositores> list(Map args)

    Long count()

    void delete(Serializable id)

    Expositores save(Expositores expositores)

}