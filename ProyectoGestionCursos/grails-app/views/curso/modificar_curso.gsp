<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Modificar Curso</title>
</head>
<body>
<h3 class="barra">Modificar Curso:</h3>
<div class="container">
        <!--Formulario con datos obtenidos-->  
  <g:each in="${curso?}">
  
  <g:form method="post" action="guardarCursoModificado">
  <g:hiddenField name="id" value="${it.id}" />
    <div class="row mb-2">
      <div class="col-md-12">
        <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
          <div class="col p-4 d-flex flex-column position-static">
            <h3 class="mb-0">${it.nombre}</h3>
            <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Nombre del evento</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nombre" name="nombre" value="${it.nombre}" required>
                    </div>
            </div><div class="form-group row">
                <label for="fecha_desde" class="col-sm-2 col-form-label">Fecha inicio</label>
                    <div class="col-sm-10">
                        <!--<input type="date" class="form-control" id="fecha_desde" name="fecha_desde" value="${formatDate(format:'dd/MM/yyyy',date:it.fecha_desde)}"/>-->
                        <g:textField type="date" name="fecha_desde" class="form-control" value="${formatDate(format:'dd/MM/yyyy',date:it.fecha_desde)}"/>
        
                    </div>
            </div>
            <div class="form-group row">
                <label for="fecha_hasta" class="col-sm-2 col-form-label">Fecha fin</label>
                    <div class="col-sm-10">
                         <!--<input type="date" class="form-control" id="fecha_hasta" name="fecha_hasta" value="${it.fecha_hasta}" required>-->
                       <g:textField type="date" name="fecha_hasta" class="form-control" value="${formatDate(format:'dd/MM/yyyy',date:it.fecha_hasta)}"/>
                    </div>
            </div>
            <div class="form-group row">
                <label for="cantidad_horas" class="col-sm-2 col-form-label">Cant. horas</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="cantidad_horas" name="cantidad_horas" value="${it.cantidad_horas}" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="lugar" class="col-sm-2 col-form-label">Lugar</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="lugar" name="lugar" value="${it.lugar}" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="horarios" class="col-sm-2 col-form-label">Horarios</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="horarios" name="horarios" value="${it.horarios}" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="fecha_lim_inscrip" class="col-sm-2 col-form-label">Fecha límite Ins.</label>
                    <div class="col-sm-10">
                        <!--<input type="date" class="form-control" id="fecha_lim_inscrip" name="fecha_lim_inscrip" value="${it.fecha_lim_inscrip}" required>-->
                        <g:textField type="date" name="fecha_lim_inscrip" class="form-control" value="${formatDate(format:'dd/MM/yyyy',date:it.fecha_lim_inscrip)}"/>
                    </div>
            </div>
            <div class="form-group row">
                <label for="fechadel_certificado" class="col-sm-2 col-form-label">Fecha certificado</label>
                    <div class="col-sm-10">
                        <!--<input type="date" class="form-control" id="fechadel_certificado" name="fechadel_certificado" value="${it.fechadel_certificado}" required>-->
                        <g:textField type="date" name="fechadel_certificado" class="form-control" value="${formatDate(format:'dd/MM/yyyy',date:it.fechadel_certificado)}"/>
                    </div>
            </div>
            <div class="form-group row">
                <label for="cupo_minimo" class="col-sm-2 col-form-label">Cupo minimo</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="cupo_minimo" name="cupo_minimo" value="${it.cupo_minimo}" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="cupo_maximo" class="col-sm-2 col-form-label">Cupo maximo</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="cupo_maximo" value="${it.cupo_maximo}" name="cupo_maximo" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="costo" class="col-sm-2 col-form-label">Costo</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="costo" name="costo" value="${it.costo}" required>
                    </div>
            </div>
            <div class="row">
                <legend class="col-form-label col-sm-2 pt-0">Estado:</legend>
                <div class="col-sm-10">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="estado" value="Finalizado" value="${it.estado}">
                        <label class="form-check-label">
                        Finalizado
                        </label>
                        <br>
                        <input class="form-check-input" type="radio" name="estado" value="Activo"value="${it.estado}">
                        <label class="form-check-label">
                        Activo
                        </label>
                        <br>
                        <input class="form-check-input" type="radio" name="estado" value="Baja" value="${it.estado}">
                        <label class="form-check-label">
                        Baja
                        </label>
                    </div>
                </div>
            </div> 
            
          </div>                
        </div>
      </div>
    </div>  
    <div class="form-group row">
                <div class="col-sm-10">
                    
                    <button type="submit" class="btn btn-success" >Guardar</button>
                    <g:link controller="administrador" action="inicio" class="btn btn-success">Cancelar</g:link>
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
