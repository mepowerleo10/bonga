$(function () {
    $("#datepicker").datepicker({
        changeMonth: true,
        changeYear: true,
        yearRange: "1920:2007",
        dateFormat: "d MM, yy",
        defaultDate: "-13y -1m",
        minDate: "-100y",
        maxDate: "-13y"
    });
});

function createNewUser(user) {
    (
        function () {
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "/signup");
            xhr.setRequestHeader("Content-Type", "application/json");
            xhr.send(JSON.stringify(user));
            xhr.onload = function () {
                if (xhr.status === 200) {
                    console.log("Request was successfull!");
                }
            }
        }()
    );
}

(
    function () {
        var registrationForm = document.getElementById("register");
        var elements = registrationForm.elements;
        var firstName = document.getElementById("first_name");
        var lastName = document.getElementById("last_name");
        var email = document.getElementById("email");
        var username = document.getElementById("username");
        var birthDate = document.getElementById("datepicker");
        var password = document.getElementById("password");
        var passwordConf = document.getElementById("password_conf");
        var gender = document.getElementById("male") === 1 ? document.getElementById("male") : document.getElementById("female");

        firstName.addEventListener("keyup", function (e) {
            isValidName(firstName);
        });
        lastName.addEventListener("keyup", function (e) {
            isValidName(lastName);
        });
        email.addEventListener("keyup", function (e) {
            if (!isValidEmail(email)) {
                invalidate(email);
            } else {
                validate(email);
            }
        });
        password.addEventListener("keyup", function (e) {
            if (!isValidPassword(password)) {
                invalidate(password);
            } else {
                validate(password);
            }
        });
        passwordConf.addEventListener("keyup", function (e) {
            if (!isValidPassword(passwordConf) || !isPasswordMatch(password, passwordConf)) {
                invalidate(passwordConf);
            } else {
                validate(passwordConf);
                passwordConf.title = "Passwords Match";
            }
        });

        username.addEventListener("keyup", function (e) {
            if (!isValidUsername(username)) {
                invalidate(username);
            } else {
                validate(username);
            }
        });

        registrationForm.addEventListener('submit', function (e) {
            e.preventDefault();

            if (!isValidName(firstName)) {
                firstName.focus();
                return false;
            }

            if (!isValidName(lastName)) {
                lastName.focus();
                return false;
            }

            if (!isValidPassword(password)) {
                password.focus();
                return false;
            }

            if (!isValidPassword(passwordConf)) {
                passwordConf.focus();
                return false;
            }

            if (!isPasswordMatch(password, passwordConf)) {
                return false;
            }

            if (!isValidEmail(email)) {
                return false;
            }

            if (!isValidUsername(username)) {
                return false;
            }

            if (birthDate.value.trim() == "") {
                birthDate.focus();
                return false;
            }

            if (gender.value.trim() == "") {
                gender.focus();
                return false;
            }

            let termsAndConds = document.getElementById("terms_and_conditions");
            if (termsAndConds.value.trim() == "") {
                termsAndConds.focus();
                return false;
            }

            var dob = Date.parse(birthDate.value);
            dob = new Date(birthDate);
            console.log(`dob.getDate()-`);

            var user = {
                username: username.value.trim(),
                firstName: firstName.value.trim(),
                lastName: lastName.value.trim(),
                email: email.value.trim(),
                password: password.value.trim(),
                passwordConf: passwordConf.value.trim(),
                birthDate: birthDate.value.trim()
            };

            createNewUser(user);
        })
    }()
);
