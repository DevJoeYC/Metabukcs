<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="meta.vo.*" %>
<%
//로그인 정보를 얻는다.
accountVO loginVO = (accountVO)session.getAttribute("login");
%>    
<!DOCTYPE html>
<html>
	<head>	
		<meta charset="UTF-8">
		<title>게시판 예제</title>
		 <link rel="stylesheet" href="../css/board.css"/>
		 <script src="../js/jquery.js"></script>
	</head>
	<body>
		<table border="1" width="900px" align="center">
			<tr>
				<td colspan="3" style="height:60px;">
					<table border="0" style="width:100%; height:60px;">
						<tr>
							<td>
								<a href="../main/index.jsp">
								<span style="color:red; font-size:15pt; font-weight:bold;">
								메타오더 게시판 입력 폼
								</span>
								</a>
							</td>
							<td style="text-align:right;">
								<%
								if(loginVO == null)
								{
									%>
									<a href="../join/index.jsp" class="btn sfn">회원가입</a>
									<a href="../login/index.jsp" class="btn sfnmore">로그인</a>
									&nbsp;
									<%
								}else
								{
									%>
									( <%= loginVO.name() %> )님 환영합니다.
									[ <%= loginVO.level_str() %> ]
									<a href="../login/logout.jsp" class="btn sfnm">로그아웃</a>
									<%
								}
								%>
							</td>
						</tr>
					</table>
				</td>
			</tr>
			<tr>
				<td style="width:200px" valign="top">
					<div class="submenu"><a href="../board/index.jsp?search_kind=01">공지</a></div>
					<div style="height:2px; background-color:#ffffff;"></div>				
					<div class="submenu"><a href="../board/index.jsp?search_kind=02">이벤트</a></div>
					<div style="height:2px; background-color:#ffffff;"></div>
					<div class="submenu"><a href="../board/index.jsp?search_kind=03">설문조사</a></div>
				</td>
				<td style="width:5px"></td>
				<td valign="top">
					<!-- 컨텐츠 출력 되는곳 -------------------------- -->
					