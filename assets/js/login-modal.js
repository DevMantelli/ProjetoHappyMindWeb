
function bntBack() {
    let loginMod = document.querySelector('.modal--login');

    if (loginMod.style.display == 'flex') {
        loginMod.style.display = 'none';
    }
}

function logingModal() {
    let loginMod = document.querySelector('.modal--login');

    if (loginMod.style.display == 'flex') {
        loginMod.style.display = 'none';

    } else {
        loginMod.style.display = 'flex';
    }
}


