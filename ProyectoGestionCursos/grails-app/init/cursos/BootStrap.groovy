package cursos

class BootStrap {

    def init = { servletContext ->

    def adm = new Administrador(dni:40598545,apellido:"Gomez",nombre:"Marcos",usuario:"admin",password:123).save(flush: true)
    def aut = new AutoridadCertificante(dni:4045,apellido:"autGomez",nombre:"Marcos", cargo:'Decano').save(flush: true)
    def aut2 = new AutoridadCertificante(dni:40555,apellido:"autGomez",nombre:"Marco", cargo:'Decano').save(flush: true)
    def aut3 = new AutoridadCertificante(dni:40554,apellido:"autGomez",nombre:"Mars", cargo:'Decano').save(flush: true)
    def exp = new Expositores(dni:045,apellido:"expGomez",nombre:"Marcos").save(flush: true)
    def exp2 = new Expositores(dni:0555,apellido:"expGomez",nombre:"Marco").save(flush: true)
    def exp3 = new Expositores(dni:0554,apellido:"expGomez",nombre:"Mars").save(flush: true)
    def fechaD = new Date().parse('yyyy/MM/dd', '2019/12/08')//mañana
    def fechaH = new Date().parse('yyyy/MM/dd', '2019/12/09')//pasado mañan
    def fechaL = new Date().parse('yyyy/MM/dd', '2019/12/07')//hoy
    def fechaC = new Date().parse('yyyy/MM/dd', '2019/12/10')//pasado pasado mañana
    def curso1 = new Curso(nombre:"Curso de Python",fecha_desde:fechaD,fecha_hasta:fechaH,cantidad_horas:10,lugar:"UNCA",horarios:"10:00hs",fecha_lim_inscrip:fechaL,fechadel_certificado:fechaC,cupo_minimo:1,cupo_maximo:3,costo:500)
    def curso2 = new Curso(nombre:"Curso de PHP",fecha_desde:fechaD,fecha_hasta:fechaH,cantidad_horas:10,lugar:"UNCA",horarios:"10:00hs",fecha_lim_inscrip:fechaL,fechadel_certificado:fechaC,cupo_minimo:1,cupo_maximo:5,costo:500)
    curso1.save(flush: true)
    curso2.save(flush: true)

    def aspirante1 = new Aspirante(dni:40598544,apellido:"Gomez",nombre:"Marcos",email:"marcos_go2015@hotmail.com",categoria:"Alumno",usuario:"marcosjaviergo",password:123)
    def certifi = new Certificado(tipoCertif: "Asistencia")
    def cuponp = new CuponPago(fechaPago: fechaD, pago:"Pendiente")
    def inscrip = new Inscripcion(tipoInscrip:"Inscripto", cupon: cuponp ,certif: certifi, curso: curso2, asp: aspirante1).save(flush:true)
    if(!aspirante1.save(flush: true)){
    aspirante1.errors.allErrors.each
        println it}

        cuponp.save(flush: true)
        certifi.save(flush: true)
        curso2.save(flush: true)
        aspirante1.save(flush: true)
    }
    def destroy = {
    }
}