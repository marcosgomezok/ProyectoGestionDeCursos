package cursos

class AspiranteController {
    def aspiranteService
    def cursoService

    def inicio() {
      [listado: cursoService.listadoCursos()]
    }

    def alta() {
      [aspirante: new Aspirante()]
    }

    def save() {
      aspiranteService.altaAspirante(params)
      redirect(controller:"Usuario",action:"inicio")
    }

    def inscripcion(){
      if(params.id==null){   
        redirect(controller:"Aspirante",action:"inicio")
      }
      else{
        def curso = Curso.get(params.id)
        def asp = Aspirante.get(session.user.id)
        def inscriptos = Inscripcion.findAllByCursoAndAsp(curso,asp)
        if(inscriptos.size() == 0){
          render(view: "inscripcion", model: [curso: curso])
        }
        else{
        render(view: "inscripcion")
        }
      }
    }

    def cupon() {
    if(params.id==null){   
      redirect(controller:"Aspirante",action:"inicio")
      }
    else{
      def curso = Curso.get(params.id)
      def aspirante = Aspirante.get(session.user.id)
      def inscriptos = Inscripcion.findAllByCursoAndTipoInscrip(curso,"Inscripto")
      def certifi = new Certificado(tipoCertif: null)
      def inscrip
      if(curso.cupo_maximo>inscriptos.size()){
        inscrip = new Inscripcion(tipoInscrip: "Inscripto", pago: "Pendiente", certif: certifi, curso: curso, asp: aspirante).save(flush: true)
        }
      else{
        inscrip = new Inscripcion(tipoInscrip: "Postulante", pago: "Pendiente", certif: certifi, curso: curso, asp: aspirante).save(flush: true)
      }
        aspirante.addToIns(inscrip)
        curso.addToIns(inscrip)
        curso.save(flush: true)
        aspirante.save(flush: true)
        render(view: "cupon", model: [cupon:  Inscripcion.get(inscrip.id)])
    }
    } 

    def miscursos(){
      def asp = Aspirante.get(session.user.id)
      def miscursos = Inscripcion.findAllByAsp(asp)
      render(view: "miscursos", model: [miscursos:  miscursos])
    }

    def miscertificados(){
      def miscertif = Inscripcion.withCriteria() {           
        asp {
            eq("id", session.user.id)
        }
        certif{
          isNotNull("tipoCertif")
        }
        }
      render(view: "miscertificados", model: [miscertif:  miscertif])
    }   
}