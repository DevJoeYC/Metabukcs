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

String no		= multi.getParameter("pro_no");

System.out.println("no"+no);
int pro_no	= Integer.parseInt(no);
System.out.println("pro_no"+pro_no);

//======================== 게시물 자료 입력  처리 ========

productsDTO	dto = new productsDTO();
productsVO	pro = null;
pro = dto.GetItem(pro_no);

//======================== 첨부파일 등록하기 ========
//업로드된 파일명을 얻는다.
Enumeration files = multi.getFileNames();
ArrayList<imageVO> imgList = new ArrayList<imageVO>();
while( files.hasMoreElements() == true)
{
	System.out.println("called : 첨부파일 등록");
	imageVO img = new imageVO();
	String fileid   = (String)files.nextElement();
	String filename = (String) multi.getFilesystemName(fileid);
	if(filename == null) continue;
	img.setAttach(uploadPath, filename);
	imgList.add(img);
}
pro.images(imgList);
dto.UpdateIMG(pro);

response.sendRedirect("view.jsp?pro_no=" + pro_no);
%>