// Este código de hacer el efecto carousel al dar clic en el campo Siguiente en la página de las preguntas

var slideI = 1;
showSlides(slideI);

function repeat() {
    let contQues = document.getElementsByClassName('container-questions');
    contQues[0].style.animation = 'animar 1s normal';
}

function showSlides(n) {
    let i;
    var btnContinue = document.getElementsByClassName('continue');
    var slides = document.getElementsByClassName('questionGroup');
    let changeInf = document.getElementsByClassName('chInfo');
    let btnFinish = document.getElementsByClassName('finish');
    changeInf[0].style.display = "none";
    btnFinish[0].style.display = "none";
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
        changeInf[0].style.display = "inline-block";
        btnFinish[0].style.display = "inline-block";
    }
}

function pushSlides(n) {
    showSlides(slideI += n);
}