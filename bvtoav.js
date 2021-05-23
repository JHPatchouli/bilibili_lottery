a2bEncTable = ["f", "Z", "o", "d", "R", "9", "X", "Q", "D", "S", "U", "m", "2", "1", "y", "C", "k", "r", "6", "z", "B", "q", "i", "v", "e", "Y", "a", "h", "8", "b", "t", "4", "x", "s", "W", "p", "H", "n", "J", "E", "7", "j", "L", "5", "V", "G", "3", "g", "u", "M", "T", "K", "N", "P", "A", "w", "c", "F"];
a2bEncIndex = [11, 10, 3, 8, 4, 6];
a2bXorEnc = 0b1010100100111011001100100100;
a2bAddEnc = 8728348608;
function bvtoav(bv) {
	tmp = 0;
	for (i = 0; i < a2bEncIndex.length; i++) {
		if (a2bEncTable.indexOf(bv[a2bEncIndex[i]]) == -1) {
			return "请输入正确的BV号!（带”BV“）";
		} else {
			tmp += a2bEncTable.indexOf(bv[a2bEncIndex[i]]) * Math.pow(a2bEncTable.length, i);
		}
	}
	tmp = tmp - a2bAddEnc ^ a2bXorEnc;
	return "av" + tmp;
}
function avtobv(av) {
	if (Math.floor(av) == av) {
		tmp = "BV1@@4@1@7@@";
		for (i = 0; i < a2bEncIndex.length; i++) {
			tmp = tmp.substring(0, a2bEncIndex[i]) + a2bEncTable[Math.floor(((av ^ a2bXorEnc) + a2bAddEnc) / Math.pow(a2bEncTable.length, i)) % a2bEncTable.length] + tmp.substring(a2bEncIndex[i] + 1);
		}
		return tmp;
	} else {
		return "请输入正确的AV号！";
	}
}
var a = bvtoav(process.argv[2]);
console.log(a);
return a;
// 作者：丩卩夂忄https: //www.bilibili.com/read/cv5289045/
// 出处：bilibili