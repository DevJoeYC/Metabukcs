/****************************************************************************************************
 *	작성자 : 함경환
 *	작성일 : 2022-05-20 11:45
****************************************************************************************************/

//선택된 메뉴를 str로 strURL의 이름을 가진 페이지에 요청을 보낸다.
//결과 값은 to의 id를 가진 곳에 반영한다
function setDiv(to, strURL, str) {
	//선택된 메뉴를 str로 strURL의 이름을 가진 페이지에 요청을 보낸다.
	$.ajax({
		type		: "POST",
		url			: strURL + str,
		dataType	: "HTML",
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		success		: function (data) {$(to).html(data);},
		complete	: function (data) {},
		error		: function (data) {}
	});
}

function toggle(obj){
	$(obj).parent().children().css({ "background-color" : "silver" });
	$(obj).css({ "background-color" : "white" });
}