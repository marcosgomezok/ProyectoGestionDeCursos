package cursos

import grails.gorm.services.Service

@Service(Inscripcion)
interface InscripcionService {

    Inscripcion get(Serializable id)

    List<Inscripcion> list(Map args)

    Long count()

    void delete(Serializable id)

    Inscripcion save(Inscripcion inscripcion)

}