package cursos

import grails.testing.mixin.integration.Integration
import grails.gorm.transactions.Rollback
import spock.lang.Specification
import org.hibernate.SessionFactory

@Integration
@Rollback
class IndexServiceSpec extends Specification {

    IndexService indexService
    SessionFactory sessionFactory

    private Long setupData() {
        // TODO: Populate valid domain instances and return a valid ID
        //new Index(...).save(flush: true, failOnError: true)
        //new Index(...).save(flush: true, failOnError: true)
        //Index index = new Index(...).save(flush: true, failOnError: true)
        //new Index(...).save(flush: true, failOnError: true)
        //new Index(...).save(flush: true, failOnError: true)
        assert false, "TODO: Provide a setupData() implementation for this generated test suite"
        //index.id
    }

    void "test get"() {
        setupData()

        expect:
        indexService.get(1) != null
    }

    void "test list"() {
        setupData()

        when:
        List<Index> indexList = indexService.list(max: 2, offset: 2)

        then:
        indexList.size() == 2
        assert false, "TODO: Verify the correct instances are returned"
    }

    void "test count"() {
        setupData()

        expect:
        indexService.count() == 5
    }

    void "test delete"() {
        Long indexId = setupData()

        expect:
        indexService.count() == 5

        when:
        indexService.delete(indexId)
        sessionFactory.currentSession.flush()

        then:
        indexService.count() == 4
    }

    void "test save"() {
        when:
        assert false, "TODO: Provide a valid instance to save"
        Index index = new Index()
        indexService.save(index)

        then:
        index.id != null
    }
}
