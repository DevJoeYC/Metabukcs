<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.dbms.*" %>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%@ page import="meta.test.*" %>

<%
request.setCharacterEncoding("UTF-8");

accountDTO DTO		= new accountDTO();
// 파라메터로 넘어올 값들 셋팅
String ID		= p._P(request, "acount", "id");
String PW		= p._P(request, "acount", "pw");
out.println(ID);
out.println(PW);

//======================== 데이터 유효성 검사 처리 ========  
if(ID == null || PW == null || ID.equals("") || PW.equals(""))
{
	//값들 중 하나라도 이상이 있을경우
	out.println("ERROR");
	return;
}
accountVO vo	= new accountVO(ID,PW,"0");
vo				= DTO.Login(vo);

if(vo == null)
{
	//아이디 없음
	out.println("ERROR account are not exist");
}else
{
	vo.info("loginok.jsp");
	//세션에 사용자 로그인 정보를 저장한다.
	session.setAttribute("loginVO", vo);
	out.println(vo.level_str());
	vo.info("loginok.jsp");
}
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>proto</title>
		<script src="./js/jquery.js"></script>
		<script src="./js/login.js"></script>
	</head>
	<body>
</body>
</html>