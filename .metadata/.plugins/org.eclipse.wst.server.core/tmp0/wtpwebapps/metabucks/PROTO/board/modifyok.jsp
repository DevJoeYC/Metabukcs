<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="meta.vo.*" %>
<%@ page import="meta.dto.*" %>
<%@ page import="java.util.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="com.oreilly.servlet.MultipartRequest" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%
request.setCharacterEncoding("UTF-8");
SearchVO searchVO = new SearchVO(request);

String uploadPath = "Z:\\CTEAM\\upload";


String cpath = new File(request.getServletPath()).getParent();
String localPath = application.getRealPath(cpath);

//업로드가 가능한 최대 파일 크기를 지정한다.
int size = 10 * 1024 * 1024;
MultipartRequest multi =
	new MultipartRequest(request,uploadPath,size,
		"UTF-8",new DefaultFileRenamePolicy());

String no		= multi.getParameter("no");
String title	= multi.getParameter("title");
String subject	= multi.getParameter("subject");
String note		= multi.getParameter("note");

int board_no	= Integer.parseInt(no);

System.out.println("title:" + title);
System.out.println("subject:" + subject);
System.out.println("note:" + note);

//======================== 데이터 유효성 검사 처리 ========
if( title == null || subject == null || note == null)
{
	response.sendRedirect("write.jsp");
	return;
}

if( title.equals("") || subject.equals("") || note.equals(""))
{
	response.sendRedirect("write.jsp");
	return;
}

//======================== 세션에서 로그인 정보를 가져온다. ========
//로그인 정보를 얻는다.
accountVO loginVO = (accountVO)session.getAttribute("login");

//======================== 게시물 자료 입력  처리 ========
boardVO vo = new boardVO();
vo.setBoard_no(board_no);
vo.setno(loginVO.no());
vo.setBoard_title(title);
vo.setno(loginVO.no());
vo.setBoard_kind(subject);
vo.setBoard_note(note);

//======================== 첨부파일 등록하기 ========
//업로드된 파일명을 얻는다.
Enumeration files = multi.getFileNames();
ArrayList<attachVO> attachList = new ArrayList<attachVO>();
while( files.hasMoreElements() == true)
{
	attachVO attach = new attachVO();
	String fileid   = (String)files.nextElement();
	String filename = (String) multi.getFilesystemName(fileid);
	if(filename == null) continue;
	attach.setAttach(uploadPath, filename);
	attachList.add(attach);
}
vo.setAttachs(attachList);
BoardDTO dto = new BoardDTO();
dto.Update(vo);

response.sendRedirect("view.jsp?no=" + board_no + "&" + searchVO.GetPageLink(searchVO.getCurpage()));
%>
