<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../include/head.jsp" %>
<table border="0" style="width:100%;">
	<%
	String sub_Title = "공지";
	%>
	<%@ include file="sub.jsp" %>
	<%
	sub_Title = "이벤트";
	%>	
	<%@ include file="sub.jsp" %>
	<%
	sub_Title = "설문조사";
	%>		
	<%@ include file="sub.jsp" %>
</table>
<%@ include file="../include/tail.jsp" %>