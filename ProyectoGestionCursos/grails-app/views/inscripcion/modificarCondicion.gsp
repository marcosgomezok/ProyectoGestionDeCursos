<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Modificar Curso</title>
</head>
<body>
<h3 class="barra">Modificar Condición Inscriptos:</h3>
<div class="container">
        <!--Formulario con datos obtenidos-->  
  <g:each in="${inscriptos?}">
  
  <g:form method="post" action="guardarCondicionInscripto">
  <g:hiddenField name="id" value="${it.id}" />
    <div class="row mb-2">
      <div class="col-md-12">
        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">
                <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Apellido</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="apellido" name="apellido" value="${it.asp.apellido}" disabled>
                    </div>
                </div>
                <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nombre" name="nombre" value="${it.asp.nombre}" disabled>
                    </div>
                </div>
                <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Dni</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="dni" name="dni" value="${it.asp.dni}" disabled>
                    </div>
                </div>
                <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Condición de Inscripción:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="tipoInscrip" name="tipoInscrip" value="${it.tipoInscrip}">
                    </div>
                </div>
               
                <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Estado de Pago:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="pago" name="pago" value="${it.pago}">
                    </div>
                </div>
                <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Costo del Curso:</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="costo" name="costo" value="${it.cursos.costo}" disabled>
                    </div>
                </div>


            <br>

            <div class="form-group row">
                <div class="col-sm-10"> 
                    <button type="submit" class="btn btn-success" >Guardar</button>
                    <g:link controller="administrador" action="inicio" class="btn btn-success">Cancelar</g:link>
            </div>
            </div>
           </div>                
        </div>
       </div>
    </div>  
          
          
            
     </g:form>    
  </g:each>         
</div>

        
        
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  

</body>
</html>