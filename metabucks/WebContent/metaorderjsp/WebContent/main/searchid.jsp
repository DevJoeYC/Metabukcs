<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="main_include/header.jsp" %>
		<table align=center width=500px>
			<tr style="height:100px;">
				<td colspan="4">
					<h2>
						<a href="login.jsp"><img src="../img/back.png"></a>
					</h2>
				</td>
			</tr>
			<tr>
				<td>
					<img src="../img/CoffeeLogo.png">
				</td>
			</tr>
			<tr style="height:100px;">
				<td colspan="4">
					<h2>
						���̵� ã��
					</h2>
					<form name="searchid" method="post" action="searchok.jsp">
				</td>
			</tr>
			<tr>
				<td align="center">
					<div><input type="text" style="width:90%;"name="name" placeholder="�̸�"></div>
					<div style="float:left; width:100%;">
						<input type="text" style="width:90%;"name="phonenum" placeholder="�޴�����ȣ">
					</div>
					</form>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="border-top:10px; height:1px;background-color:#A6A6A6"></td>
			</tr>
			<tr>
				<td colspan="3" align=center height=100px; style="width:100px; " >
					<div><a class="btn next" href="searchok.jsp">����</a></div>
				</td>
			</tr>
		</table>
	</body>
</html>