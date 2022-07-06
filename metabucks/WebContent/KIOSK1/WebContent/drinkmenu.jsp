<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includes/head.jsp" %>
<%
	String dsize = request.getParameter("dsize");
	String shot = request.getParameter("shot");
	String syrup = request.getParameter("syrup");
	String ice = request.getParameter("ice");
%>
<!-- ==================================================================================================================== -->
<tr style="background-color:white;">
	<td colspan="4">
		<table border=0  style="margin : auto; text-align:center; width:100px">
			<tr>
				<td rowspan="3" style="font-size:50px; padding:0px 150px 0px 0px">��</td>
				<td style="padding:60px 80px 50px 40px; width:180px">
					<table border=0>
						<tr>
							<td><a href="option.jsp"><img src="images/drink1.jpg" height="160px" width="160px"></a></td>
						</tr>
						<tr>
							<td style="background-color:#D1DDE2">�Ƹ޸�ī�� <br/> 2,500</td>
						</tr>
					</table>
				</td>
				<td style="padding:60px 10px 50px 180px;width:100px">
					<table border=0>
						<tr>
							<td><a href="option.jsp"><img src="images/drink2.jpg" height="160px" width="160px"></a></td>
						</tr>
						<tr>
							<td style="background-color:#D1DDE2">�Ƹ޸�ī�� <br/> 2,500</td>
						</tr>
					</table>
				</td>
				<td rowspan="3" style="font-size:50px; padding:0px 0px 0px 150px">��</td>
			</tr>
			<tr>
				<td style="padding:60px 10px 50px 40px;width:100px">
					<table border=0>
						<tr>
							<td><a href="option.jsp"><img src="images/drink3.jpg" height="160px" width="160px"></a></td>
						</tr>
						<tr>
							<td style="background-color:#D1DDE2">�Ƹ޸�ī�� <br/> 2,500</td>
						</tr>
					</table>
				</td>
				<td style="padding:60px 10px 50px 180px;width:100px">
					<table border=0>
						<tr>
							<td><a href="option.jsp"><img src="images/drink4.jpg" height="160px" width="160px"></a></td>
						</tr>
						<tr>
							<td style="background-color:#D1DDE2">�Ƹ޸�ī�� <br/> 2,500</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="padding:60px 10px 50px 40px;width:100px">
					<table border=0>
						<tr>
							<td><a href="option.jsp"><img src="images/drink5.jpg" height="160px" width="160px"></a></td>
						</tr>
						<tr>
							<td style="background-color:#D1DDE2">�Ƹ޸�ī�� <br/> 2,500</td>
						</tr>
					</table>
				</td>
				<td style="padding:60px 10px 50px 180px;width:100px">
					<table border=0>
						<tr>
							<td><a href="option.jsp"><img src="images/drink6.jpg" height="160px" width="160px"></a></td>
						</tr>
						<tr>
							<td style="background-color:#D1DDE2">�Ƹ޸�ī�� <br/> 2,500</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td id="bar" height="80px" style="text-align:center; font-size:30px; padding:0px 0px 30px 0px">�ֹ� ����</td>
	<td id="bar" style="width:100%; text-align:right;font-size:35px"><input type="text" readonly style="height:50px;width:80%;text-align:right; font-size:30px" value="3">&nbsp;&nbsp;�� </td>					
</tr>
<tr>
	<td id="bar" height="80px" style="text-align:center;font-size:30px;padding:0px 0px 30px 0px">�ֹ� �ݾ�</td>
	<td id="bar" style="width:100%; text-align:right;font-size:35px"><input type="text" readonly style="height:50px;width:80%;text-align:right; font-size:30px" value="8,000">&nbsp;&nbsp;�� </td>
</tr>
<tr>
	<td id="bar" rowspan="2" style="padding:10px 10px 0px 80px"><a id="orderbtn" href="order.jsp">�ֹ��ϱ�</a></td>
	<td id="bar" rowspan="2" style="padding:10px 10px 0px 180px"><a id="cancelbtn" href="index.jsp">��<br/>��</a></td>		
<!-- ==================================================================================================================== -->
<%@ include file="includes/tail.jsp" %>