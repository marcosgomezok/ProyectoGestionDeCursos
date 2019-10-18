package cursos

class Curso {
    String nombre
    Date fecha_desde
    Date fecha_hasta
    int cantidad_horas
    String lugar
    String horarios
    Date fecha_lim_inscrip
    Date fechadel_certificado
    int cupo_minimo
    int cupo_maximo
    int costo
    String estado
    static hasMany =[aut: AutoridadCertificante, exp: Expositores, ins: Inscripcion]
    static belongsTo = [aut: AutoridadCertificante, exp: Expositores, ins: Inscripcion]

    static constraints = {
        nombre(blank: false, maxSize:100)
        fecha_desde(nullable: false,  validator: { val, Curso obj ->
        def date = new Date()
        if (val< date) {return ["Fecha Desde Invalida"]}
        })
        fecha_hasta( validator: { val, Curso obj ->
        if (val< obj.fecha_desde) {return ["Fecha Hasta debe ser mayor a Fecha Desde"]}
        })
        cantidad_horas(max: 999, min: 1)
        lugar(blank: false, maxSize: 100)
        horarios(blank: false, maxSize: 100)
        fecha_lim_inscrip(validator: { val, Curso obj ->
        if (val> obj.fecha_desde) {return ["Fecha limite de inscripcion no puede ser posterior a Fecha Desde"]}
        })
        fechadel_certificado(validator: { val, Curso obj ->
        if (val< obj.fecha_hasta) {return ["Fecha del certificado no puede ser anterior a Fecha Hasta"]}
        })
        cupo_minimo(max: 9999999)
        cupo_maximo(max: 99999999,validator: { val, Curso obj ->
        if (val< obj.cupo_minimo) {return ["Cupo Maximo no puede ser menor a Cupo Minimo"]}
        })
        estado(inList: ['Activo','Finalizado','Proximo'])
    }
}
