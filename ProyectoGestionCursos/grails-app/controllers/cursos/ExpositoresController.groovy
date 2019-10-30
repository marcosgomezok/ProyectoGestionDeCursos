package cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ExpositoresController {

    def expositoresService
    def cursoService

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
      def expositor = expositoresService.expositorxId(params)
      def listado= expositoresService.listadoCursos()
      [expositor:expositor, listado:listado]
    }

    def quitarCurso(){
      def expositor = expositoresService.expositorxId(params)
      [expositor:expositor]
    }

    def confirmarQuitar(){
      expositoresService.quitarCurso(params)
      redirect(controller:"expositores",action:"listadoExpositores")
    }

    def guardarCursoExpositor(){
      expositoresService.guardarExpositor(params)
      redirect(controller:"expositores",action:"listadoExpositores")
    }

    def modificar(){
      [expositores: expositoresService.listadoExpositores()]
    }

    def modificarDatosExp(){
      def expositor = expositoresService.expositorxId(params)
      [expositor:expositor]
    }

    def guardarDatosModif(){
      expositoresService.modificarExpositor(params)
      render(controller:"Expositores",view:"inicio")
    }

    def baja(){
      [expositores: expositoresService.listadoExpositores()]
    }

    def eliminarExpositor(){
      def expositor = expositoresService.expositorxId(params)
      [expositor:expositor]
    }

    def confirmarEliminar(){
      expositoresService.eliminarExpositor(params)
      render(controller:"Expositores",view:"inicio")
    }
    
}
