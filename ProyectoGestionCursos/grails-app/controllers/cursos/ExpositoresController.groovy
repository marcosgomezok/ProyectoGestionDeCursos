package cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExpositoresController {

    def expositoresService

    def inicio(){
      render(view:"inicio")
    }
    
    def altaExpositor(){
      [expositores: new Expositores()]
    }

    def guardarExpositor(){
      expositoresService.altaExpositor(params)
      redirect(controller:"expositores",action:"listadoExpositores")
    }

    def listadoExpositores(){
      [expositores: expositoresService.listadoExpositores()]
    }
    
    def asignarCurso(){
      def expositor= Expositores.get(params.id)
      def listado= expositoresService.listadoCursos()
      [expositor:expositor, listado:listado]
    }

    def quitarCurso(){
      def expositor= Expositores.get(params.id)
      [expositor:expositor]
    }

    def confirmarQuitar(){
      def curso = Curso.get(params.id)
      def expositor= Expositores.get(params.id_exp)
      curso.removeFromExp(expositor)
      expositor.save(flush:true)
      redirect(controller:"expositores",action:"listadoExpositores")
    }

    def guardarCursoExpositor(){
      def curso = Curso.get(params.id)
      def expositor = Expositores.get(params.id_exp)
      expositor.addToCursos(curso)
      curso.addToExp(expositor)
      curso.save(flush: true)
      expositor.save(flush:true)
      redirect(controller:"expositores",action:"listadoExpositores")
    }

    def save() { 
      def curso = Curso.get(params.id)
      def expositor = new Expositores(params)
      expositor.addToCursos(curso)
      curso.addToExp(expositor)
      curso.save(flush: true)
      expositor.save(flush:true)
      [curso: Curso.get(params.id)]
      [expositor: Expositores.get(params.id)]
      [expositor:expositor]
    }
    
    def aniadirExpositor(){
      [expositores: new Expositores()]
      [curso: Curso.get(params.id)]
      
    }
    
}
