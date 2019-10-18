<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Alta</title>
</head>
<body>
<g:if test="${session!=null && session.user!=null}">
  <ul class="topnav"> 
    <li><a class="active" href="/">Inicio</a></li>
    <li><g:link controller="curso" action="alta">Cargar Curso</g:link></li>
    <li><g:link controller="administrador" action="admasistencias">Gestionar Asistencias</g:link></li>
    <li><g:link controller="administrador" action="estadisticas">Gestionar Estadisticas</g:link></li>
    <li class="right"><g:link controller="usuario" action="logout"><i class="fas fa-sign-out-alt"></i> Cerrar sesión</g:link></li>
    <li class="right"><label class="usuario logeado" for="usuario-logeado" ><i class="fas fa-user-tie"></i> Administrador: ${session?.user?.usuario}</label></li>    
  </ul>
</g:if>
<g:else>
  <ul class="topnav">
    <li><a class="active" href="/">Inicio</a></li>
    <li class="right"><g:link controller="usuario" action="inicio"><i class="fas fa-sign-in-alt"></i> Acceder</g:link></li>
    <li class="right"><g:link controller="aspirante" action="alta"><i class="fas fa-user"></i> Registrarse</g:link></li>
  </ul>
</g:else>
<div class="container">
    <h3>Añadir nuevo Evento:</h3>
        <g:form method="post" action="save">
            <div class="form-group row">
                <label for="nombre" class="col-sm-2 col-form-label">Nombre del evento</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="nombre" name="nombre" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="fecha_desde" class="col-sm-2 col-form-label">Fecha inicio</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="fecha_desde" name="fecha_desde" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="fecha_hasta" class="col-sm-2 col-form-label">Fecha fin</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="fecha_hasta" name="fecha_hasta" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="cantidad_horas" class="col-sm-2 col-form-label">Cant. horas</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="cantidad_horas" name="cantidad_horas" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="lugar" class="col-sm-2 col-form-label">Lugar</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="lugar" name="lugar" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="horarios" class="col-sm-2 col-form-label">Horarios</label>
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="horarios" name="horarios" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="fecha_lim_inscrip" class="col-sm-2 col-form-label">Fecha límite Ins.</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="fecha_lim_inscrip" name="fecha_lim_inscrip" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="fechadel_certificado" class="col-sm-2 col-form-label">Fecha certificado</label>
                    <div class="col-sm-10">
                        <input type="date" class="form-control" id="fechadel_certificado" name="fechadel_certificado" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="cupo_minimo" class="col-sm-2 col-form-label">Cupo minimo</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="cupo_minimo" name="cupo_minimo" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="cupo_maximo" class="col-sm-2 col-form-label">Cupo maximo</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="cupo_maximo" name="cupo_maximo" required>
                    </div>
            </div>
            <div class="form-group row">
                <label for="costo" class="col-sm-2 col-form-label">Costo</label>
                    <div class="col-sm-10">
                        <input type="number" class="form-control" id="costo" name="costo" required>
                    </div>
            </div>
            <div class="row">
                <legend class="col-form-label col-sm-2 pt-0">Categoría</legend>
                <div class="col-sm-10">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="estado" value="Proximo" checked>
                        <label class="form-check-label">
                        Proximo
                        </label>
                    </div>
                </div>
            </div>                            
            <div class="form-group row">
                <legend>Autoridades Certificantes</legend> 
            </div>
            <div class="form-group row">
                <legend>Expositores</legend> 
            </div>               
            <div class="form-group row">
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-success">Aceptar</button>
                    <g:link controller="administrador" action="inicio" class="btn btn-success">Cancelar</g:link>
                </div>
            </div>
        </g:form>
</div>
</body>
</html>
