package cursos

class BootStrap {

    def init = { servletContext ->

    def adm = new Administrador(dni:40598545,apellido:"Gomez",nombre:"Marcos",email:"marcos2_go2015@hotmail.com",usuario:"admin",password:123).save(flush: true)
    def fechaD = new Date().parse('yyyy/MM/dd', '2019/12/08')//mañana
    def fechaH = new Date().parse('yyyy/MM/dd', '2019/12/09')//pasado mañan
    def fechaL = new Date().parse('yyyy/MM/dd', '2019/12/07')//hoy
    def fechaC = new Date().parse('yyyy/MM/dd', '2019/12/10')//pasado pasado mañana
    def curso1 = new Curso(nombre:"Curso de Python",fecha_desde:fechaD,fecha_hasta:fechaH,cantidad_horas:10,lugar:"UNCA",horarios:"10:00hs",fecha_lim_inscrip:fechaL,fechadel_certificado:fechaC,cupo_minimo:1,cupo_maximo:3,costo:500,estado:"Activo")
    def curso2 = new Curso(nombre:"Curso de PHP",fecha_desde:fechaD,fecha_hasta:fechaH,cantidad_horas:10,lugar:"UNCA",horarios:"10:00hs",fecha_lim_inscrip:fechaL,fechadel_certificado:fechaC,cupo_minimo:1,cupo_maximo:5,costo:500,estado:"Activo")
    curso1.save(flush: true)
    curso2.save(flush: true)

    def aspirante1 = new Aspirante(dni:40598544,apellido:"Gomez",nombre:"Marcos",email:"marcos_go2015@hotmail.com",categoria:"Alumno",usuario:"marcosjaviergo",password:123)
    def certifi = new Certificado(tipoCertif: "Asistencia")
    def inscrip = new Inscripcion(tipoInscrip:"Inscripto", pago:"Pendiente",certif: certifi, curso: curso2, asp: aspirante1).save(flush:true)
    if(!aspirante1.save(flush: true)){
    aspirante1.errors.allErrors.each
        println it}

        certifi.save(flush: true)
        curso2.save(flush: true)
        aspirante1.save(flush: true)
    }
    def destroy = {
    }
}