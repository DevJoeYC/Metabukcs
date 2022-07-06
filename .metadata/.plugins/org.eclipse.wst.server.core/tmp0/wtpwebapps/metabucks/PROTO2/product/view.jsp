<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%
SearchVO searchVO = new SearchVO(request);

String no	= request.getParameter("pro_no");

if( no == null || no.equals("") )
{
	%>
	<script>
		window.onload = function()
		{
			alert("올바른 게시물 정보가 아닙니다.");
		}
	</script>
	<%
	return;
}
int pro_no = Integer.parseInt(no);

productsDTO	dto = new productsDTO();
productsVO	pro = null;
pro = dto.GetItem(pro_no);

%>
<table border="1" style="width:100%;">
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">상품번호</td>
		<td><%= pro.pro_no() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">세부상품명</td>
		<td><%= pro.name() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">상품명(한글)</td>
		<td><%= pro.hname() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">상품명(영문)</td>
		<td><%= pro.ename() %></td>
	</tr>

	<%
	if(pro.images().size() != 0)
	{
		for(imageVO item : pro.images())
		{
	%>
	<tr>
		<td colspan="2"><img src="download.jsp?file=<%= item.img_pname() %>&name=<%= item.img_lname() %>" width="100px" height="100px"></td>
	</tr>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">상품이미지</td>
		<td>
			<a href="download.jsp?file=<%= item.img_pname() %>&name=<%= item.img_lname() %>"><%= item.img_lname() %></a><br>
		</td>
	</tr>
	<%
		}
	}
	%>
	<tr>
		<td colspan="2" align="center" style="height:40px;">
		<a href="index.html" class="btn sfn">상품목록으로</a>
		<a href="modify.jsp?pro_no=<%= pro_no %>" class="btn sfn">이미지수정</a>
		</td>
	</tr>
</table>