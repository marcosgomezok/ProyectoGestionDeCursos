package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class InteresadoServiceSpec extends Specification {

    InteresadoService interesadoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Interesado(...).save(flush: true, failOnError: true)
        //new Interesado(...).save(flush: true, failOnError: true)
        //Interesado interesado = new Interesado(...).save(flush: true, failOnError: true)
        //new Interesado(...).save(flush: true, failOnError: true)
        //new Interesado(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //interesado.id
    }

    void "test get"() {
        setupData()

        expect:
        interesadoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Interesado> interesadoList = interesadoService.list(max: 2, offset: 2)

        then:
        interesadoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        interesadoService.count() == 5
    }

    void "test delete"() {
        Long interesadoId = setupData()

        expect:
        interesadoService.count() == 5

        when:
        interesadoService.delete(interesadoId)
        sessionFactory.currentSession.flush()

        then:
        interesadoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Interesado interesado = new Interesado()
        interesadoService.save(interesado)

        then:
        interesado.id != null
    }
}
