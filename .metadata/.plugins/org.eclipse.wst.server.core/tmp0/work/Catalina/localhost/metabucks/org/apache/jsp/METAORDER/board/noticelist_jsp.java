/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-05-26 12:22:13 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.METAORDER.board;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import meta.vo.*;
import meta.util.*;
import meta.dto.*;
import java.util.ArrayList;

public final class noticelist_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(1);
    _jspx_dependants.put("/METAORDER/board/board_include/footer.jsp", Long.valueOf(1653310126567L));
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
    _jspx_imports_classes = new java.util.HashSet<>();
    _jspx_imports_classes.add("java.util.ArrayList");
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

request.setCharacterEncoding("UTF-8");

SearchVO searchVO	= new SearchVO(request);
ListDTO  listDTO	= new ListDTO(searchVO);
Paging   paging		= new Paging(searchVO);
BoardDTO boardDTO	= new BoardDTO();



      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("	<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		<meta charset=\"UTF-8\">\r\n");
      out.write("		<title>메타벅스</title>\r\n");
      out.write("		<link type=\"text/css\" rel=\"stylesheet\" href=\"../css/all.css\">\r\n");
      out.write("		<link type=\"text/css\" rel=\"stylesheet\" href=\"../css/page.css\">\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("		<table align=center width=500px>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td>\r\n");
      out.write("					<a href=\"../main/index.jsp\"><img src=\"../img/back.png\"></a>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr style=\"height:100px;\">\r\n");
      out.write("				<td colspan=\"4\">\r\n");
      out.write("					<h2>\r\n");
      out.write("						What's New\r\n");
      out.write("					</h2>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr style=\"height:800px; position:relative;\">\r\n");
      out.write("				<td colspan=\"4\" style=\"box-shadow: 5px 5px 5px 5px gray;\">\r\n");
      out.write("					<div style=\"position:absolute; top:0%; left:1%;\">\r\n");
      out.write("					<form id=\"search\" name=\"search\" method=\"get\" action=\"noticelist.jsp\">\r\n");
      out.write("						<select style=\"width:490px;\" name=\"search_kind\" onchange=\"document.search.submit();\">\r\n");
      out.write("							<option value=\"\"	");
      out.print( (searchVO.getKind().equals("") ? "selected" : "") );
      out.write(">전체</option>\r\n");
      out.write("							<option value=\"01\"	");
      out.print( (searchVO.getKind().equals("01") ? "selected" : "") );
      out.write(">공지사항</option>\r\n");
      out.write("							<option value=\"02\"	");
      out.print( (searchVO.getKind().equals("02") ? "selected" : "") );
      out.write(">이벤트&뉴스</option>\r\n");
      out.write("							<option value=\"03\"	");
      out.print( (searchVO.getKind().equals("03") ? "selected" : "") );
      out.write(">설문</option>\r\n");
      out.write("						</select>\r\n");
      out.write("					</form>\r\n");
      out.write("\r\n");
      out.write("					");

					//게시물의 갯수를 얻는다.
					int total = listDTO.GetTotal();

					listDTO.GetMoList(searchVO.getCurpage());

					int size = listDTO.GetListTotal();
					int seqno = total - (searchVO.getCurpage() - 1) * 10;
					for(int i=0; i < size; i++)
					{
						boardVO vo = listDTO.GetItem(i);
						boardVO voForImg  = boardDTO.Read(vo.getBoard_no(), false);
						
      out.write("\r\n");
      out.write("							<div style=\"padding-top:10px ; widht:125px; height:75px; overflow:hidden; \">\r\n");
      out.write("								<a href=\"event.jsp?");
      out.print( searchVO.GetViewLink(vo.getBoard_no(), vo.getBoard_kind()) );
      out.write("\">\r\n");
      out.write("						");

						if(voForImg.getAttachs().size() != 0 )
						{
							attachVO attach = voForImg.getAttachs().get(0);
							
      out.write("\r\n");
      out.write("								<img style=\"border-radius:10px; width:125px; height:auto; \" src=\"download.jsp?file=");
      out.print( attach.getAtt_pname() );
      out.write("&name=");
      out.print( attach.getAtt_lname() );
      out.write("\" width=\"100px\" height=\"100px\">\r\n");
      out.write("							");

						}
						
      out.write("\r\n");
      out.write("								</a>\r\n");
      out.write("								<div style=\"padding-top:10px;display:inline-block;vertical-align:top;\" ><a style=\"font-weight:bold;\"href=\"event.jsp?");
      out.print( searchVO.GetViewLink(vo.getBoard_no(), vo.getBoard_kind()) );
      out.write('"');
      out.write('>');
      out.print( vo.getBoard_title() );
      out.write("</a><p style=\"font-size:13px\">");
      out.print( vo.getBoard_date() );
      out.write("</p></div>\r\n");
      out.write("							</div>\r\n");
      out.write("						");

					}
					
//						dto.Read(vo.getBoard_no(), true);
					if(total == 0)
					{
						
      out.write("\r\n");
      out.write("						<tr>\r\n");
      out.write("							<td colspan=\"5\" style=\"background-color:#f4f4f4;height:80px;text-align:center;\">\r\n");
      out.write("								조회된 자료가 없습니다.\r\n");
      out.write("							</td>\r\n");
      out.write("						</tr>\r\n");
      out.write("						");

					}
					
      out.write("</div>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td style=\"text-align:center; padding-top:10px; \">\r\n");
      out.write("				");

				paging.setTotal(total, searchVO.getCurpage());
						
				if(paging.getStartBlock() != 1)
				{
					
      out.write("	\r\n");
      out.write("					<a href=\"noticelist.jsp?");
      out.print( searchVO.GetPageLink(paging.getStartBlock() - 1) );
      out.write("\">이전 블럭</a> |	\r\n");
      out.write("					");

				}
				
				for(int pageno = paging.getStartBlock(); pageno <= paging.getEndBlock(); pageno++)
				{
					if(searchVO.getCurpage() == pageno)
					{
						
      out.write("<div class=\"page_nation\"><a class=\"active\" href=\"noticelist.jsp?");
      out.print( searchVO.GetPageLink(pageno) );
      out.write('"');
      out.write('>');
      out.print( pageno );
      out.write("</a></div>");

					}else
					{
						
      out.write("<div class=\"page_nation\"><a href=\"noticelist.jsp?");
      out.print( searchVO.GetPageLink(pageno) );
      out.write('"');
      out.write('>');
      out.print( pageno );
      out.write("</a></div>");

					}
				}	
				
				if(paging.getEndBlock() != paging.getMaxpage())
				{
					
      out.write("	\r\n");
      out.write("					<a href=\"noticelist.jsp?");
      out.print( searchVO.GetPageLink(paging.getEndBlock() + 1) );
      out.write("\">다음 블럭</a> |	\r\n");
      out.write("					");

				}
				
      out.write("\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("\r\n");
      out.write("<tr style=\"position: fixed;\r\n");
      out.write("						background-color: white; /*임의색상*/\r\n");
      out.write("						bottom: 0;\r\n");
      out.write("						height: 6rem;\">\r\n");
      out.write("				<td width=125px align=center>\r\n");
      out.write("					<a href=\"../main/index.jsp\"><img src=\"../img/homesel.png\"><div>Home</div></a>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td width=125px align=center>\r\n");
      out.write("					<a href=\"../pay/index.jsp\"><img src=\"../img/pay.png\"><div>Pay</div></a>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td width=125px align=center>\r\n");
      out.write("					<a href=\"../order/index.jsp\"><img src=\"../img/order.png\"><div>Order</div></a>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td width=125px align=center>\r\n");
      out.write("					<a href=\"../other/index.jsp\"><img src=\"../img/other.png\"><div>Other</div></a>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
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
