<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Estadisticas</title>
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
                <th>Cant hs</th>
                <th>Lugar</th>
                <th>Horarios</th>
                <th>Fecha lim inscrip</th>
                <th>Fecha del certif</th>
                <th>Cupo min</th>
                <th>Cupo max</th>
                <th>Costo</th>
                <th>Expositores</th>
                <th>Autoridades Certificantes</th>

            </tr>
            <g:each in="${cursos?}" var="curso">
            <tr>
                <td><div><label id="nombre">${curso.nombre} </label> </div></td>
                <td><div><label id="fd"><g:formatDate format="dd/MM/yyyy" date="${curso.fecha_desde}"/></label> </div></td>
                <td><div><label id="fh"><g:formatDate format="dd/MM/yyyy" date="${curso.fecha_hasta}"/></label> </div></td>
                <td><div><label id="cant">${curso.cantidad_horas} </label> </div></td>
                <td><div><label id="lugar">${curso.lugar} </label> </div></td>
                <td><div><label id="horarios">${curso.horarios} </label> </div></td>
                <td><div><label id="fl"><g:formatDate format="dd/MM/yyyy" date="${curso.fecha_lim_inscrip}"/></label> </div></td>
                <td><div><label id="certif"><g:formatDate format="dd/MM/yyyy" date="${curso.fechadel_certificado}"/></label> </div></td>
                <td><div><label id="cupo_minimo">${curso.cupo_minimo} </label> </div></td>
                <td><div><label id="cupo_maximo">${curso.cupo_maximo} </label> </div></td>
                <td><div><label id="costo">${curso.costo} </label> </div></td>
                <td>
                    <div>
                        <g:each in="${curso.exp}">
                            <label id="exp">*${it.apellido} ${it.nombre}</label><br>
                        </g:each>
                    </div>
                </td>
                 <td>   
                    <div>
                        <g:each in="${curso.aut}">
                            <label id="aut">*${it.apellido} ${it.nombre}</label><br>
                        </g:each>
                    </div>
                </td>         
            </tr>
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