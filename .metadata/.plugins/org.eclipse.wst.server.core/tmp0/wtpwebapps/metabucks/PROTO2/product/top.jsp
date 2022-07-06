<%--
/****************************************************************************************************
 *	작성자 : 함경환
 *	작성일 : 2022-05-20 11:45
****************************************************************************************************/
/****************************************************************************************************
 *	수정자 : 함경환
 *	수정일 : 2022-05-20 11:45
****************************************************************************************************/
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.dbms.*" %>
<%@ page import="meta.dto.*" %>
<%@ page import="meta.vo.*" %>
<%
//메뉴 리스트 VO DTO 생성
productsDTO	dto = new productsDTO();
productsVO	pro = null;
//메뉴 리스트 생성
dto.GetMenuList();
//메뉴 리스트 갯수 산출
int MAX = dto.GetTotal("menu");
System.out.println("메뉴 리스트 갯수 : " + MAX);
//메뉴 리스트 출력
for(int i = 0 ; i < MAX ; i++ )
{
	pro = dto.GetMenuItem(i);
%>
<div class="iBox ibx1st"
	onclick="	clearOption();
				toggle(this);
				selectItem('pro_name','<%= pro.hname() %>');
			setDiv('#end', './product/end.jsp?selected=', '<%= pro.hname() %>')">
<%= pro.hname() %><br>
<%= pro.ename() %>
</div>
<%
}
%>