package cursos

class InscripcionController {
     def inscripcionService

    def listadoInscriptos(){    
      def aspirante= Aspirante.getAll()
      //[aspirante: inscripcionService.listadoInscriptosS()]
      def inscriptos= Inscripcion.getAll()
      [aspirante: aspirante, inscriptos: inscriptos]
      }

    def modificarCondicion(){
        [inscriptos: Inscripcion.get(params.id)]
    }

    def guardarCondicionInscripto(){
        def c= Inscripcion.get(params.id)
        c.tipoInscrip=params.tipoInscrip
        c.pago= params.pago;
        c.save(flush:true)
        render(controller:"inscripcion",view:"listadoInscriptos")
    }

    //certificados:

    def listadoAlumnos(){
        //Date fecha = new Date();
        def alumnos= Inscripcion.findAllByTipoInscrip("Inscripto")
        //def fechacurso= Curso.findAllByFecha_hasta("fecha")
       // def alumnosp= Inscripcion.findAllByPago("Realizado")
            //[alumnos: alumnos, fechacurso]
            [alumnos: alumnos]
    
    }

    def generarCertificado(){
        [alumno: Inscripcion.get(params.id)]
    }

    def guardarCertificado(){

      def inscripcion= Inscripcion.get(params.id)
      def certificado= new Certificado(params)
      certificado.save(flush:true)
      inscripcion.certif= params.certif
      inscripcion.save(flush:true)
      [inscripcion: Inscripcion.get(params.id)]
      [certificado: Certificado.get(params.id)]
      [certificado:certificado, inscripcion:inscripcion]
    }
    
}

