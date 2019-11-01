function clavescheck(){
    if(document.getElementById('password').value.length < 6 || document.getElementById('password').value.length > 8){
        alert("Error, la contraseña debe tener entre 6 y 8 caracteres");
    }
    else{
        if((document.getElementById('password').value != document.getElementById('re_password').value) && document.getElementById('re_password').value != ""){
            alert("Error, las contraseñas no son iguales")
        }
    }
}

function validarcupos(){
    var min = document.getElementById('cupo_minimo').value
    var max = document.getElementById('cupo_maximo').value
    if(min != "" &&  max != "")
    {
        if(parseInt(max)<parseInt(min))
            {
                alert("El cupo maximo debe ser mayor que cupo minimo")
            }   
    }
    
}


function borrarmsj(){
    document.getElementById("msj").innerHTML = "";
}

/*
function corchetes(){
var str = document.getElementById("expositores").innerHTML;
var res = str.replace("[","").replace("]","");
document.getElementById("expostirores").innerHTML = res;
}
*/