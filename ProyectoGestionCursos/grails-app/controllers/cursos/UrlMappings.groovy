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
    }
}
