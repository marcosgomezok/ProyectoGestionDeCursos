package cursos

import java.security.MessageDigest

class Usuario extends Persona{
    String usuario
    String password

    def generateMD5_A(String s){
          return MessageDigest.getInstance("MD5").digest(s.bytes).encodeHex().toString()
      }
      def beforeInsert() {
        password=generateMD5_A(password)

      }

      def beforeUpdate() {
        if (isDirty('password')) {
          password=generateMD5_A(password)
        }
      }

    static constraints = {
        usuario(blank: false, maxSize:100, unique: true)
        password(blank: false, maxSize:100)
    }

    
}
