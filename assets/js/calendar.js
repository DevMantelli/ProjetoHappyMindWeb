let mes = 1, ano = 2022, bissexto = 0;
function mesUp() {
    mes++;
    if (mes > 12) {
        mes = 1;
        ano++;
        document.getElementById('ano').textContent = ano;
    }
    trocarMes();
}
function mesSub() {
    mes--;
    if (mes < 1) {
        mes = 12;
        ano = ano - 1;
        document.getElementById('ano').textContent = ano;
    }
    trocarMes();
}
function trocarMes() {
    if (ano == 2024 || ano == 2028 || ano == 2032) {
        bissexto = 1;
    }
    else {
        bissexto = 0;
    }
    if (mes == 1) {
        document.getElementById('mes').textContent = 'janeiro';
        document.getElementById('d31').style.display = "inline-block";
        document.getElementById('d30').style.display = "inline-block";
        document.getElementById('d29').style.display = "inline-block";
    }
    if (mes == 2 && bissexto == 1) {
        document.getElementById('mes').textContent = 'fevereiro';
        document.getElementById('d31').style.display = "none";
        document.getElementById('d30').style.display = "none";
    }
    if (mes == 2 && bissexto == 0) {
        document.getElementById('mes').textContent = 'fevereiro';
        document.getElementById('d31').style.display = "none";
        document.getElementById('d30').style.display = "none";
        document.getElementById('d29').style.display = "none";
    }
    if (mes == 3) {
        document.getElementById('mes').textContent = 'março';
        document.getElementById('d31').style.display = "inline-block";
        document.getElementById('d30').style.display = "inline-block";
        document.getElementById('d29').style.display = "inline-block";
    }
    if (mes == 4) {
        document.getElementById('mes').textContent = 'abril';
        document.getElementById('d31').style.display = "none";
    }
    if (mes == 5) {
        document.getElementById('mes').textContent = 'maio';
        document.getElementById('d31').style.display = "inline-block";
    }
    if (mes == 6) {
        document.getElementById('mes').textContent = 'junho';
        document.getElementById('d31').style.display = "none";
    }
    if (mes == 7) {
        document.getElementById('mes').textContent = 'julho';
        document.getElementById('d31').style.display = "inline-block";
    }
    if (mes == 8) {
        document.getElementById('mes').textContent = 'agosto';
        document.getElementById('d31').style.display = "inline-block";
    }
    if (mes == 9) {
        document.getElementById('mes').textContent = 'setembro';
        document.getElementById('d31').style.display = "none";
    }
    if (mes == 10) {
        document.getElementById('mes').textContent = 'outubro';
        document.getElementById('d31').style.display = "inline-block";
    }
    if (mes == 11) {
        document.getElementById('mes').textContent = 'novembro';
        document.getElementById('d31').style.display = "none";
    }
    if (mes == 12) {
        document.getElementById('mes').textContent = 'dezembro';
        document.getElementById('d31').style.display = 'inline-block';
    }
}
let vardia = 0;
var data;
function active(dia) {
    if (vardia != 0) {
        document.getElementById('d' + vardia).classList.remove('active');
    }
    document.getElementById('d' + dia).classList.toggle('active');
    vardia = dia;
    data = dia + '/' + mes + '/' + ano;
    document.getElementById('frame').src = 'horarios.aspx?data=' + data;
}