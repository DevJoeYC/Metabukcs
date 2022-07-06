<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>��Ÿ����</title>
		<link type="text/css" rel="stylesheet" href="../css/all.css">
	</head>
	<body>
		<table align=center width=500px>
			<tr>
				<td>
					<a href="../main/index.jsp"><img src="../img/back.png"></a>
				</td>
			</tr>
			<tr style="height:100px;">
				<td colspan="4">
					<h2>
						What's New
					</h2>
				</td>
			</tr>
			<tr style="height:800px; position:relative;">
				<td colspan="4" style="box-shadow: 5px 5px 5px 5px gray;">
					<div style="position:absolute; top:0%; left:1%;">
						<select style="width:490px;" name="board_kind">
							<option value="all">��ü</option>
							<option value="event">�̺�Ʈ&����</option>
							<option value="notice">��������</option>
						</select>
					</div>
					<div style="position:absolute; top:5%; left:10%;">
						<a href="event.jsp"><img style="border-radius:10px; width:125px; height:75px;" src="https://image.istarbucks.co.kr/upload/promotion/WEB_THUM_20220429124913413.jpg"></a>
						<div style="float:right; padding-top:10px; padding-left:10px; "><a href="event.jsp">22 ���� e-�������� �̺�Ʈ �ȳ�</a><p style="font-size:13px">2022.05.03</p></div>
						<span style="width:100%; border-bottom:1px;"></span>
					</div>
					<div style="position:absolute; top:18%; left:10%;">
						<a href="event.jsp"><img style="border-radius:10px; width:125px; height:75px;" src="https://image.istarbucks.co.kr/upload/promotion/WEB_THUM_20220429124801955.jpg"></a>
						<div style="float:right; padding-top:10px; padding-left:10px; "><a href="event.jsp">22 ���� e-�������� ����ǰ �ȳ�</a><p style="font-size:13px">2022.05.03</p></div>
					</div>
					<div style="position:absolute; top:31%; left:10%;">
						<div style="float:right; padding-top:10px; padding-left:10px; "><a href="event.jsp">22 ���� e-�������� �Ⱓ �ֹ� ���� ���� �ȳ�</a><p style="font-size:13px">2022.05.03</p></div>
					</div>
					<div style="position:absolute; top:44%; left:10%;">
						<a href="event.jsp"><img style="border-radius:10px; width:125px; height:75px;" src="https://image.istarbucks.co.kr/upload/promotion/WEB_THUM_20220321083416501.jpg"></a>
						<div style="float:right; padding-top:10px; padding-left:10px; "><a href="event.jsp">���ں� ç����</a><p style="font-size:13px">2022.05.03</p></div>
					</div>
					<div style="position:absolute; top:57%; left:10%;">
						<div style="float:right; padding-top:10px; padding-left:10px; "><a href="notice.jsp">�ý��� ���� �� ���� �ȳ�</a><p style="font-size:13px">2022.05.03</p></div>
					</div>
				</td>
			</tr>
<%@ include file="board_include/footer.jsp" %>