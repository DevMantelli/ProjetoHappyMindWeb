function validarConsulta() {
    if (document.form2.Nomeconsulta.value === "" || document.form2.RGconsulta.value === "" || document.form2.Telefoneconsulta.value === "" || document.form2.Emailconsulta.value === "" || document.form2.DataNascimentoconsulta.value === "" || validatorEmail(document.form2.Emailconsulta.value) !== true || validatorRG(document.form2.RGconsulta.value) !== true || validatorCelular(document.form2.Telefoneconsulta.value) !== true || validatorNome(document.form2.Nomeconsulta.value) !== true) {
        if (document.form2.Nomeconsulta.value === "" || validatorNome(document.form2.Nomeconsulta.value) !== true) {
            avisoN.textContent = '*Veja se escreveu o nome corretamente!!';
        }
        else {
            avisoN.textContent = "";
        }
        if (document.form2.RGconsulta.value === "" || validatorRG(document.form2.RGconsulta.value) !== true) {
            avisoC.textContent = '*Veja se escreveu o RG corretamente!!';
        }
        else {
            avisoC.textContent = "";
        }
        if (document.form2.Telefoneconsulta.value === "" || validatorCelular(document.form2.Telefoneconsulta.value) !== true) {
            avisoT.textContent = '*Veja se escreveu o telefone corretamente!!';
        }
        else {
            avisoT.textContent = "";
        }
        if (document.form2.Emailconsulta.value === "" || validatorEmail(document.form2.Emailconsulta.value) !== true) {
            avisoE.textContent = '*Veja se escreveu o email corretamente!!';
        }
        else {
            avisoE.textContent = "";
        }
        if (document.form2.DataNascimentoconsulta.value === "") {
            avisoNA.textContent = '*Você precisa preencher sua Data de Nascimento!!';
        }
        else {
            avisoNA.textContent = "";
        }
        return false;
    }
    else {
        return true;
    }
}
function validatorEmail(Email) {
    let emailPattern =
        /^[_a-zA-Z0-9-]+(\.[_a-zA-Z0-9-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,4})$/;
    return emailPattern.test(Email);
}
function validatorCelular(Celular) {
    var celularPattern = /^\(?(\d{2})\)?[ ]?(\d{5})[-]?(\d{4})$/;
    return celularPattern.test(Celular);
}
function validatorRG(RG) {
    var RGPattern = /^\(?(\d{2})[.]?(\d{3})[.]?(\d{3})[-]?(\d{1})$/;
    return RGPattern.test(RG);
}
function validatorNome(Nome) {
    var nomePattern = /^([a-z A-Z]{2,50})$/;
    return nomePattern.test(Nome);
}
function validatorCFP(CFP) {
    var CFPPattern = /^\(?(\d{3})[.]?(\d{3})[.]?(\d{3})[-]?(\d{2})$/
    return CFPPattern.test(CFP);
}
function validatorCPF(CPF) {
    var CPFPattern = /^\(?(\d{9})[/]?(\d{2})$/
    return CPFPattern.test(CPF);
}