function claves(clave8){
    if(clave8.length<6 || clave8.length>8){
    alert("Error, la contraseña debe tener entre 6 y 8 caracteres");
    }
}
function reclaves(clave,reclave){
    if(clave!=reclave){
    alert("Error, las contraseñas no son iguales");
    }
}
function tomaclave(){
    let clave2 = document.getElementById("password").value;
    claves(clave2);
}
function tomareclave(){
    let reclave2 = document.getElementById("re_password").value;
    let clave2 = document.getElementById("password").value;
    reclaves(clave2,reclave2);
}

function corchetescuponpago(){
var str = document.getElementById("curso").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("curso").innerHTML = res;
var str = document.getElementById("dni").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("dni").innerHTML = res;
var str = document.getElementById("nombre").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("nombre").innerHTML = res;
var str = document.getElementById("costo").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("costo").innerHTML = res;
var str = document.getElementById("apellido").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("apellido").innerHTML = res;
}

function borrarmsj(){
    document.getElementById("msj").innerHTML = "";
}

function corchetesinscriptosxcurso(){
var str = document.getElementById("nomcurso").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("nomcurso").innerHTML = res;
var str = document.getElementById("nombre").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("nombre").innerHTML = res;
var str = document.getElementById("apellido").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("apellido").innerHTML = res;
var str = document.getElementById("dni").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("dni").innerHTML = res;
var str = document.getElementById("usuario").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("usuario").innerHTML = res;
var str = document.getElementById("email").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("email").innerHTML = res;
var str = document.getElementById("categoria").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("categoria").innerHTML = res;
var str = document.getElementById("tipoins").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("tipoins").innerHTML = res;
var str = document.getElementById("pago").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("pago").innerHTML = res;
var str = document.getElementById("certif").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("certif").innerHTML = res;
}
function corchetespagoInscriptos(){
    var str = document.getElementById("nomcurso").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("nomcurso").innerHTML = res;
    var str = document.getElementById("nombre").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("nombre").innerHTML = res;
    var str = document.getElementById("apellido").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("apellido").innerHTML = res;
    var str = document.getElementById("dni").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("dni").innerHTML = res;
    var str = document.getElementById("usuario").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("usuario").innerHTML = res;
    var str = document.getElementById("email").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("email").innerHTML = res;
    var str = document.getElementById("categoria").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("categoria").innerHTML = res;
    var str = document.getElementById("tipoins").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("tipoins").innerHTML = res;
    var str = document.getElementById("pago").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("pago").innerHTML = res;
    var str = document.getElementById("certif").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("certif").innerHTML = res;
    var str = document.getElementById("curso").innerHTML;
    var res = str.replace("[","").replace("]","");
    document.getElementById("curso").innerHTML = res;
    }
    function corchetescursosxfecha(){

        }
