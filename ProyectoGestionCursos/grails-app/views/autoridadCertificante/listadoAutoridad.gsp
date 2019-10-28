<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Listado de Autoridades</title>
</head>
<body>
<h3 class="barra">Listado de Autoridades</h3>  
<div class="container"> 
<g:if test="${autoridades}">
<g:each in="${autoridades?}">
<div class="row mb-2">
            <div class="col-md-12">
              <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                    <div class="mb-1 text-muted">Apellido: ${it.apellido}</div>
                    <div class="mb-1 text-muted">Nombre: ${it.nombre}</div>
                    <div class="mb-1 text-muted">Dni: ${it.dni}</div>
                    <div class="mb-1 text-muted">Cargo: ${it.cargo}</div>
                    <div class="mb-1 text-muted">Cursos: ${it.cursos.nombre}</div>
                    <img src=${createLink(controller:"AutoridadCertificante", action:"verImagen", id:"${params.id}")} width='300' />
                    <div class="form-group row">
                    <div class="col-sm-10">
                    <g:form method="POST" action="asignarCurso" >
                    <g:hiddenField name="id" value="${it.id}" />
                      <button type="submit" class="btn btn-success">Asignar Curso</button>
                    </g:form>
                    </div>
                    </div>
                    <div class="form-group row">
                    <div class="col-sm-10">
                    
                    <g:form method="POST" action="quitarCurso" >
                    <g:hiddenField name="id" value="${it.id}" />
                      <button type="submit" class="btn btn-success">Quitar Curso</button>
                    </g:form>
                    </div>
                    </div>
                    </div>         
              </div>
             </div>
  </div>
  </g:each>
  </g:if> 
  <g:else>
        <div class="mb-0"><h3>No tiene Autoridades Certificantes cargadas.</h3></div>
  </g:else>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  

</body>
</html>