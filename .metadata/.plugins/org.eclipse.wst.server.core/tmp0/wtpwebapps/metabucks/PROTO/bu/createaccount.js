var IsDuplicated = false;
// 페이지가 로드 되었을때 실행할 것들
$(function(){
	//사원 번호 입력 칸으로 포커스
	$(".uID").focus();

	//사원번호 입력시 체크
	$(".uID").keyup(function(){
		//메세지를 사원 번호용으로 리셋
		$(".msg").css("color","").html("사원 번호 7자리를 입력하세요<br>예 : S000000");
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
			//중복된 계정인지 체크한다
			checkDuplicate($(".uID").val());
		}else{
			//유효하지 않을때
			$(".msg").css("color","red");
			$(".msg").html("유효한 사원번호 형식이 아닙니다.<br>예 : S000000");
		}
	});

	//비밀 번호 확인 입력시 체크
	$(".cPW").keyup(function(){
		$(".msg").css("color","");
		$(".msg").html("비밀 번호를 입력해 주세요");
	});
});

function checkDuplicate(id){
	//사원 번호로 생성된 계정이 있는지 체크한다.
	IsDuplicated = false;
	console.log('function : checkDuplicate ');
	console.log('id : '+ id);
//	console.log('IsDuplicated : '+ IsDuplicated);
	//ajax로 idcheck.jsp 호출
	$.ajax({
		type : "get",
		url: "../join/idcheck.jsp?id=" + id,
		dataType: "html",
		success : function(data)
		{
			data = data.trim();
			if(data == "ERROR")
			{
				$(".msg").html("아이디 조회 오류입니다.<br>");
			}
			if(data == "DUPLICATE")
			{
				$(".msg").html("중복된 아이디입니다.");
				IsDuplicated = true;
			}else
			{
				$(".msg").html("사용 가능한 아이디입니다.<br>사용할 비밀 번호를 입력하세요");
				$(".uPW").focus();
			}
		}
	});
}

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

//계정 생성하기 버튼을 눌렀을때
function createAccount()
{
	//사원 번호가 입력되지 않았을때
	if($(".uID").val() == "")
	{
		alert("사원 번호를 입력하세요.");
		$(".uID").focus();
		return;
	}
	//비밀 번호가 입력되지 않았을때
	if($(".uPW").val() == "")
	{
		alert("비밀 번호를 입력하세요.");
		$(".uPW").focus();
		return;
	}
	//계정 권한이 입력되지 않았을때
	if($(".level").val() == "")
	{
		alert("계정 권한을 선택하세요");
		return;
	}
	//계정 활성 상태가 선택되지 않았을때
	if($(".flag").val() == "")
	{
		alert("활성 상태를 선택하세요");
		return;
	}
	//사원 성명이 입력되지 않았을때
	if($(".name").val() == "")
	{
		alert("성명을 입력하세요.");
		$(".name").focus();
		return;
	}
	//직급이 입력되지 않았을때
	if($(".rank").val() == "")
	{
		alert("직급을 입력하세요.");
		$(".rank").focus();
		return;
	}
	//직책이 입력되지 않았을때
	if($(".title").val() == "")
	{
		alert("직책을 입력하세요.");
		$(".title").focus();
		return;
	}
	//소속1이 선택되지 않았을때
	if($(".div1").val() == "")
	{
		alert("소속1을 선택하세요");
		$(".div1").focus();
		return;
	}
	//소속2가 선택되지 않았을때
	if($(".div2").val() == "")
	{
		alert("소속2를 선택하세요");
		$(".div2").focus();
		return;
	}
	//표시 이름이 입력되지 않았을때
	if($(".display_name").val() == "")
	{
		alert("표시 이름을 입력하세요");
		$(".display_name").focus();
		return;
	}

	//입력된 값 콘솔로그로 체크
	console.log('uID : ' 			+ $(".uID").val());
	console.log('uPW : ' 			+ $(".uPW").val());
	console.log('level : ' 			+ $("#level option:selected").val());
	console.log('flag : ' 			+ $("#flag option:selected").val());
	console.log('name : ' 			+ $(".name").val());
	console.log('rank : ' 			+ $(".rank").val());
	console.log('title : ' 			+ $(".title").val());
	console.log('div1 : ' 			+ $("#div1 option:selected").val());
	console.log('div2 : ' 			+ $("#div2 option:selected").val());
	console.log('display_name : ' 	+ $(".display_name").val());

	var uID				= $(".uID").val();
	var uPW				= $(".uPW").val();
	var alevel			= $("#level option:selected").val();
	var aflag			= $("#flag option:selected").val();
	var uname			= $(".name").val();
	var jrank			= $(".rank").val();
	var jtitle			= $(".title").val();
	var Div1			= $("#div1 option:selected").val();
	var Div2			= $("#div2 option:selected").val();
	var Display_name	= $(".display_name").val();

	//사원 번호 중복 체크
	checkDuplicate($(".uID").val());
	if(IsDuplicated == true)
	{
		alert("중복된 아이디로 회원가입을 할 수 없습니다.");
		return;
	}

	if(confirm("회원 가입을 진행하시겠습니까?") != false)
	{
		console.log("ajax : create account.jsp");
		//ajax로 joinok.jsp를 실행한다.
		$.ajax({
			type : "POST",
			url: "../join/caccount.jsp",
			dataType: "html",
			data:
			{
				ID: 			uID,
				PW: 			uPW,
				level: 			alevel,
				flag: 			aflag,
				name: 			uname,
				rank: 			jrank,
				title: 			jtitle,
				div1: 			Div1,
				div2: 			Div2,
				display_name: 	Display_name
			},
			success : function(data)
			{
				data = data.trim();
				if(data == "C")
				{
					var str = `계정 생성이 완료되었습니다.<span class="bx grn"><a href="javascript:setDIV('.cont', '../account/user_info.jsp?eNO=${uID}');">정보확인</a></span>`;
					$(".msg").html(str);
				}else if(data == "D")
				{
					$(".msg").html("계정이 중복되었습니다.");
				}
			},
			error: function(data)
			{
				$(".msg").html("에러가 발생했습니다.");
			}
		});
		return;
	}
}