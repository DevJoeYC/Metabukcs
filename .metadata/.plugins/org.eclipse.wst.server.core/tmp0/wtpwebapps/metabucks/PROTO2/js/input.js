/****************************************************************************************************
 *	작성자 : 함경환
 *	작성일 : 2022-05-20 11:45
****************************************************************************************************/

function setInputNumber(obj,min,max) {
	var num = 0;
	var str = "";
	var targetObj = null;
	if(obj.innerText == "+") {
		targetObj = $(obj).next();
		str = $(targetObj).val();
		num = parseInt(str) + 1;
	}else if(obj.innerText == "-") {
		targetObj = $(obj).prev();
		str = $(targetObj).val();
		num = parseInt(str) - 1;
	}
	
	if(num < min) num = min;
	if(num > max) num = max;
	
	$(targetObj).val(num);
}