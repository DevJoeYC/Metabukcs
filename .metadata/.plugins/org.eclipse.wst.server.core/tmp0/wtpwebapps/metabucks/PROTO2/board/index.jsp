<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%@ page import="meta.util.*" %>
<%@ include file="../include/head.jsp" %>
<%
request.setCharacterEncoding("UTF-8");
SearchVO	searchVO	= new SearchVO(request);
ListDTO		listDTO		= new ListDTO(searchVO);
Paging		paging		= new Paging(searchVO);
%>
<table border="0" style="width:100%;">
	<tr>
		<td style="height:40px">
			<span style="font-weight:bold; color:red;">
			※ <%= searchVO.getKindName() %>
			</span>
		</td>
	</tr>
	<tr>
		<td style="height:25px; text-align:right;">
			<table border="0" style="width:100%">
				<tr>
					<td align="left">
						<form id="search" name="search" method="get" action="index.jsp">
							<select name="search_kind" onchange="document.search.submit();">
								<option value="01" <%= searchVO.getKind().equals("01") ? "selected" : "" %>>공지</option>
								<option value="02" <%= searchVO.getKind().equals("02") ? "selected" : "" %>>이벤트</option>
								<option value="03" <%= searchVO.getKind().equals("03") ? "selected" : "" %>>설문조사</option>
							</select>
							<select name="search_type">
								<option value="T" <%= searchVO.getType().equals("T") ? "selected" : "" %>>제목</option>
								<option value="C" <%= searchVO.getType().equals("C") ? "selected" : "" %>>내용</option>
								<option value="A" <%= searchVO.getType().equals("A") ? "selected" : "" %>>제목 + 내용</option>
							</select>
							<input type="text" size="10" id="search_key" name="search_key" value="<%= searchVO.getKeyword() %>">
							<a href="javascript:document.search.submit();"><img src="../img/search.png" height="15px"></a>
						</form>
					</td>
					<td width="100px">
						<%
						if(loginVO == null)
						{
							%><a href="javascript:alert('로그인 해야 글쓰기가 가능합니다.');" class="btn fn">글쓰기</a><%
						}else
						{
							%><a href="../board/write.jsp?<%= searchVO.GetPageLink(searchVO.getCurpage()) %>" class="btn fn">글쓰기</a><%
						}
						%>

					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<table border="0" style="width:100%;">
				<tr>
					<td style="height:28px;text-align:center; background-color:#f2f2f2; width: 60px;">번호</td>
					<td style="text-align:center; background-color:#f2f2f2;">제목</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 120px;">작성일</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 80px;">작성자</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 70px;">조회수</td>
				</tr>
				<%
				//게시물의 갯수를 얻는다.
				int total = listDTO.GetTotal();
				listDTO.GetList(searchVO.getCurpage());
				int size = listDTO.GetListTotal();
				int seqno = total - (searchVO.getCurpage() - 1) * 10;
				for(int i=0; i < size; i++)
				{
					boardVO vo = listDTO.GetItem(i);
					%>
					<tr>
						<td style="height:28px;text-align:center;"><%= seqno-- %></td>
						<td><a href="../board/view.jsp?<%= searchVO.GetViewLink(vo.getBoard_no()) %>"><%= vo.getBoard_title() %></a></td>
						<td style="text-align:center;"><%= vo.getBoard_date() %></td>
						<td style="text-align:center;"><%= vo.getno() %></td>
						<td style="text-align:center;"><%= vo.getBoard_hit() %></td>
					</tr>
					<%
				}
				if(total == 0)
				{
					%>
					<tr>
						<td colspan="5" style="background-color:#f4f4f4;height:80px;text-align:center;">
							조회된 자료가 없습니다.
						</td>
					</tr>
					<%
				}
				%>

			</table>
		</td>
	</tr>
	<tr>
		<td style="text-align:center;">
		<%
		paging.setTotal(total, searchVO.getCurpage());

		if(paging.getStartBlock() != 1)
		{
			%>
			<a href="index.jsp?<%= searchVO.GetPageLink(paging.getStartBlock() - 1) %>">이전 블럭</a> |
			<%
		}

		for(int pageno = paging.getStartBlock(); pageno <= paging.getEndBlock(); pageno++)
		{
			if(searchVO.getCurpage() == pageno)
			{
				%><a href="index.jsp?<%= searchVO.GetPageLink(pageno) %>"><span style="color:red; font-weight: bold; background-color:blue;"><%= pageno %></span></a> | <%
			}else
			{
				%><a href="index.jsp?<%= searchVO.GetPageLink(pageno) %>"><%= pageno %></a> | <%
			}
		}

		if(paging.getEndBlock() != paging.getMaxpage())
		{
			%>
			<a href="index.jsp?<%= searchVO.GetPageLink(paging.getEndBlock() + 1) %>">다음 블럭</a> |
			<%
		}
		%>
		</td>
	</tr>
</table>
<%@ include file="../include/tail.jsp" %>