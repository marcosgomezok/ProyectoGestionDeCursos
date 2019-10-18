package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CuponPagoServiceSpec extends Specification {

    CuponPagoService cuponPagoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new CuponPago(...).save(flush: true, failOnError: true)
        //new CuponPago(...).save(flush: true, failOnError: true)
        //CuponPago cuponPago = new CuponPago(...).save(flush: true, failOnError: true)
        //new CuponPago(...).save(flush: true, failOnError: true)
        //new CuponPago(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //cuponPago.id
    }

    void "test get"() {
        setupData()

        expect:
        cuponPagoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<CuponPago> cuponPagoList = cuponPagoService.list(max: 2, offset: 2)

        then:
        cuponPagoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        cuponPagoService.count() == 5
    }

    void "test delete"() {
        Long cuponPagoId = setupData()

        expect:
        cuponPagoService.count() == 5

        when:
        cuponPagoService.delete(cuponPagoId)
        sessionFactory.currentSession.flush()

        then:
        cuponPagoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        CuponPago cuponPago = new CuponPago()
        cuponPagoService.save(cuponPago)

        then:
        cuponPago.id != null
    }
}
