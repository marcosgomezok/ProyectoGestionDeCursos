package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class AlumnoServiceSpec extends Specification {

    AlumnoService alumnoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Alumno(...).save(flush: true, failOnError: true)
        //new Alumno(...).save(flush: true, failOnError: true)
        //Alumno alumno = new Alumno(...).save(flush: true, failOnError: true)
        //new Alumno(...).save(flush: true, failOnError: true)
        //new Alumno(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //alumno.id
    }

    void "test get"() {
        setupData()

        expect:
        alumnoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Alumno> alumnoList = alumnoService.list(max: 2, offset: 2)

        then:
        alumnoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        alumnoService.count() == 5
    }

    void "test delete"() {
        Long alumnoId = setupData()

        expect:
        alumnoService.count() == 5

        when:
        alumnoService.delete(alumnoId)
        sessionFactory.currentSession.flush()

        then:
        alumnoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Alumno alumno = new Alumno()
        alumnoService.save(alumno)

        then:
        alumno.id != null
    }
}
