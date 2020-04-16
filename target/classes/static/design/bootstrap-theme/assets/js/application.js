document.getElementById("profile-pic-upload").onchange = function () {
    var reader = new FileReader();

    reader.onload = function (e) {
        document.getElementById("profile-pic-preview").src = e.target.result;
        document.getElementById("profile-pic-preview").style.objectFit = "cover";
    };

    reader.readAsDataURL(this.files[0]);
}

document.getElementById("bg-pic-upload").onchange = function () {
    var reader = new FileReader();

    reader.onload = function (e) {
        document.getElementById("bg-pic-preview").style.backgroundImage = "url(" + e.target.result + ")";
        document.getElementById("bg-pic-preview").style.objectFit = "cover";
    };

    reader.readAsDataURL(this.files[0]);
}