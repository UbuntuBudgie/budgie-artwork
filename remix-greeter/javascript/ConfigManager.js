var ConfigManager = function(greeter) {
    this.greeter = greeter;

    if (typeof Config == 'undefined')
        return;
    if (Config.background) {
        $('body').css('background', "url('" + Config.background + "') no-repeat black").css('background-size', 'cover');
    }
    if (Config.avatar == 'hide') {
        var sheet = document.createElement('style')
        sheet.innerHTML = ".active { margin: 0px 3px 50px 12px !important;}";
        document.body.appendChild(sheet);
    }

};
