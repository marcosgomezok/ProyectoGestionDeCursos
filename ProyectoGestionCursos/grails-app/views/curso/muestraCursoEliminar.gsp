<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Curso a Eliminar</title>
</head>
<body>
<h3 class="barra">Datos del Curso</h3>  
<div class="container"> 
 <g:if test="${inscripciones}">
 <div class="mb-0"><h3>No es posible eliminar el curso ya que tiene inscriptos.</h3></div>
 </g:if> 
  <g:else>
<g:each in="${curso?}">
<div class="row mb-2">
            <div class="col-md-12">
              <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                <div class="col p-4 d-flex flex-column position-static">
                  <h3 class="mb-0">${it.nombre}</h3>
                  <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.fecha_desde}"/></div>
                  <div class="mb-1 text-muted">Fecha de finalizacion: <g:formatDate format="dd/MM/yyyy" date="${it.fecha_hasta}"/></div>
                 
                  
                  <g:form controller="curso" action="confirmarBaja" method="POST">
                    <g:hiddenField name="id" value="${it.id}" />
                    <button type="submit" class="btn btn-success">Confirmar Eliminación</button>
                  </g:form>
                </div>                
              </div>
            </div>
    </div>
</g:each>
 </g:else>
</div>
</body>
</html>

