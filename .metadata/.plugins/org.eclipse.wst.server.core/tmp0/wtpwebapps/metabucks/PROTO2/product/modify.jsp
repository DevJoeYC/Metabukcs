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
<script>
//글쓰기 완료 버튼 클릭시 처리
function DoUpdate()
{
	if(confirm("새로운 게시글을 저장하시겠습니까?") != 1)
	{
		return false;
	}
}
</script>
<form id="frmModify" name="frmModify" method="post" action="modifyok.jsp?" onsubmit="return DoUpdate();" enctype="multipart/form-data">
	<input type="hidden" name="pro_no" value="<%= pro_no %>">
	<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">상품번호</td>
			<td><%= pro.pro_no() %></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">세부상품명</td>
			<td><%= pro.name() %></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">상품명(한글)</td>
			<td><%= pro.hname() %></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">상품명(영문)</td>
			<td><%= pro.ename() %></td>
		</tr>
	<%
	if(pro.images().size() != 0)
	{
		for(imageVO item : pro.images())
		{
	%>
	<tr>
		<td colspan="2"><img src="./product/download.jsp?file=<%= item.img_pname() %>&name=<%= item.img_lname() %>" width="100px" height="100px"></td>
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
			<td style="width:120px; text-align:center; background-color:#f4f4f4">상품이미지1</td>
			<td><input name="attach1" type="file" style="width:95%"></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">상품이미지2</td>
			<td><input name="attach2" type="file" style="width:95%"></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">상품이미지3</td>
			<td><input name="attach3" type="file" style="width:95%"></td>
		</tr>
		<tr>
			<td colspan="2" style="height:1px;background-color:#cccccc"></td>
		</tr>
		<tr>
			<td style="text-align:center;" colspan="2">
				<input type="submit" value="변경 완료">
			</td>
		</tr>
	</table>
</form>