package cursos

class CuponPago {
    Date fechaPago
    String pago
    static constraints = {
        pago(inList: ['Pendiente','Realizado'])
        fechaPago(nullable: true)
    }
}
