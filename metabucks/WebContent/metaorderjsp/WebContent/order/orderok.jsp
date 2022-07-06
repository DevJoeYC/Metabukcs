<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 

String size = request.getParameter("size");  
if(size == null) size = "t";

%>

<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<link type="text/css" rel="stylesheet" href="../css/all.css">
	</head>
	<body>
		<table border="0" align=center width=500px>
			<tr>
				<td>
					<a href="view.jsp"><img src="../img/back.png"></a>
				</td>
			</tr>
			<tr style="height:100px;">
				<td colspan="4">
					<h2>
						���̽��Ƹ޸�ī��
					</h2>
				</td>
			</tr>
			<tr>
				<td>
					������
				</td>
			</tr>
			<tr align="center">
				<td>
					<a href="orderok.jsp?size=t"><div class="<%= size.equals("t") ? "sel cup size" : "cup size" %>">Tall<div><img src="<%= size.equals("t") ? "../img/selsize.png" : "../img/size.png" %>"></div><div style="font-size:12px;">355ml</div></div></a>
				</td>
				<td>
					<a href="orderok.jsp?size=g"><div class="<%= size.equals("g") ? "sel cup size" : "cup size" %>">Grande<div><img src="<%= size.equals("g") ? "../img/selsize.png" : "../img/size.png" %>"></div><div style="font-size:12px;">473ml</div></div></a>
				</td>
				<td>
					<a href="orderok.jsp?size=v"><div class="<%= size.equals("v") ? "sel cup size" : "cup size" %>">Venti<div><img src="<%= size.equals("v") ? "../img/selsize.png" : "../img/size.png" %>"></div><div style="font-size:12px;">591ml</div></div></a>
				</td>
			</tr>
			<tr>
				<td style="height:80px; ">
					<a href="option.jsp?size=<%= size %>">�ɼ�</a>
				</td>
			</tr>
			<tr style="overflow: hidden;position: fixed;
						background-color: white; /*���ǻ���*/
						bottom: 0;
						height: 12rem;">
							<td width=117px align=center>
								<input type="button" value="-"> 0 <input type="button" value="+">
							</td>
							<td width=300px align=center>
								1,000��
							</td>
						</tr>
			<tr style="position: fixed;
						background-color: white; /*���ǻ���*/
						bottom: 0;
						height: 6rem;">
				<td style="width:150px;"align=center>
					<a href="#"><img src="../img/unlike.png"></a>
				</td>
				<td align=center>
					<a class="btn re" href="index.jsp">���</a>
				</td>
				<td align=center>
					<a class="btn" href="payment.jsp">�ֹ��ϱ�</a>
				</td>
			</tr>
		</table>
	</body>
</html>