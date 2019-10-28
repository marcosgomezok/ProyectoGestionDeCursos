<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Baja</title>
</head>
<body>
<div class="container-fluid">
    <div class="margenseparadorlayouttop">
        <div class="centrar mb-3"><h3>Listado de cursos</h3></div>
        <div class="tabla_nth_child">
        <g:if test="${cursos}">
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
                <th>Accion</th>
            </tr>
            <g:each in="${cursos?}">
            <g:form action="seleccionarModify" method="POST">
            <g:hiddenField name="id" value="${it.id}" />
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
                <td><div></label><input type="submit" class="linkButton" value="Modificar"></div></td>
            </tr>
            </g:form>
            </g:each>            
        </table>
        </g:if>
        </div>
        <div class="centrar">
        <g:link controller="Administrador" action="inicio" class="btn btn-success">Volver</g:link>
        </div>
    </div>
</div>
</body>
</html>