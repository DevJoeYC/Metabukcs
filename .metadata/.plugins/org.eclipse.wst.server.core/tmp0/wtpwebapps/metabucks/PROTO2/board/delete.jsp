<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%
SearchVO searchVO = new SearchVO(request);
String board_no = request.getParameter("no");
if(board_no == null)
{
	response.sendRedirect("index.jsp");
	return;
}
BoardDTO dto = new BoardDTO();
dto.Delete(board_no);
response.sendRedirect("index.jsp?" + searchVO.GetPageLink(1));
%>

