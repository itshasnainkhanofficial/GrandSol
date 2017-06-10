



var wage = document.getElementById("wage");
wage.addEventListener("keydown", function (e) {
    if (e.keyCode === 13) {
        validate(e);
    }
});

function validate(e) {
    alert(document.getElementById("wage").value);
}
