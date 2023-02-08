function toggleMenu() {
    let linha1 = document.querySelector('.bnt--mobile-linha-1');
    let linha2 = document.querySelector('.bnt--mobile-linha-2');
    let linha3 = document.querySelector('.bnt--mobile-linha-3');
    let navArea = document.querySelector('.nav--area');

    if (navArea.style.width == '0%') {
        navArea.style.width = '50%';
        linha1.classList.add('active--linha-1');
        linha2.classList.add('active--linha-2');
        linha3.classList.add('active--linha-3');
    } else {
        navArea.style.width = '0%';
        linha1.classList.remove('active--linha-1');
        linha2.classList.remove('active--linha-2');
        linha3.classList.remove('active--linha-3');
    }

}
