package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AspiranteServiceSpec extends Specification {

    AspiranteService aspiranteService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Aspirante(...).save(flush: true, failOnError: true)
        //new Aspirante(...).save(flush: true, failOnError: true)
        //Aspirante aspirante = new Aspirante(...).save(flush: true, failOnError: true)
        //new Aspirante(...).save(flush: true, failOnError: true)
        //new Aspirante(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //aspirante.id
    }

    void "test get"() {
        setupData()

        expect:
        aspiranteService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Aspirante> aspiranteList = aspiranteService.list(max: 2, offset: 2)

        then:
        aspiranteList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        aspiranteService.count() == 5
    }

    void "test delete"() {
        Long aspiranteId = setupData()

        expect:
        aspiranteService.count() == 5

        when:
        aspiranteService.delete(aspiranteId)
        sessionFactory.currentSession.flush()

        then:
        aspiranteService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Aspirante aspirante = new Aspirante()
        aspiranteService.save(aspirante)

        then:
        aspirante.id != null
    }
}
