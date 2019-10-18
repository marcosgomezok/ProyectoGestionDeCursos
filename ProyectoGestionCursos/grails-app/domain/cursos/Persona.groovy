package cursos

class Persona {
    BigInteger dni
    String apellido
    String nombre

    static constraints = {
        dni(blank: false, unique: true)
        apellido(blank: false, maxSize:100)
        nombre(blank: false, maxSize:100)
    }
}
