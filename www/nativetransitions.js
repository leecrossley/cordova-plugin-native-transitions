
var exec = require("cordova/exec");

var NativeTransitions = function () {
    this.name = "NativeTransitions";
};

NativeTransitions.prototype.flip = function (duration, direction, onComplete) {
    var options = {
        "duration": duration,
        "direction": direction
    };
    exec(onComplete, null, "NativeTransitions", "flip", [options]);
};

NativeTransitions.prototype.curl = function (duration, direction, onComplete) {
    var options = {
        "duration": duration,
        "direction": direction
    };
    exec(onComplete, null, "NativeTransitions", "curl", [options]);
};

NativeTransitions.prototype.fade = function (duration, onComplete) {
    var options = {
        "duration": duration
    };
    exec(onComplete, null, "NativeTransitions", "fade", [options]);
};

module.exports = new NativeTransitions();
