function changeImage(imageElement) {
    const largeImage = document.getElementById('imatgegran');
    largeImage.src = imageElement.src;
    largeImage.alt = imageElement.alt;
}


function highlightSection(section) {
    // Afegim la classe "highlighted" per canviar l'estil
    section.classList.add('highlighted');

    // Mostrem el text ocult
    const hiddenText = section.querySelector('.hidden-text');
    hiddenText.classList.add('visible');
}

function resetSection(section) {
    // Eliminem la classe "highlighted" per tornar a l'estil inicial
    section.classList.remove('highlighted');

    // Amaguem el text ocult
    const hiddenText = section.querySelector('.hidden-text');
    hiddenText.classList.remove('visible');
}

function startClock() {
    const clockElement = document.getElementById('rellotge');
    let secondsElapsed = 0;

    setInterval(() => {
        secondsElapsed++;
        const minutes = Math.floor(secondsElapsed / 60);
        const seconds = secondsElapsed % 60;

        clockElement.textContent = `Temps: ${minutes < 10 ? '0' : ''}${minutes}:${seconds < 10 ? '0' : ''}${seconds}`;
    }, 1000);
}

window.onload = startClock;

function validatePassword() {
    const pass1 = document.getElementById('password1').value;
    const pass2 = document.getElementById('password2').value;

    if (pass1.length < 8) {
        alert('La contrasenya ha de tenir almenys 8 caràcters.');
        return;
    }

    if (pass1 !== pass2) {
        alert('Les contrasenyes no coincideixen, concentrat i sigues un amb la força.');
        return;
    }

    alert('Contrasenya validada, ets un jedi!');
}

function togglePasswordVisibility(inputId, button) {
    const passwordInput = document.getElementById(inputId);
    const eyeIcon = button.querySelector('.eye-icon');
    
    
    if (passwordInput.type === 'password') {
        passwordInput.type = 'text';
        
    } else {
        passwordInput.type = 'password';
        
    }
}