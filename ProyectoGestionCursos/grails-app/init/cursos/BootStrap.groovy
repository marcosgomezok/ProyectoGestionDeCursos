package cursos

class BootStrap {

    def init = { servletContext ->

    def adm = new Administrador(dni:40598544,apellido:"Gomez",nombre:"Marcos",usuario:"admin",password:123456).save(flush: true)
    /*
    def aspirante1 = new Aspirante(dni:40598544,apellido:"Gomez",nombre:"Marcos",email:"marcos_go2015@hotmail.com",categoria:"Alumno",usuario:"marcosjaviergo",password:123).save(flush: true)
    def exp = new Expositores(dni:045,apellido:"expGomez",nombre:"Marcos").save(flush: true)
    def exp2 = new Expositores(dni:0555,apellido:"expGomez",nombre:"Marco").save(flush: true)
    def exp3 = new Expositores(dni:0554,apellido:"expGomez",nombre:"Mars").save(flush: true)
    def fechaD = new Date().parse('yyyy/MM/dd', '2019/12/08')//mañana
    def fechaH = new Date().parse('yyyy/MM/dd', '2019/12/09')//pasado mañan
    def fechaL = new Date().parse('yyyy/MM/dd', '2019/12/07')//hoy
    def fechaC = new Date().parse('yyyy/MM/dd', '2019/12/10')//pasado pasado mañana
    def curso1 = new Curso(nombre:"Curso de Python",fecha_desde:fechaD,fecha_hasta:fechaH,cantidad_horas:10,lugar:"UNCA",horarios:"10:00hs",fecha_lim_inscrip:fechaL,fechadel_certificado:fechaC,cupo_minimo:1,cupo_maximo:3,costo:500).save(flush: true)
    def curso2 = new Curso(nombre:"Curso de PHP",fecha_desde:fechaD,fecha_hasta:fechaH,cantidad_horas:10,lugar:"UNCA",horarios:"10:00hs",fecha_lim_inscrip:fechaL,fechadel_certificado:fechaC,cupo_minimo:1,cupo_maximo:5,costo:500).save(flush: true)*/
    }
    def destroy = {
    }
}