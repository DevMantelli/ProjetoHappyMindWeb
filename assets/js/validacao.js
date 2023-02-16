function validar(){
    const usuario=document.getElementById("usuario");
    
    if (usuario.value===""){
        alert("Digite um nome");
        return false;
    }
}