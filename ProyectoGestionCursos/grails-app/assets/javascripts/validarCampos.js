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

function validarfechas(){
    var fechaD = document.getElementById('fecha_desde').value
    var fechaH = document.getElementById('fecha_hasta').value
    var fechaL = document.getElementById('fecha_lim_inscrip').value
    var fechaC = document.getElementById('fechadel_certificado').value

    if(fechaD!=""){
        if((new Date(fechaD).getTime()) > (new Date())){    
            if(fechaH!=""){
                if((new Date(fechaH).getTime()) > (new Date(fechaD).getTime())){
                    if(fechaL!=""){
                        if((new Date(fechaD).getTime()) > (new Date(fechaL).getTime())){
                            if(fechaC!=""){
                                if((new Date(fechaC).getTime()) > (new Date(fechaH).getTime())){
                                }
                                else{
                                alert("Fecha del certificado debe ser mayor que la fecha de finalizacion");
                                }
                            }
                        }
                        else{
                        alert("Fecha limite de inscripcion debe ser menor que la fecha de inicio");
                        } 
                    }
                }
                else{
                alert("Fecha Final debe ser mayor que la fecha de inicio");
                }      
            }
        }    
        else{
        alert("Fecha Inicio debe ser mayor que la fecha actual");
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