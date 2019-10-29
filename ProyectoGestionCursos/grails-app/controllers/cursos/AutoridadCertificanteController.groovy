package cursos

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class AutoridadCertificanteController {

    def autoridadCertificanteService

    def inicio(){
      render(view:"inicio")
    }
    
    def altaAutoridadCertificante(){
      [autoridadCertificante: new AutoridadCertificante()]
    }
    
    def guardarAutoridad(){
      byte[] file = params.firma
      def img = new AutoridadCertificante(apellido: params.apellido, nombre:params.nombre, dni: params.dni, firma:file, cargo: params.cargo)
      img.save(flush:true)
      if (img.hasErrors()) {
            img.errors.allErrors.each {
                println it
            }
        }
      redirect(controller:"autoridadCertificante",action:"listadoAutoridad")
    }

    def listadoAutoridad(){
      [autoridades: autoridadCertificanteService.listadoAutoridades()]
    }

    def verImagen () {
      def img = AutoridadCertificante.get(params.id)
      response.outputStream << img
      response.outputStream.flush()
    }

    def asignarCurso(){
      def autoridad= AutoridadCertificante.get(params.id)
      def listado= autoridadCertificanteService.listadoCursos()
      [autoridad:autoridad, listado:listado]
    }

    def guardarCursoAutoridad(){
      def curso = Curso.get(params.id)
      def autoridad = AutoridadCertificante.get(params.id_aut)
      autoridad.addToCursos(curso)
      autoridad.save(flush:true)
      curso.addToAut(autoridad)
      curso.save(flush: true)
      
      redirect(controller:"autoridadCertificante",action:"listadoAutoridad")
    }

    def quitarCurso(){
      def autoridad= AutoridadCertificante.get(params.id)
      [autoridad:autoridad]
    }

    def confirmarQuitar(){
      def curso = Curso.get(params.id)
      def autoridad= AutoridadCertificante.get(params.id_exp)
      curso.removeFromAut(autoridad)
      autoridad.save(flush:true)
      redirect(controller:"autoridadCertificante",action:"listadoAutoridad")
    }
    
}