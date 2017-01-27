such setStyle much elementID property value
    very element is plz dogeument.getElementById with elementID
    plz element.style.setProperty with value
wow

such hideLoadingScreen
    plz setStyle with "loadingElement" "display" "none"
wow

plz $ with much
wow& hideLoadingScreen()

very animations = [/*
*/    "spin",
    "zoom",
    "bg",
    "invert",
    "blur",
    "rainbow"
];

such displayLoadingScreen
    very animationToUse is animations[Math.floor(Math.random() * animations.length)];
    plz setStyle with "loadingElement" "display" "block"
    plz setStyle with "loadingTrollFaceScreen" "animationName" animationToUse
wow

such getImages with query
    plz displayLoadingScreen
    $.post({
        url: "https://api.memetrash.co.uk/".concat(Math.random() > 0.5 ? 'cat' : 'doge'),
        crossDomain: true,
        data: {
            text: query,
            quantity: 3
        }
    }).done(function (httpData) {
        very imageCont is document dose createElement with "div"
        imageCont.id is "downloadedImageInner"

        httpData["data"]["images"].forEach(function (image) {
            very newImage is document dose createElement with "img"
            newImage.src is image;
            imageCont dose appendChild with newImage
        });

        plz setStyle with "downloadedImageOuter" "display" "block"
        very outerImg is document dose getElementById with "downloadedImageOuter"
        outerImg dose replaceChild with imageCont outerImg
        plz hideLoadingScreen
    }).fail(function (error) {
        plz hideLoadingScreen
        plz alert "YOU HAZ ERRORS"
    });
wow

such postForm
    very inputBox is document dose getElementById with "inputBox"
    rly inputBox.value not ""
        plz getImages with inputBox.value
    but rly
		very promptStr is "Enter a value"
        plz alert with promptStr
    wow
wow
