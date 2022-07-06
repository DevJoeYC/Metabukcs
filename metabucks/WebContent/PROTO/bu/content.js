//content.js가 로드되었을때 실행할 내용들
$(function(){
	console.log('content.js가 로드되었습니다.');

	//세션 스토리지에서 계정권한을 읽어온다.
	var flag = checkLogin();
	console.log('flag = ' + flag);

	//계정 권한 별 화면 구성을 달리 한다.
	switch(flag)
	{
		case 'A': 	// 관리자로 로그인 되어있음
			console.log('관리자 화면 셋팅');
			setDIV(".head", 	"../include/head.jsp");
			setDIV(".nav", 		"../include/nav.html");
			setDIV(".tail", 	"../include/tail.html");
			setDIV(".fb", 		"../include/main.html");
			setDIV(".side", 	"../include/sidemenu.html");
			setDIV(".cont", 	"../include/content.html");
			setDIV(".ICON", 	"../include/iconview.html");
			setDIV(".NOTICE", 	"../notice/list3.jsp");
			setDIV(".BRINGOUT", "../bringout/list3.html");
			setDIV(".ORDER", 	"../order/list3.html");
			setDIV(".BRINGIN", 	"../bringin/list3.html");
			setDIV(".STOCK", 	"../stock/list3.html");
		break;
		case 'U': 	// 이용자로 로그인 되어있음
			console.log('이용자 화면 셋팅');
			setDIV(".head", 	"../include/head.jsp");
			setDIV(".nav", 		"../include/nav.html");
			setDIV(".tail", 	"../include/tail.html");
			setDIV(".fb", 		"../include/main.html");
			setDIV(".side", 	"../include/sidemenu.html");
			setDIV(".cont", 	"../include/content.html");
			setDIV(".ICON", 	"../include/iconview.html");
			setDIV(".NOTICE", 	"../notice/list3.jsp");
			setDIV(".BRINGOUT", "../bringout/list3.html");
			setDIV(".ORDER", 	"../order/list3.html");
			setDIV(".BRINGIN", 	"../bringin/list3.html");
			setDIV(".STOCK", 	"../stock/list3.html");
		break;
		case 'E': 	// 로그인 정보에 에러가 있음
			alert("ERROR");
		break;
		case 'N': 	// 로그인 세션 스토리지가 없음
			console.log('기본 화면 셋팅');
			setDIV(".head", "../include/head.jsp");
			setDIV(".nav",  "../include/nav.html");
			setDIV(".tail", "../include/tail.html");
			setDIV(".fb",   "../include/fullbox.html");
			setDIV(".cont", "../notice/list.jsp");
		break;
	}
});

// 선택한(to) <DIV>에 ajax를 이용해 페이지를 뿌린다.
function setDIV(to,strURL)
{
	$.ajax({
		type 		: "POST",
		url 		: strURL,
		dataType 	: "HTML",
		contentType : "application/x-www-form-urlencoded; charset=UTF-8",
		success : function (data) {
			$(to).html(data);
		},
		complete : function(data)
		{
		},
		error: function(data)
		{
//			alert("ERROR : " + strURL );
		}
	});
}

// 나비 바에 표시할 내용을 셋팅한다.
function setNav(obj, depth) {
	switch(depth)
	{
		case 'home':
			var navlist = "<span class=\"bx gray\"><a href=\"index.html\">홈</a></span>";
			$('#nav').html(navlist);
			$('#nav').css({"font-weight": "bold"});
		break;
		case 'S1':
			var navlist = "";
			navlist += "<span class=\"bx gray\"><a href=\"index.html\">홈</a></span>";
			navlist += " ≫ ";
			navlist += "<span class='bx white' id='navS1'>";
			navlist += "<a href=\"";
			navlist += $(obj).attr('href');
			navlist += "\">";
			navlist += $(obj).text();
			navlist += "</a></span>";
			$('#nav').html(navlist);
			$('#navS1').css({"font-weight": "bolder"});
		break;
		case 'S2':
			console.log($(obj).parent().parent().parent().find('a').attr('href'));
			var navlist = "";
			navlist += "<span class=\"bx gray\"><a href=\"index.html\">홈</a></span>";
			navlist += " ≫ ";
			navlist += "<span class='bx gray' id='navS1'>";
			navlist += "<a href=\"";
			navlist += $(obj).parent().parent().parent().find('a').attr('href');
			navlist += "\">";
			navlist += $(obj).parent().parent().parent().find('span').text();
			navlist += "</a></span>";
			navlist += " ≫ ";
			navlist += "<span class='bx white' id='navS2'>";
			navlist += "<a href=\"";
			navlist += $(obj).attr('href');
			navlist += "\">";
			navlist += $(obj).text();
			navlist += "</a></span>";
			$('#nav').html(navlist);
			$('#navS2').css({"font-weight": "bolder"});
		break;
	}
}