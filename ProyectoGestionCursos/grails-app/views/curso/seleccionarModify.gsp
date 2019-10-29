<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_selectmultiple"/>
    <title>Modificar</title>
</head>
<body>
<h3 class="barra">Modificar Evento:</h3>
<div class="container">
    <g:form method="POST" action="confirmarModify">
    <g:hiddenField name="id" value="${curso.id}"/>
        <div class="row">
            <div class="col-sm-12">
                <h3>Datos del evento</h3>
            </div>
        </div>
        <div class="form-group row">
            <label for="nombre" class="col-sm-2 col-form-label">Nombre del evento</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="nombre" name="nombre" value="${curso.nombre}" required>
                </div>
        </div>
        <div class="form-group row">
            <label for="fecha_desde" class="col-sm-2 col-form-label">Fecha inicio</label>
                <div class="col-sm-10">
                    <input type="date" class="form-control" id="fecha_desde" name="fecha_desde" value= '<g:formatDate format="yyyy-MM-dd" date="${curso.fecha_desde}"/>' required>
                </div>
        </div>
        <div class="form-group row">
            <label for="fecha_hasta" class="col-sm-2 col-form-label">Fecha fin</label>
                <div class="col-sm-10">
                    <input type="date" class="form-control" id="fecha_hasta" name="fecha_hasta" value='<g:formatDate format="yyyy-MM-dd" date="${curso.fecha_hasta}"/>' required>
                </div>
        </div>
        <div class="form-group row">
            <label for="cantidad_horas" class="col-sm-2 col-form-label">Cant. horas</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="cantidad_horas" name="cantidad_horas" value="${curso.cantidad_horas}" required>
                </div>
        </div>
        <div class="form-group row">
            <label for="lugar" class="col-sm-2 col-form-label">Lugar</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="lugar" name="lugar" value="${curso.lugar}" required>
                </div>
        </div>
        <div class="form-group row">
            <label for="horarios" class="col-sm-2 col-form-label">Horarios</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="horarios" name="horarios" value="${curso.horarios}" required>
                </div>
        </div>
        <div class="form-group row">
            <label for="fecha_lim_inscrip" class="col-sm-2 col-form-label">Fecha límite Ins.</label>
                <div class="col-sm-10">
                    <input type="date" class="form-control" id="fecha_lim_inscrip" name="fecha_lim_inscrip" value='<g:formatDate format="yyyy-MM-dd" date="${curso.fecha_lim_inscrip}"/>' required>
                </div>
        </div>
        <div class="form-group row">
            <label for="fechadel_certificado" class="col-sm-2 col-form-label">Fecha certificado</label>
                <div class="col-sm-10">
                    <input type="date" class="form-control" id="fechadel_certificado" name="fechadel_certificado" value='<g:formatDate format="yyyy-MM-dd" date="${curso.fechadel_certificado}"/>' required>
                </div>
        </div>
        <div class="form-group row">
            <label for="cupo_minimo" class="col-sm-2 col-form-label">Cupo minimo</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="cupo_minimo" name="cupo_minimo" value="${curso.cupo_minimo}" required>
                </div>
        </div>
        <div class="form-group row">
            <label for="cupo_maximo" class="col-sm-2 col-form-label">Cupo maximo</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="cupo_maximo" name="cupo_maximo" value="${curso.cupo_maximo}" required>
                </div>
        </div>
        <div class="form-group row">
            <label for="costo" class="col-sm-2 col-form-label">Costo</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="costo" name="costo" value="${curso.costo}" required>
                </div>
        </div>
        
        <div class="row">
            <div class="col-sm-12">
                <h3>Autoridades certificantes</h3>
            </div>
        </div>
            <div class="form-group row">
                <div class="col-sm-12">
                    <select name="aut" multiple class="selectpicker form-control" id="exampleFormControlSelect1" data-style="btn-info">
                        <g:each in="${curso?.aut}" var="aut">
                            <option value="${aut.id}" selected>${aut.apellido} ${aut.nombre}</option>
                        </g:each>
                        <g:each in="${autoridades?}" var="autc">
                            <option value="${autc.id}">${autc.apellido} ${autc.nombre}</option>
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
                <select name="exp" multiple class="selectpicker form-control" id="exampleFormControlSelect2" data-style="btn-info">
                    <g:each in="${curso?.exp}" var="exp">
                        <option value="${exp.id}" selected>${exp.apellido} ${exp.nombre}</option>
                    </g:each>
                    <g:each in="${expositores?}" var="expe">
                        <option value="${expe.id}">${expe.apellido} ${expe.nombre}</option>
                    </g:each>
                </select>
            </div>
        </div>
        <div class="espacioblanco">
        <div class="row">
            <div class="col-sm-12">
                <button type="submit" class="btn btn-success">Aceptar</button>
                <g:link controller="administrador" action="inicio" class="btn btn-success">Cancelar</g:link>
            </div>  
        </div>    
        </div>         
    </g:form>
</div>
</body>
</html>
