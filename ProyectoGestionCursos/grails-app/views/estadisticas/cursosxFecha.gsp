<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Estadisticas</title>
</head>
<body>
<div class="tablainsestadisticas">
    <div class="container-fluid">
        <g:form method="post" action="cursosxFecha">
            <div class="form-group row">
                <label for="fecha_desde_cf" id="fecha_desde_cf"class="col-sm-2 col-form-label">Fecha inicio</label>
                    <div class="col-sm-4">
                        <input type="date" class="form-control" id="fecha_desde" name="fecha_desde" required>
                    </div>
                        <label for="fecha_hasta_cf" id="fecha_hasta_cf" class="col-sm-1 col-form-label">Fecha fin</label>
                    <div class="col-sm-4">
                        <input type="date" class="form-control" id="fecha_hasta" name="fecha_hasta" required>
                    </div>
                    <div class="col-sm-1"><button type="submit" class="btn btn-success">Buscar</button></div>
            </div>        
        </g:form>
        <g:if test="${listado!=null}">
        <table>
            <tr>
                <th>Nombre</th>
                <th>Fecha inicio</th>
                <th>Fecha fin</th>
                <th>Cantidad horas</th>
                <th>Lugar</th>
                <th>Horarios</th>
                <th>Fecha lim. inscrip.</th>
                <th>Fecha del certif.</th>
                <th>Cupo minimo</th>
                <th>Cupo maximo</th>
                <th>Costo</th>
                <th>Estado</th>
            </tr>
            <g:each in="${listado?}">
            <tr>
                <td><div><label id="nombre">${it.nombre} </label> </div></td>
                <td><div><label id="fd"><g:formatDate format="dd/MM/yyyy" date="${it.fecha_desde}"/></label> </div></td>
                <td><div><label id="fh"><g:formatDate format="dd/MM/yyyy" date="${it.fecha_hasta}"/></label> </div></td>
                <td><div><label id="cant">${it.cantidad_horas} </label> </div></td>
                <td><div><label id="lugar">${it.lugar} </label> </div></td>
                <td><div><label id="horarios">${it.horarios} </label> </div></td>
                <td><div><label id="fl"><g:formatDate format="dd/MM/yyyy" date="${it.fecha_lim_inscrip}"/></label> </div></td>
                <td><div><label id="certif"><g:formatDate format="dd/MM/yyyy" date="${it.fechadel_certificado}"/></label> </div></td>
                <td><div><label id="cupo_minimo">${it.cupo_minimo} </label> </div></td>
                <td><div><label id="cupo_maximo">${it.cupo_maximo} </label> </div></td>
                <td><div><label id="costo">${it.costo} </label> </div></td>
                <td><div><label id="estado">${it.estado} </label> </div></td>
            </tr>
            </g:each>            
        </table>
        </g:if>
        <div class="estadisticas">
        <g:link controller="Administrador" action="estadisticas" class="btn btn-success">Volver</g:link>
        </div>
    </div>
</div>
</body>
</html>