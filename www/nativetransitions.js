
var exec = require("cordova/exec");

var NativeTransitions = function () {
    this.name = "NativeTransitions";
};

NativeTransitions.prototype.right = function (success, failure) {
    exec(success, failure, "NativeTransitions", "right", []);
};

NativeTransitions.prototype.left = function (success, failure) {
    exec(success, failure, "NativeTransitions", "left", []);
};

NativeTransitions.prototype.fade = function (success, failure) {
    exec(success, failure, "NativeTransitions", "fade", []);
};

module.exports = new NativeTransitions();
