cordova.define("SimpleMath.MyMath", function(require, exports, module) {
var exec = require('cordova/exec');
var myMathFunc = function(){};  

myMathFunc.prototype.plus = function(arg0, success, error) {
    exec(success, error, "MyMath", "Plus", arg0);
};

myMathFunc.prototype.minus = function(arg0, success, error) {
    exec(success, error, "MyMath", "Minus", arg0);
};

var MYMATHFUNC = new myMathFunc();
module.exports = MYMATHFUNC;
});
