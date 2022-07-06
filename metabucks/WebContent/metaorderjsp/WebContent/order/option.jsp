<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String size = request.getParameter("size");  %>
    
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
					<a href="orderok.jsp"><img src="../img/back.png"></a>
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
				<td width="125px">
					������
				</td>
			</tr>
			<tr>
				<td width="125px">
					<%
						if( size.equals("t"))
						{
							%>Tall<%
						}else
						{
							%>Grande<%
						}
					%>
				</td>
			</tr>
			<tr>
				<td style="width:125px; height:80px">
					<a href="orderok.jsp">�ɼ�</a>
				</td>
			</tr>
			<tr>
				<td style="width:125px; height:80px">
					<a href="option.jsp?size=<%= size %>&op=c">Ŀ��</a>
				</td>
			</tr>
			<tr>
				<td style="width:125px; height:80px">
					<a href="option.jsp?size=<%= size %>&op=s">�÷�</a>
				</td>
			</tr>
			<tr>
				<td style="width:125px; height:80px">
					<a href="option.jsp?size=<%= size %>&op=b">���̽�</a>
				</td>
			</tr>
			<tr>
				<td style="width:125px; height:80px">
					<a href="option.jsp?size=<%= size %>&op=i">����</a>
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