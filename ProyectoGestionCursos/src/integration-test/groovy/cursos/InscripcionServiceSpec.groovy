package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class InscripcionServiceSpec extends Specification {

    InscripcionService inscripcionService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Inscripcion(...).save(flush: true, failOnError: true)
        //new Inscripcion(...).save(flush: true, failOnError: true)
        //Inscripcion inscripcion = new Inscripcion(...).save(flush: true, failOnError: true)
        //new Inscripcion(...).save(flush: true, failOnError: true)
        //new Inscripcion(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //inscripcion.id
    }

    void "test get"() {
        setupData()

        expect:
        inscripcionService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Inscripcion> inscripcionList = inscripcionService.list(max: 2, offset: 2)

        then:
        inscripcionList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        inscripcionService.count() == 5
    }

    void "test delete"() {
        Long inscripcionId = setupData()

        expect:
        inscripcionService.count() == 5

        when:
        inscripcionService.delete(inscripcionId)
        sessionFactory.currentSession.flush()

        then:
        inscripcionService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Inscripcion inscripcion = new Inscripcion()
        inscripcionService.save(inscripcion)

        then:
        inscripcion.id != null
    }
}
