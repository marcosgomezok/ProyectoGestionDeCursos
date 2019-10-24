<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Inicio</title>
</head>
<body>
<div class="tcentrado">
  <h1>Obtuviste los siguientes certificados</h1>
  <div class="container">
    <g:each in="${miscertif?}">
      <div class="row mb-2">
        <div class="col-md-12">
          <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
            <div class="col p-4 d-flex flex-column position-static">
                  <h3 class="mb-0">Tipo de Certificado: <label id="c">${it.certif.tipoCertif}</label></h3>
                  <h3 class="mb-0">Nombre: <label id="curso">${it.curso.nombre}</label></h3>
                  <div class="mb-1 text-muted">Fecha de inicio: <g:formatDate format="dd/MM/yyyy" date="${it.curso.fecha_desde}"/></div>
                  <div class="mb-1 text-muted">Fecha de finalizacion: <g:formatDate format="dd/MM/yyyy" date="${it.curso.fecha_hasta}"/></div>
                  <div class="mb-1 text-muted">Carga Horaria: ${it.curso.cantidad_horas} HORAS</div>
                  <div class="mb-1 text-muted">Lugar: ${it.curso.lugar}</div>
                  <div class="mb-1 text-muted">Horarios: ${it.curso.horarios}</div>
                  <div class="mb-1 text-muted">Fecha de certificacion: <g:formatDate format="dd/MM/yyyy" date="${it.curso.fechadel_certificado}"/></div>
                  <div class="mb-1 text-muted">Costo: $${it.curso.costo}</div>
                  <div class="mb-1 text-muted">Estado del curso: ${it.curso.estado}</div>
                  <div class="mb-1 text-muted">Tipo de inscripcion: ${it.tipoInscrip}</div>
                  <div class="mb-1 text-muted">Pago: ${it.pago}</div>
                  <div class="mb-1 text-muted">Nro. inscripcion: ${it.id}</div>
            </div>                
          </div>
        </div>
      </div>
    </g:each>
  </div>
</div>
</body>
</html>
