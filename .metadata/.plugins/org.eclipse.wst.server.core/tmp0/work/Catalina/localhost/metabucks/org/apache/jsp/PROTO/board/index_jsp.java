/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-05-25 07:31:19 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.PROTO.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import meta.vo.*;
import meta.dto.*;
import meta.util.*;
import meta.vo.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/PROTO/board/../include/tail.jsp", Long.valueOf(1653445565585L));
    _jspx_dependants.put("/PROTO/board/../include/head.jsp", Long.valueOf(1653450823827L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("meta.vo");
    _jspx_imports_packages.add("meta.dto");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("meta.util");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

//로그인 정보를 얻는다.
accountVO loginVO = (accountVO)session.getAttribute("login");

      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("	<head>	\r\n");
      out.write("		<meta charset=\"UTF-8\">\r\n");
      out.write("		<title>게시판 예제</title>\r\n");
      out.write("		 <link rel=\"stylesheet\" href=\"../css/board.css\"/>\r\n");
      out.write("		 <script src=\"../js/jquery.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("		<table border=\"1\" width=\"900px\" align=\"center\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td colspan=\"3\" style=\"height:60px;\">\r\n");
      out.write("					<table border=\"0\" style=\"width:100%; height:60px;\">\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td>\r\n");
      out.write("								<a href=\"../main/index.jsp\">\r\n");
      out.write("								<span style=\"color:red; font-size:15pt; font-weight:bold;\">\r\n");
      out.write("								메타오더 게시판 입력 폼\r\n");
      out.write("								</span>\r\n");
      out.write("								</a>\r\n");
      out.write("							</td>\r\n");
      out.write("							<td style=\"text-align:right;\">\r\n");
      out.write("								");

								if(loginVO == null)
								{
									
      out.write("\r\n");
      out.write("									<a href=\"../join/index.jsp\" class=\"btn sfn\">회원가입</a>\r\n");
      out.write("									<a href=\"../login/index.jsp\" class=\"btn sfnmore\">로그인</a>\r\n");
      out.write("									&nbsp;\r\n");
      out.write("									");

								}else
								{
									
      out.write("\r\n");
      out.write("									( ");
      out.print( loginVO.name() );
      out.write(" )님 환영합니다.\r\n");
      out.write("									[ ");
      out.print( loginVO.level_str() );
      out.write(" ]\r\n");
      out.write("									<a href=\"../login/logout.jsp\" class=\"btn sfnm\">로그아웃</a>\r\n");
      out.write("									");

								}
								
      out.write("\r\n");
      out.write("							</td>\r\n");
      out.write("						</tr>\r\n");
      out.write("					</table>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td style=\"width:200px\" valign=\"top\">\r\n");
      out.write("					<div class=\"submenu\"><a href=\"../board/index.jsp?search_kind=01\">공지</a></div>\r\n");
      out.write("					<div style=\"height:2px; background-color:#ffffff;\"></div>				\r\n");
      out.write("					<div class=\"submenu\"><a href=\"../board/index.jsp?search_kind=02\">이벤트</a></div>\r\n");
      out.write("					<div style=\"height:2px; background-color:#ffffff;\"></div>\r\n");
      out.write("					<div class=\"submenu\"><a href=\"../board/index.jsp?search_kind=03\">설문조사</a></div>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td style=\"width:5px\"></td>\r\n");
      out.write("				<td valign=\"top\">\r\n");
      out.write("					<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write("					");
      out.write('\r');
      out.write('\n');

request.setCharacterEncoding("UTF-8");
SearchVO	searchVO	= new SearchVO(request);
ListDTO		listDTO		= new ListDTO(searchVO);
Paging		paging		= new Paging(searchVO);

      out.write("\r\n");
      out.write("<table border=\"0\" style=\"width:100%;\">\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td style=\"height:40px\">\r\n");
      out.write("			<span style=\"font-weight:bold; color:red;\">\r\n");
      out.write("			※ ");
      out.print( searchVO.getKindName() );
      out.write("\r\n");
      out.write("			</span>\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td style=\"height:25px; text-align:right;\">\r\n");
      out.write("			<table border=\"0\" style=\"width:100%\">\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td align=\"left\">\r\n");
      out.write("						<form id=\"search\" name=\"search\" method=\"get\" action=\"index.jsp\">\r\n");
      out.write("							<select name=\"search_kind\" onchange=\"document.search.submit();\">\r\n");
      out.write("								<option value=\"01\" ");
      out.print( searchVO.getKind().equals("01") ? "selected" : "" );
      out.write(">공지</option>\r\n");
      out.write("								<option value=\"02\" ");
      out.print( searchVO.getKind().equals("02") ? "selected" : "" );
      out.write(">이벤트</option>\r\n");
      out.write("								<option value=\"03\" ");
      out.print( searchVO.getKind().equals("03") ? "selected" : "" );
      out.write(">설문조사</option>\r\n");
      out.write("							</select>\r\n");
      out.write("							<select name=\"search_type\">\r\n");
      out.write("								<option value=\"T\" ");
      out.print( searchVO.getType().equals("T") ? "selected" : "" );
      out.write(">제목</option>\r\n");
      out.write("								<option value=\"C\" ");
      out.print( searchVO.getType().equals("C") ? "selected" : "" );
      out.write(">내용</option>\r\n");
      out.write("								<option value=\"A\" ");
      out.print( searchVO.getType().equals("A") ? "selected" : "" );
      out.write(">제목 + 내용</option>\r\n");
      out.write("							</select>\r\n");
      out.write("							<input type=\"text\" size=\"10\" id=\"search_key\" name=\"search_key\" value=\"");
      out.print( searchVO.getKeyword() );
      out.write("\">\r\n");
      out.write("							<a href=\"javascript:document.search.submit();\"><img src=\"../img/search.png\" height=\"15px\"></a>\r\n");
      out.write("						</form>\r\n");
      out.write("					</td>\r\n");
      out.write("					<td width=\"100px\">\r\n");
      out.write("						");

						if(loginVO == null)
						{
							
      out.write("<a href=\"javascript:alert('로그인 해야 글쓰기가 가능합니다.');\" class=\"btn fn\">글쓰기</a>");

						}else
						{
							
      out.write("<a href=\"../board/write.jsp?");
      out.print( searchVO.GetPageLink(searchVO.getCurpage()) );
      out.write("\" class=\"btn fn\">글쓰기</a>");

						}
						
      out.write("\r\n");
      out.write("\r\n");
      out.write("					</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("			</table>\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td>\r\n");
      out.write("			<table border=\"0\" style=\"width:100%;\">\r\n");
      out.write("				<tr>\r\n");
      out.write("					<td style=\"height:28px;text-align:center; background-color:#f2f2f2; width: 60px;\">번호</td>\r\n");
      out.write("					<td style=\"text-align:center; background-color:#f2f2f2;\">제목</td>\r\n");
      out.write("					<td style=\"text-align:center; background-color:#f2f2f2;width: 120px;\">작성일</td>\r\n");
      out.write("					<td style=\"text-align:center; background-color:#f2f2f2;width: 80px;\">작성자</td>\r\n");
      out.write("					<td style=\"text-align:center; background-color:#f2f2f2;width: 70px;\">조회수</td>\r\n");
      out.write("				</tr>\r\n");
      out.write("				");

				//게시물의 갯수를 얻는다.
				int total = listDTO.GetTotal();
				listDTO.GetList(searchVO.getCurpage());
				int size = listDTO.GetListTotal();
				int seqno = total - (searchVO.getCurpage() - 1) * 10;
				for(int i=0; i < size; i++)
				{
					boardVO vo = listDTO.GetItem(i);
					
      out.write("\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td style=\"height:28px;text-align:center;\">");
      out.print( seqno-- );
      out.write("</td>\r\n");
      out.write("						<td><a href=\"../board/view.jsp?");
      out.print( searchVO.GetViewLink(vo.getBoard_no()) );
      out.write('"');
      out.write('>');
      out.print( vo.getBoard_title() );
      out.write("</a></td>\r\n");
      out.write("						<td style=\"text-align:center;\">");
      out.print( vo.getBoard_date() );
      out.write("</td>\r\n");
      out.write("						<td style=\"text-align:center;\">");
      out.print( vo.getno() );
      out.write("</td>\r\n");
      out.write("						<td style=\"text-align:center;\">");
      out.print( vo.getBoard_hit() );
      out.write("</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					");

				}
				if(total == 0)
				{
					
      out.write("\r\n");
      out.write("					<tr>\r\n");
      out.write("						<td colspan=\"5\" style=\"background-color:#f4f4f4;height:80px;text-align:center;\">\r\n");
      out.write("							조회된 자료가 없습니다.\r\n");
      out.write("						</td>\r\n");
      out.write("					</tr>\r\n");
      out.write("					");

				}
				
      out.write("\r\n");
      out.write("\r\n");
      out.write("			</table>\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("	<tr>\r\n");
      out.write("		<td style=\"text-align:center;\">\r\n");
      out.write("		");

		paging.setTotal(total, searchVO.getCurpage());

		if(paging.getStartBlock() != 1)
		{
			
      out.write("\r\n");
      out.write("			<a href=\"index.jsp?");
      out.print( searchVO.GetPageLink(paging.getStartBlock() - 1) );
      out.write("\">이전 블럭</a> |\r\n");
      out.write("			");

		}

		for(int pageno = paging.getStartBlock(); pageno <= paging.getEndBlock(); pageno++)
		{
			if(searchVO.getCurpage() == pageno)
			{
				
      out.write("<a href=\"index.jsp?");
      out.print( searchVO.GetPageLink(pageno) );
      out.write("\"><span style=\"color:red; font-weight: bold; background-color:blue;\">");
      out.print( pageno );
      out.write("</span></a> | ");

			}else
			{
				
      out.write("<a href=\"index.jsp?");
      out.print( searchVO.GetPageLink(pageno) );
      out.write('"');
      out.write('>');
      out.print( pageno );
      out.write("</a> | ");

			}
		}

		if(paging.getEndBlock() != paging.getMaxpage())
		{
			
      out.write("\r\n");
      out.write("			<a href=\"index.jsp?");
      out.print( searchVO.GetPageLink(paging.getEndBlock() + 1) );
      out.write("\">다음 블럭</a> |\r\n");
      out.write("			");

		}
		
      out.write("\r\n");
      out.write("		</td>\r\n");
      out.write("	</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("					<!-- 컨텐츠 출력 되는곳 -------------------------- -->\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>	\r\n");
      out.write("		<table border=\"1\" width=\"900px\" align=\"center\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td height=\"70px\" align=\"center\">Copyright. ezen java CTEAM...</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>	\r\n");
      out.write("	</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}