<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<tr>
		<td style="height:40px">
			<table border="0" style="width:100%;">
				<tr>
					<td>
						<span style="font-weight:bold; color:red;">※ <%= sub_Title %></span>
					</td>
					<td align="right">
						[ <a href="../board/index.jsp">더보기</a> ]
					</td>					
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td>
			<table border="0" style="width:100%;">
				<tr>
					<td style="text-align:center; background-color:#f2f2f2; width: 60px;">번호</td>
					<td style="text-align:center; background-color:#f2f2f2;">제목</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 80px;">작성일</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 80px;">작성자</td>
					<td style="text-align:center; background-color:#f2f2f2;width: 70px;">조회수</td>						
				</tr>
				<%
				for(int i=1; i <=3; i++)
				{
					%>
					<tr>
						<td style="text-align:center;"><%= i %></td>
						<td><a href="../board/view.jsp">자바 기초 문법에 대한 강의 입니다.</a> <span style="color:#ff6600">(12)</span></td>
						<td style="text-align:center;">2021.11.10</td>
						<td style="text-align:center;">홍길동</td>
						<td style="text-align:center;">10</td>
					</tr>
					<%
				}
				%>				
			</table>							
		</td>
	</tr>
	