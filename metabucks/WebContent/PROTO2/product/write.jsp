<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%@ include file="../include/head.jsp" %>
<%
SearchVO searchVO = new SearchVO(request);
%>
<script>

	window.onload = function()
	{
		$("#title").focus();
	}

	//글쓰기 완료 버튼 클릭시 처리
	function DoWrite()
	{
		if($("#title").val() == "")
		{
			alert("제목을 입력하세요.");
			$("#title").focus();
			return false;
		}
		if($("#note").val() == "")
		{
			alert("내용을 입력하세요.");
			$("#note").focus();
			return false;
		}
		if(confirm("새로운 게시글을 저장하시겠습니까?") != 1)
		{
			return false;
		}
	}

</script>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 글쓰기</span>
		</td>
	</tr>
</table>
<form id="frmWrite" name="frmWrite" method="post" action="writeok.jsp?<%= searchVO.GetPageLink(searchVO.getCurpage()) %>"  onsubmit="return DoWrite();"
 	enctype="multipart/form-data">
	<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">제목</td>
			<td><input type="text" id="title" name="title" style="width:95%"></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">구분</td>
			<td>
				<select id="subject" name="subject">
					<option value="01" <%= searchVO.getType().equals("01") ? "selected" : "" %>>공지사항</option>
					<option value="02" <%= searchVO.getType().equals("02") ? "selected" : "" %>>이벤트</option>
					<option value="03" <%= searchVO.getType().equals("03") ? "selected" : "" %>>설문조사</option>
				</select>
			</td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">내용</td>
			<td><textarea id="note" name="note" style="width:95%; height:200px;"></textarea></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">첨부파일</td>
			<td><input name="attach1" type="file" style="width:95%"></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">첨부파일</td>
			<td><input name="attach2" type="file" style="width:95%"></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">첨부파일</td>
			<td><input name="attach3" type="file" style="width:95%"></td>
		</tr>
		<tr>
			<td colspan="2" style="height:1px;background-color:#cccccc"></td>
		</tr>
		<tr>
			<td style="text-align:center;" colspan="2">
				<input type="submit" value="글쓰기 완료">
			</td>
		</tr>
	</table>
</form>
<%@ include file="../include/tail.jsp" %>