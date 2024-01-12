function login() {
    // Assuming a simple check for username and password
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    // test data
    if (username === "your_username" && password === "your_password") {
        // Show the main form after successful login
        document.getElementById("loginForm").style.display = "none";
        document.getElementById("optionsSection").style.display = "flex";
    } else {
        alert('Ungültige Anmeldedaten. Bitte versuchen Sie es erneut.');
    }
}


// abwesenheit protokollieren, löschen ansehen

function logAbsence() {
    showActionContent("logAbsenceContent");
}

function deleteAbsence() {
    showActionContent("deleteAbsenceContent");
}

function viewAbsenceHistory() {
    showActionContent("viewHistoryContent");
}


//button go back
function goBackToOptions() {
    // Show the options section
    document.getElementById("optionsSection").style.display = "flex";

    // Hide all action contents
    var actionContents = document.getElementsByClassName("action-content");
    for (var i = 0; i < actionContents.length; i++) {
        actionContents[i].style.display = "none";
    }
}


function showActionContent(contentId) {
    // Hide options section
    document.getElementById("optionsSection").style.display = "none";

    // Hide all action contents
    var actionContents = document.getElementsByClassName("action-content");
    for (var i = 0; i < actionContents.length; i++) {
        actionContents[i].style.display = "none";
    }

    // Show the specific action content
    document.getElementById(contentId).style.display = "block";
}
var goBackButton = document.getElementById("goBackButton");
if (goBackButton) {
    goBackButton.style.display = "block";
}

//Absence protokollieren
function validateAndSubmit() {
    // Perform your client-side validation here
    var classInput = document.getElementById('class').value;
    var studentInput = document.getElementById('student').value;
    // Add more validation as needed...

    // If validation passes, submit the form
    if (classInput && studentInput) {
        document.getElementById('logAbsenceForm').submit();
    } else {
        // Display an error message or take appropriate action
        alert('Please fill in all required fields.');
    }
}