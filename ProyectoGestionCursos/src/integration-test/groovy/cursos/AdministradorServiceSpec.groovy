package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AdministradorServiceSpec extends Specification {

    AdministradorService administradorService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Administrador(...).save(flush: true, failOnError: true)
        //new Administrador(...).save(flush: true, failOnError: true)
        //Administrador administrador = new Administrador(...).save(flush: true, failOnError: true)
        //new Administrador(...).save(flush: true, failOnError: true)
        //new Administrador(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //administrador.id
    }

    void "test get"() {
        setupData()

        expect:
        administradorService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Administrador> administradorList = administradorService.list(max: 2, offset: 2)

        then:
        administradorList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        administradorService.count() == 5
    }

    void "test delete"() {
        Long administradorId = setupData()

        expect:
        administradorService.count() == 5

        when:
        administradorService.delete(administradorId)
        sessionFactory.currentSession.flush()

        then:
        administradorService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Administrador administrador = new Administrador()
        administradorService.save(administrador)

        then:
        administrador.id != null
    }
}
