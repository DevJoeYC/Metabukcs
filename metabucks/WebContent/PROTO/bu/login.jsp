<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Log in</title>
		<script>
function DoLogin()
{
	if($("#id").val() == "" || $("#id").val() == null)
		
	{
		alert("아이디를 입력하세요.");
		$("#id").focus();
		return;
	}
	if($("#pw").val() == "")
	{
		alert("비밀번호를 입력하세요.");
		$("#pw").focus();
		return;
	}
	
	//로그인 처리
	$.ajax({
		type : "post",
		url: "loginok.jsp",
		dataType: "html",
		data: 
		{
			id: $("#id").val(),
			pw: $("#pw").val()
	    },	
		success : function(data) 
		{
			data = data.trim();
			
			if(data == "OK")
			{
				alert ("ok");
				document.location = "../index.jsp";
			}else
			{
				$("#spanMsg").html("아이디 또는 비밀번호가 일치하지 않습니다.");
				$("#spanMsg").css("color","red");
				
			}
		}
	});	
}
</script>
	</head>
	<body>
	<div>
	<form id="login_fno" name="login_fno" action="loginok.jsp" method="post">
	고유번호 <input id="fno" name="fno" type="text">
	<strong><a href="javascript:DoLogin();">LOGIN</a></strong>
	</form>
	</div>
	
	</body>
</html>