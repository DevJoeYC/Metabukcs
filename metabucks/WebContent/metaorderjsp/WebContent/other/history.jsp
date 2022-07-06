<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
			
String detail = request.getParameter("detail"); 
if(detail == null) detail = "n";			

%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<link type="text/css" rel="stylesheet" href="../css/all.css">
	</head>
	<body>
		<table align=center width=500px>
			<tr style="height:100px;">
				<td colspan="3" align=center>
					<h3>
						<div style="float:left"><a href="index.jsp"><img src="../img/back.png"></a></div>
						�����丮
					</h3>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="background-color:#A6A6A6;" align=center>
					�޴� �ֹ�
				</td>
			</tr>
			<tr>
				<td colspan="4">
			 		<div>
						<select style="width:500px; text-align:center; " name="type">
							<option value="paymentall">�ֹ�����(��ü)</option>
							<option value="paymentcom">�����Ϸ�</option>
							<option value="ready">�غ�Ϸ�</option>
							<option value="paymentcan">�������</option>
						</select>
					</div>
				</td>
			</tr>
			<tr style="background-color:#A6A6A6;">
				<td colspan="4">
					<div style="float:left">2022.04.04 ~ 2022.05.03</div>
					<div style="float:right">
						<a href="<%= detail.equals("y") ? "history.jsp" : "history.jsp?detail=y" %>">����ȸ</a>
					</div>
				</td>
			</tr>
			<%
			if(detail.equals("y"))
			{
				%>
				<tr>
					<td align=center width=175px>
						<a href="#">1����</a>
					</td>
					<td align=center width=175px>
						<a href="#">1��</a>
					</td>
					<td align=center width=175px>
						<a href="#">�Ⱓ����</a>
					</td>
				</tr>
				<tr>
					<td align=center colspan="4">
						<form method="post"name="checkdate" action="">
							<input type="date" name="checkdate1" value="2022-04-06"> ~		
							<input type="date" name="checkdate2" value="2022-05-06">
						</form>		
						<p>���ֱ� 5������� �̷¸� ��ȸ �����մϴ�.</p>	
					</td>
				</tr>
				<tr>
					<td align=center colspan="4">
						<a href="#">��ȸ</a>
					</td>
				</tr>
				<tr>
					<td colspan="4" style="border-top:10px;height:1px;background-color:#000000"></td>
				</tr>
				<tr style="height:800px;" align=center>
					<td colspan="4">
						��ȸ ����� �����ϴ�.
					</td>
				</tr>
				<%	
			}else
			{
				%>
				<tr>
					<td colspan="4" style="border-top:10px;height:1px;background-color:#000000"></td>
				</tr>
				<tr style="height:800px;" align=center>
					<td colspan="4">
						��ȸ ����� �����ϴ�.
					</td>
				</tr>
				<%
			}
			%>	
		</table>
	</body>
</html>