package cursos

class CursoController {
    def cursoService

    //muestra los cursos para modificar
    def muestraCursosModificar() {
      [listado: cursoService.listadoCursos()]
      //redirect(controller:"Curso",action:"modificar_curso")
    }
    
    //muestra los datos del curso a modificar
    def modificar_curso(){
      [curso: Curso.get(params.id)]
    }
    
    //guarda datos modificados del curso en la vista modificar_curso
    def guardarCursoModificado(){
      def c= Curso.get(params.id)
      c.nombre = params.nombre
      c.fecha_desde = Date.parse('dd/MM/yyyy', params.fecha_desde)
      c.fecha_hasta = Date.parse('dd/MM/yyyy', params.fecha_hasta)
      c.cantidad_horas = Integer.parseInt(params.cantidad_horas)
      c.lugar = params.lugar
      c.horarios = params.horarios
      c.fecha_lim_inscrip = Date.parse('dd/MM/yyyy', params.fecha_lim_inscrip)
      c.fechadel_certificado = Date.parse('dd/MM/yyyy', params.fechadel_certificado)
      c.cupo_minimo = Integer.parseInt(params.cupo_minimo)
      c.cupo_maximo = Integer.parseInt(params.cupo_maximo)
      c.costo = Integer.parseInt(params.costo)
      c.estado = params.estado
      c.save(flush:true)
      //cursoService.modificar(params.id)
      render(controller:"Curso",view:"muestraCursosModificar")
    }

    //muestra la lista de cursos cargados en la vista curso_cargado
    def curso_cargado() {
      [listado: cursoService.listadoCursos()]
    }

    def alta() {
      [curso: new Curso()]
    }

    def save() {
      //quiza sea este el error
      def curso = new Curso(params)
      cursoService.altaCurso(params)
      //redirect(controller:"Curso",action:"muestraCursoCargado")
      [curso:curso]
      //redirect(controller:"curso",action:"save")
    }
    
    def muestraCursoCargado(){
      def curso = new Curso(params)
      [curso:curso]
    }
    
    //muestra el curso a eliminar
    def muestraCursoEliminar(){
      [curso: Curso.get(params.id)]
    }
    
    //eliminar curso
    def eliminar_curso(){
      def curso = Curso.get(params.id)
      curso.delete(flush:true)
      redirect(controller:"administrador",view:"inicio")
    }

    //prueba agregar expositor
    def create(){
      [curso: Curso.get(params.id)]
    }
    




}

