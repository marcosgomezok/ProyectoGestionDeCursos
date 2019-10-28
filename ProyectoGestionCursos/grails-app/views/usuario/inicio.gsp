<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <asset:javascript src="validarCampos.js"/>
    <title>Inicio</title>
</head>
<body>
<div class="container">
<div class="menucentrado">
    <div class="row mb-2">
        <div class="col-md-3"></div>
            <div class="col-md-6">
                <div class="row no-gutters border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
                    <div class="col p-4 d-flex flex-column position-static">
                        <h2>Ingresá tus datos</h2>
                            <g:form method="post" action="login">
                                <div class="control-group">
                                    <label class="control-label" for="usuario">Usuario</label>
                                        <div class="controls">
                                            <input id="usuario" name="usuario" type="text" value="" maxlength="60" required onclick="borrarmsj()">
                                        </div>
                                </div>
                                <div class="control-group">
                                    <label class="control-label" for="password">Contraseña</label>
                                        <div class="controls">
                                            <input id="password" name="password" type="password" value="" maxlength="20" required onclick="borrarmsj()"><br><br>
                                        </div>
                                </div>
                                <div class="control-group">
                                    <div class="controls">
                                        <input id="login" name="login" type="submit" value="Ingresar" class="btn btn-success"><br><br>
                                    </div>
                                </div>
                            </g:form>                        
                            <g:link controller="aspirante" action="alta">Olvidé mi contraseña</g:link>
                            <g:if test="${flash.message}">
                                <div class="update_message" role="status"><label id="msj">${flash.message}</label></div>
                            </g:if>
                    </div>                
                </div>
            </div>
        <div class="col-md-3"></div>
    </div>        
</div>
</div>
</body>
</html>