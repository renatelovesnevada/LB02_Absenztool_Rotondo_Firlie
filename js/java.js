function login() {
    // Assuming a simple check for username and password
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // Replace this with your actual login logic
    if (username === "your_username" && password === "your_password") {
        // Show the main form after successful login
        document.getElementById("loginForm").style.display = "none";
        document.getElementById("absenceForm").style.display = "block";
    } else {
        alert('Ungültige Anmeldedaten. Bitte versuchen Sie es erneut.');
    }
}

function logAbsence() {
    alert('Abwesenheit erfolgreich protokolliert!');
}
/*alert that absence is successful*/
function deleteAbsence() {
    alert('Abwesenheit erfolgreich Gelöscht!');
}
/*alert that absence deleted is successful*/
function viewAbsenceHistory() {
    alert('Abwesenheit am anzeigen...');
}
/*alert that absence is being viewed*/

function logout() {
    // Reset the forms and show the login form
    document.getElementById("loginForm").style.display = "block";
    document.getElementById("absenceForm").style.display = "none";
}