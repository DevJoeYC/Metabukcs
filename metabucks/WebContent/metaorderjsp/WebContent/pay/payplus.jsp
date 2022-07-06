<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<link type="text/css" rel="stylesheet" href="../css/all.css">
		<script type="text/javascript" src="/js/jquery-3.6.0.min.js"></script>
	</head>
	<body>
		<table align=center width=500px>
			<tr>
				<td>
					<a href="index.jsp"><img src="../img/back.png"></a>
				</td>
			</tr>
			<tr style="height:100px;">
				<td colspan="4">
					<h2>
						ī���߰�
					</h2>
				</td>
			</tr>
			<tr style="height:500px; ">
				<td colspan="4" valign=top style="box-shadow: 5px 5px 5px 5px gray;">
					<form method="post" action="#" name="payadd">
						<div style="position: relative; left: 80px; top: 100px;">
							ī���<input style="width:245px;" type="text" name="cardname">
						</div> 
						<div style="position: relative; left: 65px; top: 150px;">
							ī���ȣ<input style="width:50px;" type="text" name="cardno1">-<input style="width:50px;" type="text" name="cardno2">-<input style="width:50px;" type="text" name="cardno3">-<input style="width:50px;" type="text" name="cardno4">
						</div>
						<div style="position: relative; left: 98px; top: 200px;">
							CVC<input style="width:245px;" type="text" name="cardno5">
						</div> 
						<div style="position: relative; left: 175px; top: 300px;">
							<a class="btn" href="index.jsp">����ϱ�</a>
						</div>					
					</form>
				</td>
			</tr>
		</table>
	</body>
</html>