<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<link type="text/css" rel="stylesheet" href="css/all.css">
	</head>
	<body>
		<table align=center width=500px>
			<tr style="height:100px;">
				<td align=center colspan="3">
					<h3>
						<div style="float:left"><a href="other.html"><img src="img/back.png"></a></div>
						���ڿ�����
					</h3>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="background-color:#A6A6A6;">
					������ �������� ���Ͻø� ��Ʈ�ʿ��� ��û���ּ���.
				</td>
			</tr>
			<tr style="background-color:#A6A6A6;">
				<td colspan="4">
			 		<div style="float:left">�� 0 ��</div>
			 		<div style="float:right">��� �հ� 0��</div>
				</td>
			</tr>
			<tr style="background-color:#A6A6A6;">
				<td colspan="4">
					<div style="float:left">2022.04.04 ~ 2022.05.03</div>
					<div style="float:right">
						<a href="receipt.html">����ȸ</a>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<div>
						<select style="width:500px; text-align:center; " name="type">
							<option value="typeall">�ŷ�����(��ü)</option>
							<option value="char">����</option>
							<option value="pay">����</option>
						</select>
					</div>
				</td>
			</tr>
			<tr>
				<td colspan="4">
					<div>
						<select style="width:500px; text-align:center; " name="type">
							<option value="paymentall">��������(��ü)</option>
							<option value="Deposit">��ġ��</option>
							<option value="Reserves">������</option>
						</select>
					</div>
				</td>
			</tr>
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
		</table>
	</body>
</html>