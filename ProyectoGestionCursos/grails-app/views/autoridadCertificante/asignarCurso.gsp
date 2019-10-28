<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Listado de Cursos</title>
</head>
<body><!doctype html>

<h3 class="barra">Listado de Cursos</h3>  
<div class="container"> 
<div class="mb-1 text-muted">Autoridad Certificante: ${autoridad.apellido} ${autoridad.nombre}</div>
<div class="mb-1 text-muted"></div>
  
<g:each in="${listado?}">
<div class="row mb-2">
            <div class="col-md-12">
              <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                  <h3 class="mb-0">${it.nombre}</h3>
                  <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.fecha_desde}"/></div>
                  <div class="mb-1 text-muted">Fecha de finalizacion: <g:formatDate format="dd/MM/yyyy" date="${it.fecha_hasta}"/></div>
                  
                  
                  <g:form controller="autoridadCertificante" action="guardarCursoAutoridad" method="POST">
                    <g:hiddenField name="id" value="${it.id}" />
                    <g:hiddenField name="id_aut" value="${autoridad.id}" />
                    <button type="submit" class="btn btn-success">Asignar Curso</button>
                    
                  </g:form>
                  <br>
                  
                  
                </div>                
              </div>
            </div>
    </div>
</g:each>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  

</body>
</html>

