<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Listado de Cursos</title>
</head>
<body><!doctype html>

<h3 class="barra">Listado de Cursos</h3>  
<div class="container"> 
<div ><h3>Expositor:  ${expositor.nombre} ${expositor.apellido}</h3></div>
<br>
 <g:if test="${expositor?.cursos}"> 
 <h4>Cursos:</h4>
<g:each in="${expositor?.cursos.toList()}">
<div class="row mb-2">
            <div class="col-md-12">
              <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                  <div class="form-group row">
                            <div class="col-sm-10">
                            <input type="text" class="form-control" id="curso" name="curso" value="${it.nombre}" disabled>
                     </div>
                  
                  <g:form controller="expositores" action="confirmarQuitar" method="POST">
                    <g:hiddenField name="id" value="${it.id}" />
                    <g:hiddenField name="id_exp" value="${expositor.id}" />
                    <button type="submit" class="btn btn-success">Quitar</button>
                    
                  </g:form>
                  <br>
                  
                  </div>
                </div>                
              </div>
            </div>
    </div>
</g:each>
</g:if> 
  <g:else>
        <div class="mb-0"><h3>No tiene cursos asignados</h3></div>
  </g:else>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  

</body>
</html>

