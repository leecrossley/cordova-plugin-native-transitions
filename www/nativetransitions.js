
var exec = require("cordova/exec");

var NativeTransitions = function () {
    this.name = "NativeTransitions";
};

NativeTransitions.prototype.right = function (success, failure) {
    exec(success, failure, "NativeTransitions", "right", []);
};

NativeTransitions.prototype.left = function (success, failure) {
    exec(success, failure, "NativeTransitions", "right", []);
};

module.exports = new NativeTransitions();
