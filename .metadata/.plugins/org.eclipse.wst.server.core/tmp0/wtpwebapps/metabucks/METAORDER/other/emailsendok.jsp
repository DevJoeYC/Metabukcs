<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.mail.*" %>
<%
//한글처리
request.setCharacterEncoding("UTF-8");

//String name		= request.getParameter("name");
//String email	= request.getParameter("email");
//String message	= request.getParameter("message");

//System.out.println(name);
//System.out.println(email);
//System.out.println(message);

String MailFrom   = "yuhanbilove@naver.com";
String MailTo     = request.getParameter("email");
String LoginID    = "yuhanbilove@naver.com";
String LoginPW    = "ilove8026";
String Title      = request.getParameter("name");
String Body       = request.getParameter("message");

System.out.println(MailTo);
System.out.println(Title);
System.out.println(Body);
MailSender m = new MailSender();

	if( m.MailSend(MailFrom, MailTo,LoginID,LoginPW,Title,Body) == true)
	{
		%>
		<script>
		window.onload = function()
		{
			alert("성공적으로 메일을 발송하였습니다");
			response.sendRedirect("index.jsp")
			return;
			
		}
		</script>
		<%
		
		//out.print("성공적으로 메일을 발송하였습니다.");	
	}else
	{
	
		%>
		<script>
		window.onload = function()
		{
			alert("메일 전송에 실패하였습니다.");
			response.sendRedirect("../index.jsp")
			return;
		}
		</script>
		<%
		//out.print("메일 발송 오류입니다.");
	}
%>
