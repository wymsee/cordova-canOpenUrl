/**
 * A plugin to check iOS URL schemes for Cordova
 * 
 * Developed by Wymsee for Sync OnSet
 */

 var CanOpenURL = function() {

 };

var exec = require('cordova/exec');

CanOpenURL.prototype.check = function(success, fail, url) {
	return exec(success, fail, "CanOpenURL", "checkURL", [url]);
};

CanOpenURL.prototype.open = function(success, fail, url) {
	return exec(success, fail, "CanOpenURL", "openURL", [url]);
};

window.canOpenURL = new CanOpenURL();