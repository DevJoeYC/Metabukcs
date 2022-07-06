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

BoardDTO dto = new BoardDTO();
boardVO  vo  = dto.Read(board_no, true);
%>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">※ 글보기</span>
		</td>
	</tr>
</table>
<table border="1" style="width:100%;">
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">제목</td>
		<td><%= vo.getBoard_title() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">작성자</td>
		<td><%= vo.getno() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">작성일</td>
		<td><%= vo.getBoard_date() %></td>
	</tr>
	<tr>
		<td style="background-color:#f4f4f4; width:120px;">조회수</td>
		<td><%= vo.getBoard_hit() %>회</td>
	</tr>
	<tr>
		<td colspan="2">
			<%= vo.getBoard_note() %>
		</td>
	</tr>
	<%
	if(vo.getAttachs()!=null)
	{
		for(attachVO attach : vo.getAttachs())
		{
	%>
	<tr>
		<td colspan="2"><img src="download.jsp?file=<%= attach.getAtt_pname() %>&name=<%= attach.getAtt_lname() %>" width="100px" height="100px"></td>
	</tr>
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
		<td colspan="2" align="center" style="height:40px;">
		<a href="index.jsp?<%= searchVO.GetPageLink(searchVO.getCurpage()) %>" class="btn sfnnomal">글목록</a>
		&nbsp;
		<%
		if(loginVO != null)
		{
			if( loginVO.level().equals("1") || loginVO.no() == vo.getno() )
			{
				//관리자 권한이거나 글을 작성한 본인인 경우....
				%>
				&nbsp;|&nbsp;
				<a href="modify.jsp?no=<%= no %>&<%= searchVO.GetPageLink(searchVO.getCurpage()) %>" class="btn sfn">글수정</a>
				&nbsp;|&nbsp;
				<a href="delete.jsp?no=<%= no %>&<%= searchVO.GetPageLink(searchVO.getCurpage()) %>" class="btn sfnm">글삭제</a>
				<%
			}
		}
		%>
		</td>
	</tr>
</table>
<%@ include file="comment.jsp" %>
<%@ include file="../include/tail.jsp" %>