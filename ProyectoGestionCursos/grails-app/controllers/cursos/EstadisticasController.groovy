package cursos

class EstadisticasController {
    def inscriptosxCurso() {
        def listado = Curso.findAll()
        def curso = Curso.get(params.id)
        def inscripciones = Inscripcion.findAllByCurso(curso)
        render(view:"inscriptosxCurso", model: [inscripciones: inscripciones, curso: curso, listado: listado])
    }
    def pagoInscriptos() {       
        def inscripciones = Inscripcion.findAllByPago(params.pago)
        render(view:"pagoInscriptos", model: [inscripciones: inscripciones]) 
    }
    def cursosxFecha() {
    if(params.fecha_desde==null&&params.fecha_hasta==null){   
        render(view:"cursosxFecha")
    }
    else{
        def fechaD = new Date().parse('yyyy-MM-dd', params.fecha_desde)
        def fechaH = new Date().parse('yyyy-MM-dd', params.fecha_hasta)
        def listado = Curso.withCriteria() {           
        between("fecha_desde", fechaD, fechaH)
        }
        render(view:"cursosxFecha", model: [listado: listado])   
    }  
    }
}