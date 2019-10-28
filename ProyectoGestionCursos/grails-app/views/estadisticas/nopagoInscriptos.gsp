<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_admin"/>
    <title>Estadisticas</title>
</head>
<body>
<div class="margenseparadorlayout">
    <div class="container-fluid">
        <g:if test="${inscripciones}">
        <div class="centrar mb-3"><h3>Listado de inscriptos que faltan por realizar el pago</h3></div>
            <div class="tabla_nth_child">
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
                        <td><div><label id="pago">${it.cupon.pago} </label> </div></td>
                        <td><div><label id="certif">${it.certif.tipoCertif} </label> </div></td>
                    </tr>
                    </g:each>            
                </table>
        </g:if>
        <g:else>  
            <div class="centrar mb-3"><h3>No hay inscriptos que faltan por realizar el pago</h3></div>
        </g:else>  
            </div>
        <div class="centrar">
        <g:link controller="estadisticas" action="inicio" class="btn btn-success">Volver</g:link>
        </div>
    </div>
</div>
</body>
</html>