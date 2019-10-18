package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class PagoRealizadoServiceSpec extends Specification {

    PagoRealizadoService pagoRealizadoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new PagoRealizado(...).save(flush: true, failOnError: true)
        //new PagoRealizado(...).save(flush: true, failOnError: true)
        //PagoRealizado pagoRealizado = new PagoRealizado(...).save(flush: true, failOnError: true)
        //new PagoRealizado(...).save(flush: true, failOnError: true)
        //new PagoRealizado(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //pagoRealizado.id
    }

    void "test get"() {
        setupData()

        expect:
        pagoRealizadoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<PagoRealizado> pagoRealizadoList = pagoRealizadoService.list(max: 2, offset: 2)

        then:
        pagoRealizadoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        pagoRealizadoService.count() == 5
    }

    void "test delete"() {
        Long pagoRealizadoId = setupData()

        expect:
        pagoRealizadoService.count() == 5

        when:
        pagoRealizadoService.delete(pagoRealizadoId)
        sessionFactory.currentSession.flush()

        then:
        pagoRealizadoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        PagoRealizado pagoRealizado = new PagoRealizado()
        pagoRealizadoService.save(pagoRealizado)

        then:
        pagoRealizado.id != null
    }
}
