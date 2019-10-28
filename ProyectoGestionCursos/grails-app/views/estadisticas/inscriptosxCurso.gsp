<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <asset:javascript src="validarCampos.js"/>
    <title>Estadisticas</title>
</head>
<body>
<div class=margenseparadorlayout>
    <div class="container-fluid">
        <div class="centrar mb-3"><h3>Listado de inscriptos por cursos</h3></div>
        <g:form action="inscriptosxCurso" method="POST">
            <div class="form-row">
                <div class="form-group col-md-11">
                    <select name="id" class="custom-select mb-3">
                        <option selected>Elija un Curso</option>
                        <g:each in="${cursos?}">
                        <option value="${it.id}">${it.nombre}</option>
                        </g:each>
                    </select>
                </div>
                <div class="form-group col-md-1">
                    <g:hiddenField name="id" value="${it.id}" />        
                    <button type="submit" class="btn btn-success">Buscar</button>
                </div>
            </div>
        </g:form>
        <div class="tabla_nth_child">
        <g:if test="${curso!=null}">
        <div class="mb-0"><h3><label id="nomcurso">${curso.nombre}</label> <label id="fd"> - <g:formatDate format="dd/MM/yyyy" date="${curso.fecha_desde}"/></label> al <label id="fh"><g:formatDate format="dd/MM/yyyy" date="${curso.fecha_hasta}"/></label></h3></div>
        <g:if test="${inscripciones}">
        <table>
            <tr>
                <th>Nombre y Apellido</th>
                <th>Dni</th>
                <th>Usuario</th>
                <th>Email</th>
                <th>Categoria</th>
                <th>Tipo de Inscripcion</th>
                <th>Pago</th>
                <th>Certificado</th>
            </tr>
            <g:each in="${inscripciones?}">
            <tr>
                <td><div><label id="nombre">${it.asp.nombre} </label> <label id="apellido">${it.asp.apellido}</label></div></td>
                <td><div><label id="dni">${it.asp.dni} </label> </div></td>
                <td><div><label id="usuario">${it.asp.usuario} </label> </div></td>
                <td><div><label id="email">${it.asp.email} </label> </div></td>
                <td><div><label id="categoria">${it.asp.categoria} </label> </div></td>
                <td><div><label id="tipoins">${it.tipoInscrip} </label> </div></td>
                <td><div><label id="pago">${it.cupon.pago} </label> </div></td>
                <td><div><label id="certif">${it.certif.tipoCertif} </label> </div></td>
            </tr>
            </g:each>            
        </table>
        </g:if>
        <g:else>
        <div class="mb-0"><h3>No hay inscriptos en este curso</h3></div>
        </g:else>
        </g:if>
        </div>
        <div class="centrar">
        <g:link controller="estadisticas" action="inicio" class="btn btn-success">Volver</g:link>
        </div>
    </div>
</div>
</body>
</html>