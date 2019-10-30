<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main_aspirante"/>
    <title>Mi certificado</title>
</head>
<body>
<form class="form">
<div class="container">
    <div class="margenseparadorlayouttop">
        <div class="row">
            <div class="col-md-12">
                <div class="row no-gutters border rounded overflow-hidden flex-md-row shadow-sm h-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <div class="row justify-content-center">
                            <asset:image src="logo FTyCA.png" height="200px" width="200px"/>                      
                        </div>
                        <div class="menucentradocurso">
                            <h2><b>UNIVERSIDAD NACIONAL DE CATAMARCA</b></h2>
                            <h3>Factultad de Tecnología y Ciencias Aplicadas</h3>
                        </div>
                        <div class="certif">
                            <h5>Por el presente se certifica que: <b>${inscripcion.asp.apellido}, 
                            ${inscripcion.asp.nombre}</b>. D.N.I N°: <b>${inscripcion.asp.dni}</b>, 
                            PARTICIPÓ en <b>"${inscripcion.curso.nombre}"</b>, desarrollado desde
                            <g:formatDate format="dd/MM/yyyy" date="${inscripcion.curso.fecha_desde}"/> hasta 
                            <g:formatDate format="dd/MM/yyyy" date="${inscripcion.curso.fecha_hasta}"/> en 
                            ${inscripcion.curso.lugar}, de la Facultad de Tecnología y Ciencias Aplicadas. Por lo tanto se expide el presente certificado de 
                            <b>${inscripcion.certif.tipoCertif}</b> que así lo acredita.</h5>
                        </div>
                        <div class="fechacertif">
                            <h6>San Fernando del Valle de Catamarca, <g:formatDate format="MMMMMMMMMM 'de' yyyy" date="${inscripcion.curso.fechadel_certificado}"/>.</h6>
                        </div>
                        <div class="centrar">
                            <table style="border: none">
                            <tr style="border: none">
                            <g:each in="${inscripcion.curso?.aut}">                
                            <td style="border: none">
                                
                                <img  src="${createLink(controller: 'AutoridadCertificante', action: 'verImagen', id:"${it.id}")}" width="150px" height="38px"/><br>
                                <h6>${it.apellido} ${it.nombre}<br>
                                ${it.cargo} de FTyCA</h6>      
                            </td>
                            </g:each>
                            </tr>
                            </table>
                        </div>
                        </div>                 
                    </div>                
                </div>
            </div>
        </div>
    </div>
</div>
</form>
    <div class="submenucentradocurso">
        <input type="button" id="create_pdf" value="Generar PDF" class="btn btn-success">
    </div>
    <div class="submenucentradocurso">
        <g:link controller="aspirante" action="miscertificados" class="btn btn-success">Volver</g:link>
    </div>
<script src="https://code.jquery.com/jquery-1.12.4.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.3.5/jspdf.min.js"></script>
<asset:javascript src="HTMLaPDF.js"/>
</body>
</html>