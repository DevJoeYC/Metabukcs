<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String usernum = request.getParameter("usernum");
	
	if(usernum == null ||usernum.equals(""))
	{
		return;
	}	
%>
<%@ include file="../db/dbopen.jsp"%>
<%
	String sql="";
	sql="select u_no, u_id from user where u_fno = '"+ usernum +"' ";
	ResultSet result = stmt.executeQuery(sql);
	
	if(result.next() == false)
	{
		out.println("no");
	}else
	{
		//out.println("yes");
		
		String u_no  = result.getString("u_no");
		String u_id  = result.getString("u_id");
		result.close();
		
		//���ǿ� ����
		session.setAttribute("u_no", u_no);
		session.setAttribute("u_id", u_id);
	}

	response.sendRedirect("drinkmenu.jsp");
%>
<%@ include file="../db/dbclose.jsp"%>