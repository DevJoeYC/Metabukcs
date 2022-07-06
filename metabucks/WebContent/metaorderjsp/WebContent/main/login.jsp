<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="main_include/header.jsp" %>
		<table align=center width=500px>
			<tr>
				<td>
					<a href="index.jsp"><img src="../img/back.png"></a>
				</td>
			</tr>
			<tr style="height:100px;">
				<td colspan="4">
					<h2>
						�α���
					</h2>
				</td>
			</tr>
			<tr>
				<td>
					<div><img src="../img/CoffeeLogo.png"></div>
				</td>
			</tr>
			<tr style="height:200px;">
				<td colspan="4">
					<h2>
						�ȳ��ϼ���.<br>
						��Ÿ�����Դϴ�.
					</h2>
					<h4>ȸ�� ���� �̿��� ���� �α��� ���ּ���.</h4>
				</td>
			</tr>
			<tr>
				<td align=center>
					<form name="login" method="post" action="loginok.jsp">
						<div><input type="text" style="width:90%;" name="id" placeholder="���̵�"></div>
						<div><input type="password" style="width:90%;"name="pw" placeholder="��й�ȣ"></div>
					</form>
				</td>
			</tr>
			<tr>
				<td align=center>
					<a href="searchid.jsp">���̵�ã��</a> | <a href="searchpw.jsp">��й�ȣã��</a>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="border-top:10px; height:1px;background-color:#A6A6A6"></td>
			</tr>
			<tr>
				<td colspan="3" align=center height=100px; >
					<div><a class="btn" href="index.jsp">�α����ϱ�</a></div>
				</td>
			</tr>
		</table>
	</body>
</html>