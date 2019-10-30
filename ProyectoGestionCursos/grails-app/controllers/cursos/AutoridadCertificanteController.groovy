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
      autoridadCertificanteService.altaAutoridadCertificante(params)
      redirect(controller:"autoridadCertificante",action:"listadoAutoridad")
    }

    def listadoAutoridad(){
      [autoridades: autoridadCertificanteService.listadoAutoridades()]
    }

    def verImagen () {
      def img = autoridadCertificanteService.autoridadxId(params)
      byte[] imagen = img.firma
      response.setHeader('Content-length', imagen.length.toString())
      response.contentType = 'image/png'
      response.outputStream << imagen
      response.outputStream.flush()
    }

    def asignarCurso(){
      def autoridad = autoridadCertificanteService.autoridadxId(params)
      def listado= autoridadCertificanteService.listadoCursos()
      [autoridad:autoridad, listado:listado]
    }

    def guardarCursoAutoridad(){
      autoridadCertificanteService.guardarAutoridad(params)
      redirect(controller:"autoridadCertificante",action:"listadoAutoridad")
    }

    def quitarCurso(){
      def autoridad= autoridadCertificanteService.autoridadxId(params)
      [autoridad:autoridad]
    }

    def confirmarQuitar(){
      autoridadCertificanteService.quitarCurso(params)
      redirect(controller:"autoridadCertificante",action:"listadoAutoridad")
    }

    def modificar(){
      [autoridades: autoridadCertificanteService.listadoAutoridades()]
    }

    def modificarDatosAut(){
      def autoridad = autoridadCertificanteService.autoridadxId(params)
      [autoridad:autoridad]
    }

    def guardarDatosModif(){
      autoridadCertificanteService.modificarAutoridad(params)
      render(controller:"AutoridadCertificante",view:"inicio")
    }

    def baja(){
      [autoridades: autoridadCertificanteService.listadoAutoridades()]
    }

    def eliminarAutoridad(){
      def autoridad = autoridadCertificanteService.autoridadxId(params)
      [autoridad:autoridad]
    }

    def confirmarEliminar(){
      autoridadCertificanteService.eliminarAutoridad(params)
      render(controller:"AutoridadCertificante",view:"inicio")
    }
    
    
}