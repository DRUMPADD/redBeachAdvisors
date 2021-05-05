// let i = 0;
// while(i <= 14) {
//     console.log(i * 100 / 14);
//     i++;
// }


var slideI = 1;
showSlides(slideI);

function showSlides(n) {
    let i;
    var btnContinue = document.getElementsByClassName('continue');
    var slides = document.getElementsByClassName('questionGroup');
    if (n > slides.length) {
        slideI = 1;
    }

    if(n < 1) {
        slideI = slides.length;
    }

    for(i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }

    slides[slideI - 1].style.display = "block";

    if(n == slides.length) {
        btnContinue[0].style.display = "none";
    }
}

function pushSlides(n) {
    showSlides(slideI += n);
}