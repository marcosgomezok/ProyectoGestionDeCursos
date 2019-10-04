package cursos

class Curso {
    String nombre
    Date fechaDesde
    Date fechaHasta
    int cantidadHoras
    String lugar
    String horarios
    Date fechaLimInscrip
    Date fechadelCertificado
    int cupoMinimo
    int cupoMaximo
    static hasMany =[aut: AutoridadCertificante, exp: Expositores, asp: Aspirante]
    static belongsTo = [aut: AutoridadCertificante, exp: Expositores, asp: Aspirante]

    static constraints = {
        nombre(blank: false, maxSize:100)
        fechaDesde(nullable: false,  validator: { val, Curso obj ->
        def date = new Date()
        if (val< date) {return ["Fecha Desde Invalida"]}
        })
        fechaHasta( validator: { val, Curso obj ->
        if (val< obj.fechaDesde) {return ["Fecha Hasta debe ser mayor a Fecha Desde"]}
        })
        cantidadHoras(max: 999, min: 1)
        lugar(blank: false, maxSize: 100)
        horarios(blank: false, maxSize: 100)
        fechaLimInscrip(validator: { val, Curso obj ->
        if (val> obj.fechaDesde) {return ["Fecha limite de inscripcion no puede ser posterior a Fecha Desde"]}
        })
        fechadelCertificado(validator: { val, Curso obj ->
        if (val< obj.fechaHasta) {return ["Fecha del certificado no puede ser anterior a Fecha Hasta"]}
        })
        cupoMinimo(max: 9999999)//
        cupoMaximo(max: 99999999,validator: { val, Curso obj ->
        if (val< obj.cupoMinimo) {return ["Cupo Maximo no puede ser menor a Cupo Minimo"]}
        })
    }
}
