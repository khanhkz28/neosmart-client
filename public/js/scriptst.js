let main = document.getElementsByTagName('main');
let brandImage = document.querySelector('.img-home')
let navbar = document.querySelector('.navbar');
const btnToggle = document.querySelector('.navbar-toggler');
const menu = document.getElementsByClassName('nav-menu');
const searchForm = document.querySelector('.form-search');
let navHeight = navbar.clientHeight;

setHeight = () => {
    main[0].style.marginTop = navHeight + "px";
}

btnToggle.addEventListener('click', () => {
    let fullscreen = "100vh";

    if (menu[0].style.height != fullscreen) {
        menu[0].style.height = "100vh";
        btnToggle.innerHTML = '<i class="bi bi-x"></i>';
    }
    else {
        menu[0].style.height = "0px";
        btnToggle.innerHTML = '<i class="bi bi-list"></i>';
    }
})

document.querySelector('.btn-display-search').addEventListener('click', e => {
    searchForm.classList.add('float-in');
})

window.addEventListener('click', e => {
    if (e.target == navbar || e.target == document.querySelector('.collapse'))
        searchForm.classList.remove('float-in');
})

setHeight();

window.onscroll = function () {
    if (document.documentElement.scrollTop > 100) {
        navbar.classList.remove("py-4");
        brandImage.style.height = '1.4rem';
    } else {
        navbar.classList.add("py-4");
        brandImage.style.height = '2rem';

    }
}

window.addEventListener('resize', () => {
    navHeight = navbar[0].clientHeight;
    setHeight();
});
