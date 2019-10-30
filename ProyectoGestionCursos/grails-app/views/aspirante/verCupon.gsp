<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Mi cupon</title>
</head>
<body>
  <form class="form">
    <div class="container">
      <div class="menucentradocurso">
        <div class="row">
          <div class="col-md-12">
            <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
              <div class="col p-4 d-flex flex-column position-static">
                <h3 class="mb-1">Tu Cupon</h3>
                <div class="mb-1">Nombre y Apellido: <label id="nombre">${inscripcion.asp.nombre} </label> <label id="apellido">${inscripcion.asp.apellido}</label></div>
                <div class="mb-1">DNI: <label id="dni">${inscripcion.asp.dni}</label></div> 
                <div class="mb-1">Nombre del curso: <label id="curso">${inscripcion.curso.nombre}</label></div>
                <div class="mb-1">Costo: <label id="costo">${inscripcion.curso.costo}</label></div>
                <div class="mb-1">Estado: <label id="estado">${inscripcion.tipoInscrip}</label></div>
                <div class="mb-1">Nro. inscripcion: <label id="idinscrip">${inscripcion.id}</label></div>                      
              </div>                
            </div>
          </div>
        </div>
      </div>
    </div>
  </form>
  <div class="submenucentradocurso">
    <input type="button" id="create_pdf" value="Generar PDF" class="btn btn-success">
  </div>
  <div class="submenucentradocurso">
    <g:link controller="aspirante" action="miscupones" class="btn btn-success">Volver</g:link>
  </div>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>
<asset:javascript src="HTMLaPDF.js"/>
</body>
</html>