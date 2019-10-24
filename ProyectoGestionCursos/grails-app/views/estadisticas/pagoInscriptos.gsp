<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Estadisticas</title>
</head>
<body>
<div class="tablainsestadisticas">
    <div class="container-fluid">
    <g:form method="post" action="pagoInscriptos">           
        <div class="form-group row">
            <div class="col-sm-10">
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="pago" id="inlineRadio1" value="Realizado">
                <label class="form-check-label" for="inlineRadio1">Inscriptos que efectuaron el pago</label>
            </div>
            <div class="form-check form-check-inline">
            <input class="form-check-input" type="radio" name="pago" id="inlineRadio2" value="Pendiente">
                <label class="form-check-label" for="inlineRadio2">Inscriptos que faltan por realizar el pago</label>
            </div>
            <button type="submit" class="btn btn-success">Buscar</button>
          </div>                   
        </div>
    </g:form>
    <g:if test="${inscripciones}">
        <table>
            <tr>
                <th>Curso</th>
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
                <td><div><label id="curso">${it.curso.nombre} </label> </div></td>
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
<script>(function () {corchetespagoInscriptos()} )();</script>
</body>
</html>