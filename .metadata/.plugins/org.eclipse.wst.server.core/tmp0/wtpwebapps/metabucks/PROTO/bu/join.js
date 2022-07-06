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
		$(".msg").html("비밀 번호와 비밀 번호 확인을<br>입력해 주세요.");

		console.log($(".uPW").val() !== $(".cPW").val());
		if($(".uPW").val().length <= $(".cPW").val().length){
			if($(".uPW").val() === $(".cPW").val()){
				$(".msg").css("color","");
				$(".msg").html("비밀 번호와 비밀 번호 확인이<br>일치합니다.");
			}else{
				$(".msg").css("color","red");
				$(".msg").html("비밀 번호와 비밀 번호 확인이<br>일치하지 않습니다.");
			}
		}
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
//			console.log(data);
			if(data == "ERROR")
			{
				$(".msg").html("아이디 조회 오류입니다.<br>");
			}
			if(data == "DUPLICATE")
			{
				$(".msg").html("중복된 아이디입니다.<br>관리자에게 문의하세요");
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
function DoJoin()
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
	//비밀 번호 확인이 입력되지 않았을때
	if($(".cPW").val() == "")
	{
		alert("비밀 번호 확인을 입력하세요.");
		$(".cPW").focus();
		return;
	}
	//비번과 비번확인이 일치하지 않을때
	if($(".uPW").val() !== $(".cPW").val()){
		alert("비밀 번호와 비번 확인이 일치하지 않습니다.");
		$(".cPW").focus();
		return;
	}
	//자동 가입 방지 코드 확인
	if($("#sign").val() == "")
	{
		alert("자동방지가입코드를 입력하세요.");
		$("#sign").focus();
		return;
	}
	//입력된 값 콘솔로그로 체크
	console.log('uID : '  + $(".uID").val());
	console.log('uPW : '  + $(".uPW").val());
	console.log('cPW : '  + $(".cPW").val());
	console.log('sign : ' + $("#sign").val());

	if(IsDuplicated == true)
	{
		alert("중복된 아이디로 회원가입을 할 수 없습니다.");
		return;
	}

	//Ajax로 가동방지 가입코드를 가져온다.
	$.ajax({
		type : "get",
		url: "../join/signok.jsp",
		dataType: "html",
		success : function(sign)
		{
			sign = sign.trim();
			if($("#sign").val() == sign)
			{
				if(confirm("회원 가입을 진행하시겠습니까?") != false)
				{
					console.log("ajax : joinok.jsp");
					//ajax로 joinok.jsp를 실행한다.
					$.ajax({
						type : "POST",
						url: "../join/joinok.jsp",
						dataType: "html",
						data:
						{
							ID: $(".uID").val(),
							PW: $(".uPW").val()
						},
						success : function(data)
						{
							data = data.trim();
							console.log('data : ' + data);
							var str = `
<table style="width:1200px; height:900px; border: 1px solid; margin-left: auto; margin-right:auto;">
	<tr>
		<td style="vertical-align: top;">
			<!-- CONTENT START ======================================================= -->
				<div class="cont" style="height:900px; vertical-align: top; overflow: auto; overflow: scroll;">
					<table border="1" width="400px" style="margin-left: auto; margin-right: auto;">
						<tr>
							<td>사원 번호 </td>
							<td>${data}</td>
						</tr>
						<tr>
							<td colspan="2">
								계정 생성 요청을 완료하였습니다.<br>
								관리자 승인 후 이용 가능합니다.
							</td>
						</tr>
						<tr>
							<td colspan="2" align="right">
								<div class="bx gray"><a href="../main/index.html">홈으로</a></div>
							</td>
						</tr>
					</table>
				</div>
			<!-- CONTENT END ========================================================= -->
		</td>
	</tr>
</table>
`;
							console.log(str);
							$('.fb').html(str);
						}
					});
					return;
				}

			}else
			{
				alert("자동가입 방지코드가 일치하지 않습니다.");
			}
		}
	});
}