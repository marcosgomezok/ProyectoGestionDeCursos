package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AutoridadCertificanteServiceSpec extends Specification {

    AutoridadCertificanteService autoridadCertificanteService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new AutoridadCertificante(...).save(flush: true, failOnError: true)
        //new AutoridadCertificante(...).save(flush: true, failOnError: true)
        //AutoridadCertificante autoridadCertificante = new AutoridadCertificante(...).save(flush: true, failOnError: true)
        //new AutoridadCertificante(...).save(flush: true, failOnError: true)
        //new AutoridadCertificante(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //autoridadCertificante.id
    }

    void "test get"() {
        setupData()

        expect:
        autoridadCertificanteService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<AutoridadCertificante> autoridadCertificanteList = autoridadCertificanteService.list(max: 2, offset: 2)

        then:
        autoridadCertificanteList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        autoridadCertificanteService.count() == 5
    }

    void "test delete"() {
        Long autoridadCertificanteId = setupData()

        expect:
        autoridadCertificanteService.count() == 5

        when:
        autoridadCertificanteService.delete(autoridadCertificanteId)
        sessionFactory.currentSession.flush()

        then:
        autoridadCertificanteService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        AutoridadCertificante autoridadCertificante = new AutoridadCertificante()
        autoridadCertificanteService.save(autoridadCertificante)

        then:
        autoridadCertificante.id != null
    }
}
