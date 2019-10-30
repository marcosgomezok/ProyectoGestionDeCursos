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
        
        <g:uploadForm action="guardarAutoridad" method="POST">  
                
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
                    </g:uploadForm>                                  
</div>  
</div>
</body>
</html>