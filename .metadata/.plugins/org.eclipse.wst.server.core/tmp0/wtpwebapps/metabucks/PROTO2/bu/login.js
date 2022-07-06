// 페이지가 로드 되었을때 실행할 것들
$(function(){
	console.log("load : login.js");
});

//로그인 버튼을 눌렀을때
function DoLogin(type)
{
	console.log('type : ' + type);

	//입력된 값 콘솔로그로 체크
	console.log('uID : ' + $(".uID").val());
	console.log('uPW : ' + $(".uPW").val());

	//ajax 실행
	$.ajax({
		type 	: "post",
		url 	: "./login/loginok.jsp",
		dataType: "html",
		data:
		{
			ID: $(".uID").val(),
			PW: $(".uPW").val()
		},
		success : function(data)
		{
			//loginok.jsp가 성공적으로 실행되었음
			//결과 값 트림
			data = data.trim();
			//결과 값이 OK:A 일 경우 = 관리자
			if(data == "관리자")
			{
				//값 체크
				console.log('data : ' + data);
				//JS session 기록
				sessionStorage.setItem("login_LEVEL", "A");
				//웹 페이지를 갱신한다.
				document.location = "../main/index.html";
			}else if(data == "이용자") 	//결과 값이 OK:U 일 경우 = 이용자
			{
				//값 체크
				console.log('data : ' + data);
				//JS session 기록
				sessionStorage.setItem("login_LEVEL", "U");
				//웹 페이지를 갱신한다.
				document.location = "../main/index.html";
			}else
			{
				//값 체크
				console.log('data : ' + data);
				//loginok.jsp가 성공적으로 실행되었으나, 결과가 OK가 아닐 경우
				//메세지에 아이디 비번이 일치 하지 않는다고 표시
				$(".msg").html("아이디 또는 비밀번호가 일치하지 않습니다.<br>");
				$(".msg").css("color","red");
				//사원 번호 입력 칸에 포커스
				$(".uID").focus();
			}
		},
		complete : function(data)
		{
			//alert("DONE");
		},
		erroe : function(data)
		{
			//alert("ERROR");
		}
	});
}