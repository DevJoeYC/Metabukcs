<%--
/****************************************************************************************************
 *	작성자 : 함경환
 *	작성일 : 2022-05-20 11:45
****************************************************************************************************/
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>   
<%@ page import="meta.dbms.*" %> 
<%@ page import="meta.dto.*" %>
<%@ page import="meta.vo.*" %>
<%
request.setCharacterEncoding("UTF-8");	
//top에서 넘어온 메뉴 선택값을 읽는다.
String sel = request.getParameter("selected");
//======================== 데이터 유효성 검사 처리 ========  
if(sel == null || sel == null) { out.println("ERROR"); return; }

//선택된 메뉴의 상품 리스트를 DB에서 읽고 객체를 생성한다.
productsDTO	dto = new productsDTO();
productsVO	pro = null;
dto.GetProList(sel);

//상품 리스트 갯수 산출
int MAX = dto.GetTotal("pro");
System.out.println("상품 리스트 갯수 : " + MAX);

//상품 리스트 출력
for(int i = 0 ; i < MAX ; i++ )
{
	pro = dto.GetProItem(i);
%>
<div class="iBox"
	 onclick="	clearOption();
	 			toggle(this);
	 			selectItem('pro_name','<%= sel %>');
	 			selectItem('pro_no','<%= pro.pro_no() %>');
	 			selectItem('div_name','<%= pro.name() %>');
	 			selectItem('sel_price','<%= pro.price() %>')">
<%= pro.name() %><br>
<%= pro.volume() %> <%= pro.unit() %><br>
<%= pro.price() %>
</div>
<%
}
%>