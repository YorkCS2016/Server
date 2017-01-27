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

	very displayType is maybe ? 'cat' : 'doge'

	very postOb is {}
	postOb.url is "https://api.memetrash.co.uk/" dose concat with displayType
	postOb.crossDomain is true
	postOb.data is {}
	postOb.data.text is query
	postOb.data.quantity is 3

    $ dose post with postOb&
	dose done with much httpData
        very imageCont is document dose createElement with "div"
        imageCont.id is "downloadedImageInner"

        httpData["data"]["images"] dose forEach with much image
            very newImage is document dose createElement with "img"
            newImage.src is image;
            imageCont dose appendChild with newImage
        wow&

        plz setStyle with "downloadedImageOuter" "display" "block"

        very outerImg is document dose getElementById with "downloadedImageOuter"
        outerImg dose replaceChild with imageCont outerImg
        plz hideLoadingScreen
    wow&
	.plz fail with much error
        plz hideLoadingScreen
        plz alert "YOU HAZ ERRORS"
    wow&
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
