<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<script>
	window.onload = function()
	{
		//document.login.userid.focus();
		$("#userid").focus();
	}
	
	function DoLogin()
	{
		if($("#userid").val() == "")
		{
			alert("아이디를 입력하세요.");
			$("#userid").focus();
			return;
		}		
		if($("#userpw").val() == "")
		{
			alert("비밀번호를 입력하세요.");
			$("#userpw").focus();
			return;
		}
		//Ajax로 로그인을 처리한다.
		$.ajax({
			type : "post",
			url: "loginok.jsp",
			dataType: "html",
			data: 
			{
		        id: $("#userid").val(),
		        pw: $("#userpw").val()
		    },	
			success : function(data) 
			{
				data = data.trim();
				if(data == "OK")
				{
					document.location = "../main/index.jsp";
				}else
				{
					$("#spanMsg").html("아이디 또는 비밀번호가 일치하지 않습니다.");
					$("#spanMsg").css("color","red");
				}
			}
		});		
	}
</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 로그인</span>
		</td>
	</tr>
</table>		
<form id="login" name="login" method="post" action="loginok.jsp">
<table border="1" style="width:100%;">
	<tr>
		<td style="text-align:center;width:120px;">아이디 (*) </td>
		<td><input type="text" id="userid" name="userid"></td>
	</tr>
	<tr>
		<td style="text-align:center;width:120px;">비밀번호 (*) </td>
		<td><input type="password" id="userpw" name="userpw"></td>
	</tr>
	<tr>
		<td colspan="2">
			<span id="spanMsg">&nbsp;</span>
		</td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center;">
			 <a href="javascript:DoLogin();" class="btn sfn">로그인 하기</a>
		</td>
	</tr>					
</table>
</form>	
<%@ include file="../include/tail.jsp" %>