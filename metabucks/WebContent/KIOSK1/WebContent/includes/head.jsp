<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String login_no    = (String) session.getAttribute("u_no");
	String login_name  = (String) session.getAttribute("u_id");
%>
<html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<link rel="stylesheet" href="css/kiosk.css"/>
		<script src="js/jquery-3.6.0.js"></script>
	</head>
	<style>
	
    	</style>
	<body>
		<table border=0  width="100%" height="100%">
			<tr>
				<td id="bar" colspan="2" style="text-align:left;padding:0px 0px 30px 0px"><a style="color: white;text-decoration:none;" href="index.jsp">HOME &nbsp;&nbsp;<img src="images/CoffeeLogo.png" height="100px" width="100px"></a></td>
			</tr>
			<tr>
				<td id="bar" colspan="2" style="text-align:right; width:100px; font-size:25px; padding:0px 20px 30px 0px">
					<%
						if(login_no == null)
						{
							%>
								�ȳ��ϼ���
							<%
						}else
						{
							%>
							( <%= login_name %> )�� ȯ���մϴ�
							<%
						}	
					%>
				</td>
			</tr>
			<tr>
				<td id="bar" height="130px" width="100px" style="text-align:center"><a id="menu" style="color: white" href="drinkmenu.jsp">����</a></td>
				<td id="bar" width="130px" style="text-align:center"><a id="menu" style="color: white" href="sidemenu.jsp">���̵� �޴�</a></td>
			</tr>