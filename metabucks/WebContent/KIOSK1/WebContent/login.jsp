<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includes/head.jsp" %>
<script>
	window.onload = function()
	{
		$("#title").focus();
	}
</script>
<!-- ==================================================================================================================== -->
<tr>
	<td style="background-color:white;padding:150px 0px 150px 0px" colspan=3>
		<form name="login" method="post" action="loginok.jsp">
		<table id="login" border="0" height="900" width="700" style="margin : auto; text-align:center">
			<tr>
				<td colspan="2"><h2>�α��� �Ͻðڽ��ϱ�?</h2></td>
			</tr>
			<tr>
				<td colspan="2"><img src="images/barcode.png" width="400" height="90"></td>
			</tr>
			<tr>
				<td colspan=2><h3>���ڵ� �Ǵ� ȸ����ȣ�� �Է����ּ���</h3></td>
			</tr>
			
			<tr>
				<td colspan=2><input type="text" name="usernum" style="width:50%; height:50px;font-size:20px;font-weight:bold"></td>
			</tr>
			
			<tr>
				<td width="350px"><span><input type="submit" id="yes" value="��"></span></td>
				<td><span><a id="no" href="drinkmenu.jsp">�ƴϿ�</a></span></td>
			</tr>
		</table>
		</form>
	</td>
<!-- ==================================================================================================================== -->
<%@ include file="../includes/tail.jsp" %>