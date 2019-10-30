<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Modificar Autoridad Certificante</title>
</head>
<body>
<h3 class="barra">Modificar Datos de la Autoridad:</h3>
<div class="container">
        <h3>Autoridad:</h3>
        <g:form action="guardarDatosModif" method="post" >   
                  <div class="form-group row">
                      <label for="apellido" class="col-sm-2 col-form-label">Apellido</label>
                      <div class="col-sm-10">
                        <input type="text" class="form-control" id="apellido" name="apellido" value="${autoridad.apellido}">
                      </div>
                  </div>
                  <div class="form-group row">
                              <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
                              <div class="col-sm-10">
                                <input type="text" class="form-control" id="nombre" name="nombre" value="${autoridad.nombre}">
                              </div>
                  </div>
                  <div class="form-group row">
                          <label for="dni" class="col-sm-2 col-form-label">DNI</label>
                          <div class="col-sm-10">
                            <input type="number" class="form-control" id="DNI" name="dni" value="${autoridad.dni}">
                          </div>
                  </div>
                  <div class="form-group row">
                  <label for="cargo" class="col-sm-2 col-form-label">Cargo:</label>
                  <div class="col-sm-10">
                  <select id="cargo" name="cargo" value="${autoridad.cargo}" >
                    <option value="Decano">Decano</option>
                    <option value="Secretario/a">Secretario/a</option>
                    <option value="Academico">Academico</option>
                    <option value="Director/a Departamento">Director/a Departamento</option>
                  </select>
                  </div>
                          
                  </div>
                  <!-- <div class="form-group row">
                     <label for="firmas" class="col-sm-2 col-form-label">Firmas</label>
                      <div class="col-sm-10">
                          <img src=${createLink(controller:"AutoridadCertificante", action:"verImagen", id:"${params.id}")} width='300' />
                          <input type="file" class="form-control" id="firma" name="firma" value="${autoridad.firma}">
                      </div>
                  </div> -->     
                  <div class="centrar">
                      <div class="col-sm-10">
                      <g:hiddenField name="id" value="${autoridad.id}" />
                          <button type="submit" class="btn btn-outline-success">Guardar</button>
                          <g:link controller="autoridadCertificante" action="modificar" class="btn btn-outline-success">Cancelar</g:link>
                      
                    </div>
                    </div>                 
                
                </div>
            </g:form>
                  
</div>

        
        
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  

</body>
</html>