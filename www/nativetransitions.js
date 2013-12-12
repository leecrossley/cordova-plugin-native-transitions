
var exec = require("cordova/exec");

var NativeTransitions = function () {
    this.name = "NativeTransitions";
};

NativeTransitions.prototype.right = function (success, failure, duration) {
    exec(success, failure, "NativeTransitions", "right", [{"duration": duration}]);
};

NativeTransitions.prototype.left = function (success, failure, duration) {
    exec(success, failure, "NativeTransitions", "left", [{"duration": duration}]);
};

NativeTransitions.prototype.fade = function (success, failure, duration) {
    exec(success, failure, "NativeTransitions", "fade", [{"duration": duration}]);
};

module.exports = new NativeTransitions();
