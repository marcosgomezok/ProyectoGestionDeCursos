<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Inicio</title>
</head>
<body>
<h3 class="barra">Oferta Disponible:</h3>
  <div class="container">
    <g:each in="${listado?}">
      <div class="row mb-2">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
              <h3 class="mb-0">${it.nombre}</h3>
                <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.fecha_desde}"/></div>
                  <g:form action="inscripcion" method="POST">
                    <g:hiddenField name="id" value="${it.id}" />
                      <button type="submit" class="btn btn-success">Inscribirse</button>
                  </g:form>
            </div>                
          </div>
        </div>
      </div>
    </g:each>
  </div>
</body>
</html>
