<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<link type="text/css" rel="stylesheet" href="css/all.css">
		<script src="../js/jquery-3.6.0.js" ></script>
	</head>
	<body>
	<script>
	$(document).ready(function()
			{ 
				var now = new Date(); 
				var year = now.getFullYear(); 
				var mon = (now.getMonth() + 1) > 9 ? ''+(now.getMonth() + 1) : '0'+(now.getMonth() + 1); 
				var day = (now.getDate()) > 9 ? ''+(now.getDate()) : '0'+(now.getDate());
				
				//�⵵ selectbox����� 
				for(var i = 1900 ; i <= year ; i++) 
				{ 
					$('#year').append('<option value="' + i + '">' + i + '��</option>'); 
				} 
				
				// ���� selectbox ����� 
				for(var i=1; i <= 12; i++) 
				{ 
					var mm = i > 9 ? i : "0"+i ; 
					$('#month').append('<option value="' + mm + '">' + mm + '��</option>'); 
				} 
				
				// �Ϻ� selectbox ����� 
				for(var i=1; i <= 31; i++) 
				{ 
					var dd = i > 9 ? i : "0"+i ; 
					$('#day').append('<option value="' + dd + '">' + dd+ '��</option>'); 
				}
				//���� ��¥ ���
				$("#year > option[value="+year+"]").attr("selected", "true"); 
				$("#month > option[value="+mon+"]").attr("selected", "true"); 
				$("#day > option[value="+day+"]").attr("selected", "true"); 
				})
				
	</script>
		<table align=center width=500px>
			<tr>
				<td>
					<a href="other.html"><img src="img/back.png"></a>
				</td>
			</tr>
			<tr style="height:100px;">
				<td colspan="4">
					<h2>
						�������� ����
					</h2>
				</td>
			</tr>
			<tr>
				<td colspan="4" style="border-top:10px;height:1px;background-color:#000000"></td>
			</tr>
			<tr style="height:100px; ">
				<td colspan="4">
					<div><h4>���̵�</h4></div>
					metabucks**
				</td>
			</tr>
			<tr style="height:100px; ">
				<td colspan="4">
					<div><h4>�̸�</h4></div>
					ȫ*��
					<div style="float:right">���� | ����</div>
				</td>
			</tr>
			<tr style="height:100px; ">
				<td colspan="4" style="align:center;" >
					<div><h4>�������</h4></div>
						<select style="width:100px; text-align-last:center; " name="yy" id="year"></select> 
						<select style="width:100px; text-align-last:center; " name="mm" id="month"></select>
						<select style="width:100px; text-align-last:center; " name="dd" id="day"></select>
						<select style="width:100px; text-align-last:center; " name="sl">
							<option name="s">���</option>
							<option name="l">����</option>	
						</select>
				</td>
			</tr>
			<tr style="height:100px; ">
				<td colspan="4">
					<div><h4>�޴���</h4></div>
					010****7942
				</td>
			</tr>
			<tr>
				<td colspan="4" style="border-top:10px;height:1px;background-color:#000000"></td>
			</tr>
			<tr>
				<td>
					<p style="font-size:12px">�޴��� ��ȣ�� ��Ÿ���� Ȩ���������� ���� �����մϴ�.</p>
				</td>
			</tr>
			<tr>
				<td>
					<p style="font-size:12px"><input type="checkbox" name="SMS">SMS�� ���� �̺�Ʈ �� �ű� ���� ���� ���ſ� �����մϴ�.(����)</p>
				</td>
			</tr>
			<tr style="height:100px; ">
				<td colspan="4">
					<div><h4>����</h4></div>
					<input type="text" size="65px" value="ho*****@naver.com">
				</td>
			</tr>
			<tr>
				<td>
					<p style="font-size:12px"><input type="checkbox" name="email">�̸����� ���� �̺�Ʈ �� �ű� ���� ���� ���ſ� �����մϴ�.(����)</p>
				</td>
			</tr>
			<tr>
				<td align=center>
					<a href="other.html">�������� ����</a>
				</td>
			</tr>
			<tr>
				<td align=center>
					<a href="#">ȸ��Ż��</a>
				</td>
			</tr>
		</table>
	</body>
</html>