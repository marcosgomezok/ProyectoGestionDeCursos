package cursos

class BootStrap {

    def init = { servletContext ->
    //4)a)
    def aspirante1 = new Aspirante(dni:40598544,apellido:"Gomez",nombre:"Marcos",email:"marcos_go2015@hotmail.com",categoria:"Alumno")
    if(!aspirante1.save(flush: true)){
    aspirante1.errors.allErrors.each
        println it}
    def lista = Aspirante.list(order:"asc")
    lista.each{println "DNI: ${it.dni} Apellido: ${it.apellido} Nombre: ${it.nombre}"}
    //instancia con algún atributo incorrecto(dni) 
    /*
    def aspirante2 = new Aspirante(dni:40598544,apellido:"Gonzales",nombre:"Celeste",email:"CelesteGonzales@hotmail.com",categoria:"Alumno").save()
    if(!aspirante2.save()){
    aspirante2.errors.allErrors.each
        println it}
    */ 
    
    //4)b)   
    def fechaD = new Date().parse('yyyy/MM/dd', '2019/09/30')
    def fechaH = new Date().parse('yyyy/MM/dd', '2019/09/31')
    def fechaL = new Date().parse('yyyy/MM/dd', '2019/09/29')
    def fechaC = new Date().parse('yyyy/MM/dd', '2019/10/01')
    def curso1 = new Curso(nombre:"Curso de Python",fechaDesde:fechaD,fechaHasta:fechaH,cantidadHoras:10,lugar:"UNCA",horarios:"10:00hs",fechaLimInscrip:fechaL,fechadelCertificado:fechaC,cupoMinimo:10,cupoMaximo:20)
    curso1.addToAsp(aspirante1)
    curso1.save(flush: true)
    curso1.each {println "DNI: ${it.asp.dni} Apellido: ${it.asp.apellido} Nombre: ${it.asp.nombre}\n"}//imprime por consola un listado de los aspirantes por un curso determinado(curso1)

    //4)c)
    def periodoA = new Date().parse('yyyy/MM/dd', '2019/09/29')
    def periodoB = new Date().parse('yyyy/MM/dd', '2019/09/31')
    def consulta = Curso.findAllByFechaDesdeBetween(periodoA, periodoB)
    consulta.each{println "Nombre: ${it.nombre}\n"}//imprime por consola una colección de Cursos a desarrollar en un periodo determinado.
    }
    def destroy = {
    }
}
