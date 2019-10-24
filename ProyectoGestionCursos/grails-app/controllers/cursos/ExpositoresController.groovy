package cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExpositoresController {

    def expositoresService

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
      [expositor: Expositores.get(params.id)]
      [listado: expositoresService.listadoCursos()]
      [expositor:expositor, listado:listado]
    }

    //añaden expositor al seleccionar un curso
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
      //[curso:curso]
      //redirect(controller:"Curso",action:"curso_cargado")
    }
    
    def aniadirExpositor(){
      [expositores: new Expositores()]
      [curso: Curso.get(params.id)]
      
    }
    
}
