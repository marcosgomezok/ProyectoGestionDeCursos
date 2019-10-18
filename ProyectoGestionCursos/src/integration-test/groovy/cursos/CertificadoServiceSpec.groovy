package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CertificadoServiceSpec extends Specification {

    CertificadoService certificadoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Certificado(...).save(flush: true, failOnError: true)
        //new Certificado(...).save(flush: true, failOnError: true)
        //Certificado certificado = new Certificado(...).save(flush: true, failOnError: true)
        //new Certificado(...).save(flush: true, failOnError: true)
        //new Certificado(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //certificado.id
    }

    void "test get"() {
        setupData()

        expect:
        certificadoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Certificado> certificadoList = certificadoService.list(max: 2, offset: 2)

        then:
        certificadoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        certificadoService.count() == 5
    }

    void "test delete"() {
        Long certificadoId = setupData()

        expect:
        certificadoService.count() == 5

        when:
        certificadoService.delete(certificadoId)
        sessionFactory.currentSession.flush()

        then:
        certificadoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Certificado certificado = new Certificado()
        certificadoService.save(certificado)

        then:
        certificado.id != null
    }
}
