// 페이지가 로드 되었을때 실행할 것들
$(function(){
	//아이디 입력 칸으로 포커스
	$(".uID").focus();
	//메세지 컬러를 리셋
	$(".msg").css("color","");
	//메세지를 리셋 - 사원번호를 입력하세요
	$(".msg").html("사원 번호 7자리를 입력하세요<br>예 : S000000");

	//사원번호 입력시 체크
	$(".uID").keyup(function(){
		//메세지를 사원 번호용으로 리셋
		$(".msg").css("color","");
		$(".msg").html("사원 번호 7자리를 입력하세요<br>예 : S000000");
		//사원번호는 7자리를 넘지 않는다.
		if($(".uID").val().length > 7 ){
			//7자리가 넘어갈때에 메세지 출력
			$(".msg").css("color","red");
			$(".msg").html("유효하지 않은 입력입니다.");
			//7번째 입력된 값을 삭제한다
			$(".uID").val($(".uID").val().replace(/.$/,''));
		}

		//사원번호 입력값의 유효성 체크 - 대문자 S와 숫자만 입력되게
		$(".uID").val($(".uID").val().replace('s','S').replace(/[^S0-9]/g,''));

		//유효성 체크
		var str = $(".uID").val();
		console.log("STR CHECK : " + strCheck(str,'id'));
		//입력된 값이 7자리이고, S + 0~9의 숫자 6자리일 경우
		if($(".uID").val().length == 7 && strCheck(str,'id')){
			$(".msg").css("color","");
			$(".msg").html("유효한 사원번호 형식입니다.<br>비밀 번호를 입력해주세요.");
			//비밀번호 입력 칸으로 포커스
			$(".uPW").focus();
		}else{
			//유효하지 않을때
			$(".msg").css("color","red");
			$(".msg").html("유효한 사원번호 형식이 아닙니다.<br>예 : S000000");
		}
	});
});

//유효성 체크 함수
function strCheck(str, type){
	var REGEX = {
		//비밀번호는 영어 숫자, 특문을 포함한 8~16자
		PW_RULE: /^(?=.*[a-zA-Z])((?=.*\d)(?=.*\W)).{8,16}$/,
		//사원번호는 대문자 S가 앞에 오고 숫자 6자리
		ID_RULE: /^S[0-9]{6}/
	};

	if (type === "pw") {
		return REGEX.PW_RULE.test(str);
	} else if (type === "id") {
		return REGEX.ID_RULE.test(str);
	} else {
		return false;
	}
}

//로그인 버튼을 눌렀을때
function DoLogin()
{
	//사원 번호가 입력되지 않았을때
	if($(".uID").val() == "")
	{
		alert("아이디를 입력하세요.");
		$(".uID").focus();
		return;
	}
	//비밀 번호가 입력되지 않았을때
	if($(".uPW").val() == "")
	{
		alert("비밀번호를 입력하세요.");
		$(".uPW").focus();
		return;
	}
	
	//입력된 값 콘솔로그로 체크
	console.log('uID : ' + $(".uID").val());
	console.log('uPW : ' + $(".uPW").val());

	//ajax 실행
	$.ajax({
		type 	: "post",
		url 	: "../login/loginok.jsp",
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