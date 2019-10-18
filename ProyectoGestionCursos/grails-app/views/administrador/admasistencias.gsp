<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>Asistencias</title>
</head>
<body>
<g:if test="${session!=null && session.user!=null}">
  <ul class="topnav"> 
    <li><a class="active" href="/">Inicio</a></li>
    <li><g:link controller="curso" action="alta">Cargar Curso</g:link></li>
    <li><g:link controller="administrador" action="admasistencias">Gestionar Asistencias</g:link></li>
    <li><g:link controller="administrador" action="estadisticas">Gestionar Estadisticas</g:link></li>
    <li class="right"><g:link controller="usuario" action="logout"><i class="fas fa-sign-out-alt"></i> Cerrar sesión</g:link></li>
    <li class="right"><label class="usuario logeado" for="usuario-logeado" ><i class="fas fa-user-tie"></i> Administrador: ${session?.user?.usuario}</label></li>    
  </ul>
</g:if>
<g:else>
  <ul class="topnav">
    <li><a class="active" href="/">Inicio</a></li>
    <li class="right"><g:link controller="usuario" action="inicio"><i class="fas fa-sign-in-alt"></i> Acceder</g:link></li>
    <li class="right"><g:link controller="aspirante" action="alta"><i class="fas fa-user"></i> Registrarse</g:link></li>
  </ul>
</g:else>
</body>
</html>