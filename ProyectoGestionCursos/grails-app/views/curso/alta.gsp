<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Alta</title>
</head>
<body>
<h3 class="barra">Añadir nuevo Evento:</h3>
<div class="container">
    <g:form method="POST" action="save">
        <div class="row">
            <div class="col-sm-12">
                <h3>Datos del evento</h3>
            </div>
        </div>
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
            <div class="col-sm-12">
                <h3>Autoridades certificantes</h3>
            </div>
        </div>
            <div class="form-group row">
                <div class="col-sm-12">
                    <select name="aut" multiple class="form-control" id="exampleFormControlSelect1">
                        <g:each in="${autoridades?}">
                            <option value="${it.id}">${it.apellido} ${it.nombre}</option>
                        </g:each>
                    </select>
                </div>
            </div>
        <div class="row">
            <div class="col-sm-12">
                <h3>Expositores</h3>
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-12">
                <select name="exp" multiple class="form-control" id="exampleFormControlSelect2">
                    <g:each in="${expositores?}">
                        <option value="${it.id}">${it.apellido} ${it.nombre}</option>
                    </g:each>
                </select>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <button type="submit" class="btn btn-success">Aceptar</button>
                <g:link controller="administrador" action="inicio" class="btn btn-success">Cancelar</g:link>
            </div>  
        </div>             
    </g:form>
</div>
</body>
</html>
