JsOsaDAS1.001.00bplist00�Vscript_�var finder = Application('Finder');
var terminal = Application('Terminal');
var makeTwoDigit = function (input) {
	if (input < 10) {
		return "0"+input;
	}
	return input;
}
var today = new Date();
var filePath = "/Users/fredrik/Dropbox/"+today.getFullYear()+"-"+(makeTwoDigit(today.getMonth() + 1) )+"-"+ today.getDate() +".md"
var file = Path(filePath);
if (finder.exists(file)) {
	finder.open(file);
} else {
	terminal.doScript("touch " + filePath);
	finder.open(file);
}                              � jscr  ��ޭ