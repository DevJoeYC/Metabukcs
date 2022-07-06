<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="meta.dbms.*" %>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%@ page import="meta.util.*" %>
<%
// 파라메터로 넘어올 값들 셋팅
String type = request.getParameter("type");
String uID = request.getParameter("ID");
String uPW = request.getParameter("PW");
//======================== 데이터 유효성 검사 처리 ========  
if(uID == null || uPW == null || uID.equals("") || uPW.equals(""))
{
	//값들 중 하나라도 이상이 있을경우
	out.println("ERROR");
	return;
}

accountDTO dto = new accountDTO();
accountVO user = new accountVO();
user.id(uID);
user.pw(uPW);
user = dto.Login(user);


if(user == null)
{
	//아이디 없음
	out.println("ERROR");
}else
{
	user.info("loginok.jsp");
	//세션에 사용자 로그인 정보를 저장한다.
	session.setAttribute("loginVO", user);
	out.println(user.level());
}
%>