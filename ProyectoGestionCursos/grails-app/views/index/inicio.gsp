<!doctype html>
<html lang="en">
<head>
  <meta name="layout" content="main"/>
  <title>Inicio</title>
</head>
<body>
  <h3 class="barra">Ofertas disponibles proximas a realizarse</h3>
  <g:if test="${listado}">
    <div class="container">
    <g:each in="${listado?}">
    <div class="submenucentradocurso">
      <div class="row">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-0">${it.nombre}</h3>
                <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.fecha_desde}"/></div>
                  <g:form action="infoCurso" method="POST">
                    <g:hiddenField name="id" value="${it.id}" />
                      <button type="submit" class="btn btn-success">Ver mas</button>
                  </g:form>
            </div>                
          </div>
        </div>
      </div>
    </div>
    </g:each>
  </div>
  </g:if>
  <g:else>
  <div class="menucentrado"><h3>No hay ofertas disponibles proximas a realizarces</h3></div>      
  </g:else>
</body>
</html>