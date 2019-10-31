package cursos

class Persona {
    BigInteger dni
    String apellido
    String nombre

    static constraints = {
        dni(blank: false)
        apellido(blank: false, maxSize:100)
        nombre(blank: false, maxSize:100)
    }
}
