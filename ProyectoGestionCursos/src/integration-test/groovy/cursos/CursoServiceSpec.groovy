package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class CursoServiceSpec extends Specification {

    CursoService cursoService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Curso(...).save(flush: true, failOnError: true)
        //new Curso(...).save(flush: true, failOnError: true)
        //Curso curso = new Curso(...).save(flush: true, failOnError: true)
        //new Curso(...).save(flush: true, failOnError: true)
        //new Curso(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //curso.id
    }

    void "test get"() {
        setupData()

        expect:
        cursoService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Curso> cursoList = cursoService.list(max: 2, offset: 2)

        then:
        cursoList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        cursoService.count() == 5
    }

    void "test delete"() {
        Long cursoId = setupData()

        expect:
        cursoService.count() == 5

        when:
        cursoService.delete(cursoId)
        sessionFactory.currentSession.flush()

        then:
        cursoService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Curso curso = new Curso()
        cursoService.save(curso)

        then:
        curso.id != null
    }
}
