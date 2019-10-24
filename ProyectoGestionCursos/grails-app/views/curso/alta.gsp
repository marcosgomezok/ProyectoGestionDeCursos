<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Alta</title>
</head>
<body>
<h3 class="barra">Añadir nuevo Evento:</h3>
<div class="container">
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
                <legend class="col-form-label col-sm-2 pt-0">Estado: </legend>
                <div class="col-sm-10">
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="estado" value="Baja">
                        <label class="form-check-label">
                        Baja
                        </label>
                        <br>
                        <input class="form-check-input" type="radio" name="estado" value="Activo" checked>
                        <label class="form-check-label">
                        Activo
                        </label>
                        <br>
                        <input class="form-check-input" type="radio" name="estado" value="Finalizado">
                        <label class="form-check-label">
                        Finalizado
                        </label>
                        <br>
                    </div>
                </div>

            </div>                            
                <div class="col-sm-10">
                    <button type="submit" class="btn btn-success">Aceptar</button>
                    <g:link controller="administrador" action="inicio" class="btn btn-success">Cancelar</g:link>
                </div>
            </div>
        </g:form>
</div>
</body>
</html>
