package cursos

class EstadisticasController {
    def inscripcionService
    def cursoService

    def inicio(){  
        render(view:"inicio")
    }
    def inscriptosxCurso() {
        def cursos = cursoService.listadoCursos()
        def curso = cursoService.cursoxId(params)
        def inscripciones = inscripcionService.inscripcionesxCurso(curso)
        render(view:"inscriptosxCurso", model: [inscripciones: inscripciones, curso: curso, cursos: cursos])
    }
    def pagoInscriptos() { 
        [inscripciones: inscripcionService.pago()]
    }
    def nopagoInscriptos() {       
        [inscripciones: inscripcionService.noPago()] 
    }
    def cursosxFecha() {
        if(params.fecha_desde==null&&params.fecha_hasta==null){   
            render(view:"cursosxFecha")
        }
        else{
            [cursos: cursoService.cursosxFechas(params)]
        }  
    }
}