JsOsaDAS1.001.00bplist00�Vscript_%var finder = Application('Finder');
app = Application.currentApplication()
app.includeStandardAdditions = true
var makeTwoDigit = function (input) {
	if (input < 10) {
		return "0"+input;
	}
	return input;
}
var date = new Date();
for (var i = 0; i > -8; i--) {
	if (i < 0) {
		date = new Date(date.getTime() - 86400000);
	}
	var filePath = "/Users/fredrik/Dropbox/"+date.getFullYear()+"-"+(makeTwoDigit(date.getMonth() + 1) )+"-"+ makeTwoDigit(date.getDate()) +".md"
	var file = Path(filePath);
	if (finder.exists(file)) {
		finder.open(file);
	}
}                              ; jscr  ��ޭ