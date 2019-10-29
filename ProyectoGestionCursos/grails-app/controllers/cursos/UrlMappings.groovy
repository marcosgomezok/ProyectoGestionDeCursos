package cursos

class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller:"index", action:"inicio")
        "500"(view:'/error')
        "404"(view:'/notFound')

        "/cursos"(resources: "Curso") {
	         collection {
              "/listadoCursosJSON"(controller: "Curso", action: "listadoCursosJSON")

	         }
         }
         "/cursos"(resources: "Curso") {
	         collection {
              "/listadofinCursosJSON"(controller: "Curso", action: "listadofinCursosJSON")

	         }
         }
         "/cursos"(resources: "Curso") {
	         collection {
              "/listadoproxCursosJSON"(controller: "Curso", action: "listadoproxCursosJSON")

	         }
         }
    }
}
