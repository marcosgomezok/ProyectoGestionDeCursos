<!doctype html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title><g:layoutTitle default="Grails"/></title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous"></head>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
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
        <li><g:link controller="administrador" action="inicio">Inicio</g:link></li>
        <li><g:link controller="curso" action="alta">Alta Cursos</g:link></li>
                <div class="dropdown-menu" aria-labelledby="dropdown01">
                                      <a class="dropdown-item" href="adm_consultar_evento.html">Consultar Evento</a>
                                      <a class="dropdown-item" href="adm_añadir_evento.html">Añadir nuevo Evento</a>
                                      
                </div>
                
        <li><g:link controller="curso" action="muestraCursosModificar">Modifica y Eliminar Cursos</g:link></li>
        <li><g:link controller="curso" action="curso_cargado">Añadir Expositor a Curso</g:link></li>
        <li><g:link controller="expositores" action="altaExpositor">Cargar Expositor</g:link></li>
        <li><g:link controller="expositores" action="listadoExpositores">Listado Expositores</g:link></li>
        <!--<li><g:link controller="inscripcion" action="listadoInscriptos">Estado Inscriptos</g:link></li>
        <li><g:link controller="inscripcion" action="listadoAlumnos">Certificados</g:link></li>
        <li><g:link controller="administrador" action="inicio">Estadisticas</g:link></li> 
        <li><g:link controller="administrador" action="inicio">Alumnos</g:link></li>--> 
        <li><g:link controller="administrador" action="estadisticas">Estadisticas</g:link></li>
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
 <g:layoutBody/>  
    <footer class="footer">
        <div class="container-fluid">
            <p>Copyright 2019-Programación III, Gómez-González.</p>      
        </div>
    </footer> 

</body>
</html>