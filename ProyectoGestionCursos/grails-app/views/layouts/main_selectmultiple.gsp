<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/css/bootstrap-select.min.css">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.13.1/js/bootstrap-select.min.js"></script>

    <asset:stylesheet src="estilos.css"/>
    <g:layoutHead/>
</head>
<body>
  <div class="container-fluid">
    <div id="logo" class="row justify-content-center">
      <img src="http://tecno.unca.edu.ar/wp-content/uploads/2017/05/18575422_10211412467781016_1446490516_o.jpg">                       
    </div>
  </div>
<g:if test="${session!=null && session.user!=null}">
  <ul class="topnav">
    <li><g:link controller="administrador" action="inicio" class="active">Inicio</g:link></li>
    <li><g:link controller="curso" action="inicio">Gestionar cursos</g:link></li>
    <li><g:link controller="expositores" action="inicio">Gestionar expositores</g:link></li>
    <li><g:link controller="autoridadCertificante" action="inicio">Gestionar autoridad cert.</g:link></li>
    <li><g:link controller="Administrador" action="gestionCertificados">Gestionar Certificados</g:link></li>
    <li><g:link controller="Administrador" action="gestionPago">Gestionar Pagos</g:link></li>
    <li><g:link controller="estadisticas" action="inicio">Estadisticas</g:link></li>
    <li class="right"><g:link controller="usuario" action="logout"><i class="fas fa-sign-out-alt"></i> Cerrar sesión</g:link></li> 
    <li class="right"><g:link controller="administrador" action="cuenta"><i class="fas fa-user-tie"></i> Administrador: ${session?.user?.usuario}</g:link></li>    
  </ul>
</g:if>
<g:else>
  <ul class="topnav">
    <li><a class="active" href="/">Inicio</a></li>
    <li class="right"><g:link controller="usuario" action="inicio"><i class="fas fa-sign-in-alt"></i> Acceder</g:link></li>
    <li class="right"><g:link controller="aspirante" action="alta"><i class="fas fa-user"></i> Registrarse</g:link></li>
  </ul>
</g:else>
 <g:layoutBody/>  
    <footer class="footer">
        <div class="container-fluid">
            <p>Copyright 2019-Programación III, Gómez-González.</p>      
        </div>
    </footer> 

</body>
</html>