var dogescript = require("dogescript");

var dsScripts = Array.from(document.querySelectorAll("script")).filter(function (x) {
    return x.type === "text/dogescript";
});

dsScripts.forEach(function (script) {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == XMLHttpRequest.DONE) {
            eval.call(window, dogescript(xhr.responseText, false, false));
        }
    };
    xhr.open('GET', script.src, true);
    xhr.send();
});
