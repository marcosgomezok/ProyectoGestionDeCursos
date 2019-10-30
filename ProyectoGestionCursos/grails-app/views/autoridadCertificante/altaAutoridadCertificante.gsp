<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Cargar Autoridad Certificante</title>
</head>
<body>
<h3 class="barra">Cargar Autoridad Certificante:</h3>
<div class="container">
        <h3>Autoridad Certificante:</h3>
        
        <g:form action="guardarAutoridad" method="POST">  
                
                <div class="form-group row">
                    <label for="apellido" class="col-sm-2 col-form-label">Apellido</label>
                    <div class="col-sm-10">
                      <input type="text" class="form-control" id="apellido" name="apellido">
                    </div>
                </div>
                <div class="form-group row">
                            <label for="nombre" class="col-sm-2 col-form-label">Nombre</label>
                            <div class="col-sm-10">
                              <input type="text" class="form-control" id="nombre"  name="nombre" >
                            </div>
                </div>
                <div class="form-group row">
                        <label for="dni" class="col-sm-2 col-form-label">DNI</label>
                        <div class="col-sm-10">
                          <input type="number" class="form-control" id="dni" name="dni">
                        </div>
                </div>
                <div class="form-group row">
                <label for="cargo" class="col-sm-2 col-form-label">Cargo:</label>
                <div class="col-sm-10">
                <select id="cargo" name="cargo">
                  <option value="Decano">Decano</option>
                  <option value="Secretario/a">Secretario/a</option>
                  <option value="Academico">Academico</option>
                  <option value="Director/a Departamento">Director/a Departamento</option>
                </select>
                </div>
                        
                </div>
                <div class="form-group row">
                      <label for="firmas" class="col-sm-2 col-form-label">Firmas</label>
                      <div class="col-sm-10">
                          <input type="file" class="form-control" id="firma" name="firma">
                      </div>
                </div>
                      <div class= "centrar">
                      
                          <button type="submit" class="btn btn-outline-success">Añadir</button>
                          <g:link controller="autoridadCertificante" action="inicio" class="btn btn-outline-success">Cancelar</g:link>
                    
                    </div>  
                    </g:form>               
            
                  
</div>

        
        
</div>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>  

</body>
</html>