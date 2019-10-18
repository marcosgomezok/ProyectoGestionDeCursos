package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class ExpositoresServiceSpec extends Specification {

    ExpositoresService expositoresService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Expositores(...).save(flush: true, failOnError: true)
        //new Expositores(...).save(flush: true, failOnError: true)
        //Expositores expositores = new Expositores(...).save(flush: true, failOnError: true)
        //new Expositores(...).save(flush: true, failOnError: true)
        //new Expositores(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //expositores.id
    }

    void "test get"() {
        setupData()

        expect:
        expositoresService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Expositores> expositoresList = expositoresService.list(max: 2, offset: 2)

        then:
        expositoresList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        expositoresService.count() == 5
    }

    void "test delete"() {
        Long expositoresId = setupData()

        expect:
        expositoresService.count() == 5

        when:
        expositoresService.delete(expositoresId)
        sessionFactory.currentSession.flush()

        then:
        expositoresService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Expositores expositores = new Expositores()
        expositoresService.save(expositores)

        then:
        expositores.id != null
    }
}
