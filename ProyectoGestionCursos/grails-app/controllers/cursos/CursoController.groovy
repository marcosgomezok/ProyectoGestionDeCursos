package cursos
import grails.rest.RestfulController

class CursoController extends RestfulController<Curso>{
  static responseFormats = ['json', 'xml']
    def cursoService
    def autoridadCertificanteService
    def expositoresService
    def inscripcionService

    CursoController() {
      super(Curso)
    }

    def inicio(){
      render(view:"inicio")
    }

    def alta() {   
      def expositores = expositoresService.listadoExpositores()
      def autoridades = autoridadCertificanteService.listadoAutoridades() 
      render(view: "alta", model: [curso: new Curso(), expositores: expositores, autoridades: autoridades])
    }

    def save() {
      if(params==null){   
        redirect(controller:"Administrador",action:"inicio")
      }
      else{
      cursoService.altaCurso(params)
      redirect(controller:"Administrador",action:"inicio")
      }
    }

    def listadoCursos(){
      [cursos: cursoService.listadoCursos()]
    }
    
    def baja(){
      [cursos: cursoService.listadoCursos()]
    }

    def muestraCursoEliminar(){
      def curso = cursoService.cursoxId(params)
      def inscripciones = inscripcionService.inscripcionesxCurso(curso)
      [curso:curso, inscripciones: inscripciones]
    }

    def confirmarBaja(){
      cursoService.bajaCurso(params)
      render(controller:"Administrador",view:"inicio")
    }
    
    def modificar(){
      [cursos: cursoService.listadoCursos()]
    }

    def seleccionarModify(){
      def curso = cursoService.cursoxId(params)
      def expositores = expositoresService.listadoExpositoresSincurso(curso)
      def autoridades = autoridadCertificanteService.listadoAutoridadesSincurso(curso) 
      [curso: curso, expositores: expositores, autoridades: autoridades]
    }

    def confirmarModify(){
      cursoService.modifyCurso(params)
      render(controller:"Administrador",view:"inicio")
    }

    def listadoCursosJSON(){
      respond cursoService.listadoCursos()
    }
}

