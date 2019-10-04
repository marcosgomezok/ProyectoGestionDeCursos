package cursos

class Persona {
    BigInteger dni
    String apellido
    String nombre

    static constraints = {
        dni(blank: false, unique: true) //no permite cadenas vacias no es igual que nullable
        apellido(blank: false, maxSize:100)
        nombre(blank: false, maxSize:100)
    }
}
