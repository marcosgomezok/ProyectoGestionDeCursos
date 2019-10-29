package cursos

class CuponPago {
    Date fechaPago
    String pago
    String formaPago
    static belongsTo = [ins: Inscripcion]
    
    static constraints = {
        pago(inList: ['Pendiente','Realizado'])
        formaPago(nullable: true, inList: ['Efectivo','Transferencia bancaria','Tarjeta de credito','Tarjeta de debito'])
        fechaPago(nullable: true)
    }
}
