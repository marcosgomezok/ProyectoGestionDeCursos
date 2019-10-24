<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Curso Cargados</title>
</head>
<body>
 <h3 class="barra">Datos cargados: </h3>
<div class="container"> 
 <p>Curso Cargado Correctamente!</p>   
<g:each in="${curso?}">
 
    <div class="row mb-2">
      <div class="col-md-12">
        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">
            <h3 class="mb-0">${it.nombre}</h3>
            <div class="mb-1 text-muted">Carga Horaria: ${it.cantidad_horas} HORAS</div>
            <div class="mb-1 text-muted">Lugar: ${it.lugar}</div>
            <div class="mb-1 text-muted">Horarios: ${it.horarios}</div>
            <div class="mb-1 text-muted">Cupo minimo: ${it.cupo_minimo}</div>
            <div class="mb-1 text-muted">Cupo maximo: ${it.cupo_maximo}</div>
            <div class="mb-1 text-muted">Costo: $${it.costo}</div>
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

