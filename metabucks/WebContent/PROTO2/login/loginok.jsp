<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="meta.dto.*" %>
<%@ page import="meta.vo.*" %>    
<%
String id = request.getParameter("id");
String pw = request.getParameter("pw");

//======================== 데이터 유효성 검사 처리 ========  
if( id == null || pw == null || id.equals("") || pw.equals(""))
{
	out.println("ERROR");
	return;
}
%>
<%
accountDTO DTO		= new accountDTO();
accountVO vo		= new accountVO();
accountVO loginVO	= null;

vo = new accountVO("test","1231");
loginVO = DTO.Login(vo);

if( loginVO == null)
{
	//아이디 없음
	out.println("ERROR");
}else
{
	out.println("OK");	
	//세션에 사용자 로그인 정보를 저장한다.	
	session.setAttribute("login"   ,loginVO);
}
%> 
