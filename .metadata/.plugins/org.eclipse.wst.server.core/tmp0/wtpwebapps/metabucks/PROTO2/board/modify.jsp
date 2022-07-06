<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%@ include file="../include/head.jsp" %>
<%
SearchVO searchVO = new SearchVO(request);

String no = request.getParameter("no");
if( no == null || no.equals(""))
{
	%>
	<script>
		window.onload = function()
		{
			alert("올바른 게시물 정보가 아닙니다.");
			document.location = "index.jsp";
		}
	</script>
	<%
	return;
}
int board_no = Integer.parseInt(no);
//======================== 게시물 자료를 조회한다. ========
BoardDTO dto = new BoardDTO();
boardVO  vo  = dto.Read(board_no, false);
%>
<script>

	window.onload = function()
	{
		$("#title").focus();
	}

	//글쓰기 완료 버튼 클릭시 처리
	function DoModify()
	{
		if($("#title").val() == "")
		{
			alert("제목을 입력하세요.");
			$("#title").focus();
			return;
		}
		if($("#note").val() == "")
		{
			alert("내용을 입력하세요.");
			$("#note").focus();
			return;
		}
		if(confirm("변경된 게시글을 저장하시겠습니까?") != 1)
		{
			return;
		}
		$("#frmModify").submit();
	}

</script>
<table border="0" style="width:100%;">
<tr>
	<td style="height:40px">
		<span style="font-weight:bold; color:red;">※ 글수정</span>
		</td>
	</tr>
</table>
<form id="frmModify" name="frmModify" method="post" action="modifyok.jsp?<%= searchVO.GetPageLink(searchVO.getCurpage()) %>"
	enctype="multipart/form-data">
	<input type="hidden" name="no" value="<%= no %>">
	<table border="0" style="width:100%; margin:0px 0px 0px 0px;padding:0px 0px 0px 0px ; border: 1px;">
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">제목</td>
			<td><input type="text" id="title" name="title" style="width:95%" value="<%= vo.getBoard_title() %>"></td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">구분</td>
			<td>
				<select id="subject" name="subject">
					<%
					if( loginVO.level().equals("1") )
					{
						%><option value="01" <%= vo.getBoard_kind().equals("01") ? "selected" : "" %>>공지</option><%
					}
					%>
					<option value="02" <%= vo.getBoard_kind().equals("02") ? "selected" : "" %>>이벤트</option>
					<option value="03" <%= vo.getBoard_kind().equals("03") ? "selected" : "" %>>설문</option>
				</select>
			</td>
		</tr>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">내용</td>
			<td><textarea id="note" name="note" style="width:95%; height:200px;"><%= vo.getBoard_note() %></textarea></td>
		</tr>
	<%
	if(vo.getAttachs()!=null)
	{
		for(attachVO attach : vo.getAttachs())
		{
	%>
	<tr>
		<td style="width:120px; text-align:center; background-color:#f4f4f4">첨부파일</td>
		<td>
			<a href="download.jsp?file=<%= attach.getAtt_pname() %>&name=<%= attach.getAtt_lname() %>"><%= attach.getAtt_lname() %></a><br>
		</td>
	</tr>
	<%
		}
	}
	%>
		<tr>
			<td style="width:120px; text-align:center; background-color:#f4f4f4">첨부파일</td>
			<td><input name="attach1" type="file" style="width:95%"></td>
		</tr>
		<tr>
			<td colspan="2" style="height:1px;background-color:#cccccc"></td>
		</tr>
		<tr>
			<td style="text-align:center;" colspan="2">
				<!--
				<input type="submit" value="변경 완료">
				-->
				<a href="javascript:DoModify();" class="btn fn">변경완료</a>
			</td>
		</tr>
	</table>
</form>
<%@ include file="../include/tail.jsp" %>
