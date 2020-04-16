/* 
    Helper functions to add and/or remove "is-valid" & "is-invalid" classes
    from elements
 */
function invalidate(element) {
    element.classList.add("is-invalid");
    element.classList.remove("is-valid");
}
function validate(element) {
    element.classList.remove("is-invalid");
    element.classList.add("is-valid");
}

function verify(name, type) {
    console.log(type);

}

function isValidName(name) {
    if (name.value.trim() == "") {
        return false;
    } else {
        let nameRegExp = new RegExp("[a-z]");
        if (!nameRegExp.test(name.value.toLowerCase())) {
            return false;
        }
    }
    return true;
}

function isValidPassword(password) {
    if (password.value.trim() == "") {
        return false;
    } else {
        let passwordRegExp = new RegExp("(?=^.{8,}$)((?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$");
        if (!passwordRegExp.test(password.value.trim())) {
            return false;
        }
    }
    return true;

}

function isPasswordMatch(password, passwordConf) {
    if (password.value.trim() !== passwordConf.value.trim()) {
        passwordConf.title = "Passwords do not match!";
        passwordConf.classList.add("is-invalid");
        passwordConf.focus();
        return false;
    }

    return true;
}

function isValidEmail(email) {
    if (email.value.trim() == "") {
        return false;
    } else {
        let emailRegExp = new RegExp("[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$");
        if (!emailRegExp.test(email.value.trim())) {
            return false;
        }
    }
    return true;
}

function isValidUsername(username) {
    if (username.value.trim() == "") {
        return false;
    } else {
        let usernameRegEx = new RegExp("^[A-Za-z0-9_]{1,15}$");
        if (!usernameRegEx.test(username.value.trim())) {
            return false;
        }
    }

    return true;
}

function checkUsername(username) {
    /* 
        TODO: Contact the server with an ajax request to check if the username exists
     */
    return true;
}
