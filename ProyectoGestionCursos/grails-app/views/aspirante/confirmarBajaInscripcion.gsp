<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Baja inscripcion</title>
</head>
<body>
<div class="container-fluid"> 
<div class="menucentrado">
<h3 class="mb-3">Estas seguro de cancelar tu inscripcion?</h3>  
        <div class="row mb-2">
            <div class="col-md-12">
              <div class="row  position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                  <g:form action="bajaInscripcion" method="POST">
                    <g:hiddenField name="id" value="${inscripcion.id}" />
                    <button type="submit" class="btn btn-success">Confirmar</button>
                     <g:link controller="aspirante" action="miscursos" class="btn btn-success">Volver</g:link>
                  </g:form>
                </div>                
              </div>
            </div>
        </div>
</div>
</div>
</body>
</html>