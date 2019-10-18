package cursos

class AspiranteController {
    def aspiranteService

    def inicio() {
      [listado: aspiranteService.listadoCursos()]
    }

    def alta() {
      [aspirante: new Aspirante()]
    }

    def save() {
      aspiranteService.altaAspirante(params)
      redirect(controller:"Usuario",action:"inicio")
    }

    def inscripcion(){
      def curso = Curso.get(params.id)
      def inscriptos = Inscripcion.withCriteria() {
        cursos {
            eq("id", curso.id)
        }
        asp {
            eq("id", session.user.id)
        }
        }
        if(inscriptos.size() == 0){
          render(view: "inscripcion", model: [curso: curso])
        }
        else{
          render(view: "inscripcion")
        }
    }

    def cuponPago() {
        def curso = Curso.get(params.id)
        def aspirante = Aspirante.get(session.user.id)
        def inscriptos = Inscripcion.withCriteria() {
            eq("tipoInscrip", "Inscripto")
        cursos {
            eq("id", curso.id)
        }
        }
        def inscrip
        if(curso.cupo_maximo>inscriptos.size()){
            def certifi = new Certificado(tipoCertif: null)
            inscrip = new Inscripcion(tipoInscrip: "Inscripto", pago: "Pendiente", certif: certifi)
            aspirante.addToIns(inscrip)
            curso.addToIns(inscrip)
            curso.save(flush: true)
            aspirante.save(flush: true)
            render(view: "cuponPago", model: [cupon:  Inscripcion.get(inscrip.id)])

        }
        else{
            def certifi = new Certificado(tipoCertif: null)
            inscrip = new Inscripcion(tipoInscrip: "Postulante", pago: "Pendiente", certif: certifi)
            aspirante.addToIns(inscrip)
            curso.addToIns(inscrip)
            curso.save(flush: true)
            aspirante.save(flush: true)
             render(view: "postulante", model: [cupon:  Inscripcion.get(inscrip.id)])
        }
    } 

    def miscursos(){
      def miscursos = Inscripcion.withCriteria() {           
        asp {
            eq("id", session.user.id)
        }
        }
      render(view: "miscursos", model: [miscursos:  miscursos,cursos: Curso.getAll()])
    }

    def certificados(){
      def miscertif = []
      def miscursos = Inscripcion.withCriteria() {           
        asp {
            eq("id", session.user.id)
        }
        }
      miscursos.each{
        if(it.certif.tipoCertif!=null){
          miscertif.push(it)
        }
      }
      render(view: "miscertificados", model: [miscertif:  miscertif,cursos: Curso.getAll()])




    }   
}