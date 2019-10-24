<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <asset:javascript src="validarCampos.js"/>
    <title>Estadisticas</title>
</head>
<body>
<div class="tablainsestadisticas">
    <div class="container">
        <g:form action="inscriptosxCurso" method="POST">
            <div class="form-row">
                <div class="form-group col-md-11">
                    <select name="id" class="custom-select mb-3">
                        <option selected>Elija un Curso</option>
                        <g:each in="${listado?}">
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
    <g:if test="${inscripciones!=null && curso!=null}">
    <div class="mb-0"><h3>Nombre: <label id="nomcurso">${curso.nombre}</label></h3></div>
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
                <td><div><label id="pago">${it.pago} </label> </div></td>
                <td><div><label id="certif">${it.certif.tipoCertif} </label> </div></td>
            </tr>
            </g:each>            
        </table>
    </g:if>
        <div class="estadisticas">
        <g:link controller="Administrador" action="estadisticas" class="btn btn-success">Volver</g:link>
        </div>
    </div>
</div>
<script>(function () {corchetesinscriptosxcurso()} )();</script>
</body>
</html>