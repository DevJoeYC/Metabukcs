<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="other_include/header.jsp" %>
<%
if( user == null ) 
{
	response.getWriter().print("<script>alert('로그인 후 이용 바랍니다.'); location.href = 'index.jsp';</script>");
	return;
}
%>
			<tr style="height:250px;">
				<td colspan="4" valign=top style="box-shadow: 5px 5px 5px 5px gray;">
					<div style="float:left"><a href="index.jsp"><img src="../img/back.png"></a></div>
					<h3>
						적립금확인
					</h3>
					<p style="text-align:center"><%= user.name() %> 님의 적립금은 <%= user.point() %> 원 입니다.</p>
				</td>
			</tr>
<%@ include file="other_include/footer.jsp" %>