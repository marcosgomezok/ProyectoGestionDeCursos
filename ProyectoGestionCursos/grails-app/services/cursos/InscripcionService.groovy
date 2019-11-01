package cursos

import grails.gorm.transactions.Transactional

@Transactional
class InscripcionService {

  List inscripciones(){
    return Inscripcion.getAll()
  }
  Inscripcion inscripcionxId(Map params){
    return Inscripcion.get(params.id)
  }

  Inscripcion modifyPago(Map params){
    def ins = Inscripcion.get(params.id)
    ins.cupon.pago = 'Realizado'
    ins.cupon.formaPago = params.formaPago
    ins.cupon.fechaPago = new Date()
    ins.save(flush:true)
    return ins
  }

  Inscripcion modifyCertif(Map params){
    def ins = Inscripcion.get(params.id)
    ins.certif.tipoCertif = params.tipoCertif
    ins.save(flush:true)
    return ins
  }

  List pago(){
    return Inscripcion.withCriteria() {           
      cupon{
        eq("pago", "Realizado")
      }    
    }
  }

  List noPago(){
    return Inscripcion.withCriteria() {           
      cupon{
        eq("pago", "Pendiente")
      }       
    }
  }

  List inscripcionesxCurso(Curso curso){
    return Inscripcion.findAllByCurso(curso)   
  }
   
   List verificarInscripcion(Curso curso, Long id){
    def asp = Aspirante.get(id)
    return Inscripcion.findAllByCursoAndAsp(curso,asp)
   }

   Inscripcion altaInscripcion(Map params, Long id){
      def curso = Curso.get(params.id)
      def aspirante = Aspirante.get(id)
      def inscriptos = Inscripcion.findAllByCursoAndTipoInscrip(curso,"Inscripto")
      def certifi = new Certificado(tipoCertif: null)
      def cuponp = new CuponPago(pago:"Pendiente")
      def inscrip
      if(curso.cupo_maximo>inscriptos.size()){
        inscrip = new Inscripcion(tipoInscrip: "Inscripto", cupon: cuponp, certif: certifi, curso: curso, asp: aspirante).save(flush: true)
        }
      else{
        inscrip = new Inscripcion(tipoInscrip: "Postulante", cupon: cuponp, certif: certifi, curso: curso, asp: aspirante).save(flush: true)
      }
      return inscrip
   }

   List inscripcionespCertificados(){
     return Inscripcion.withCriteria() {     
       /*
      curso{
        le("fecha_hasta", new Date())
      }  */       
    }
   }

   void bajaInscripcion(Map params){
     Inscripcion.get(params.id).delete(flush: true)
   }
}