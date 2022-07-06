/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-05-27 06:32:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.KIOSK;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import meta.dto.*;
import meta.vo.*;
import meta.dbms.*;
import meta.vo.*;
import meta.dto.*;

public final class option_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/KIOSK/includes/tail.jsp", Long.valueOf(1653310126486L));
    _jspx_dependants.put("/KIOSK/includes/head.jsp", Long.valueOf(1653633056075L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("meta.dto");
    _jspx_imports_packages.add("meta.vo");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("meta.dbms");
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

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("\r\n");

	//session.setMaxInactiveInterval(60*1); //1분후 세션만료(아무 움직임 없을시)
	String id = "";
	accountVO user  = (accountVO) session.getAttribute("accountVO");
	if(user != null)
	{
		id = user.id();
	}

      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("	<head>\r\n");
      out.write("		\r\n");
      out.write("		<title>메타벅스</title>\r\n");
      out.write("		<link rel=\"stylesheet\" href=\"css/kiosk.css\"/>\r\n");
      out.write("		<script src=\"js/jquery-3.6.0.js\"></script>\r\n");
      out.write("	</head>\r\n");
      out.write("	<body>\r\n");
      out.write("		<table border=0  style=\"width:100%;\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td id=\"bar\" colspan=\"2\" style=\"text-align:left;padding:0px 0px 30px 0px; font-size:4rem;\">\r\n");
      out.write("					<a style=\"color: white;text-decoration:none;\" href=\"index.jsp\">\r\n");
      out.write("					<img src=\"images/CoffeeLogo.png\" height=\"80px\" width=\"100px\">\r\n");
      out.write("					HOME &nbsp;\r\n");
      out.write("					</a>\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td id=\"bar\" colspan=\"2\" style=\"text-align:right; width:100px; height:30px; font-size: 3rem; padding:0px 20px 30px 0px\">\r\n");
      out.write("					");

						if(id == null || id.equals(""))
						{
							
      out.write("\r\n");
      out.write("								안녕하세요\r\n");
      out.write("							");

						}else
						{
							
      out.write("\r\n");
      out.write("							[");
      out.print( user.name() );
      out.write("]님 환영합니다 &nbsp;&nbsp;&nbsp;<a id=\"mypagebtn\" href=\"mypage.jsp\">마이페이지</a></td>\r\n");
      out.write("							");

						}	
					
      out.write("\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td id=\"bar\"  height=\"130px\" width=\"100px\" style=\"text-align:center\">\r\n");
      out.write("					<a id=\"menu\" style=\"color: white\" href=\"drinkmenu.jsp\">음료</a>\r\n");
      out.write("				</td>\r\n");
      out.write("				<td id=\"bar\" width=\"130px\" style=\"text-align:center\">\r\n");
      out.write("					<a id=\"menu\" style=\"color: white\" href=\"sidemenu.jsp\">사이드 메뉴</a>\r\n");
      out.write("					</td>\r\n");
      out.write("			</tr>");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("   \r\n");
      out.write("\r\n");

	String pro_no = request.getParameter("pro_no");
	String hname = request.getParameter("hname");
	String ename = request.getParameter("ename");
	
	
	//값이 없거나 다를때 
	if( hname == null || hname.equals(""))
	{
		response.sendRedirect("index.jsp");
		return;
	}
	String sel = hname;

	//선택된 메뉴의 상품 리스트를 DB에서 읽고 객체를 생성한다.
	productsDTO	dto = new productsDTO();
	productsVO	pro = null;
	dto.GetProList(sel);

	//상품 리스트 갯수 산출
	int MAX = dto.GetTotal("pro");
	System.out.println("상품 리스트 갯수 : " + MAX);

	int count = 0;
	//상품 리스트 출력


      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("		div\r\n");
      out.write("		{\r\n");
      out.write("			width: 200px;\r\n");
      out.write("			height: 200px;\r\n");
      out.write("			display: inline-block;\r\n");
      out.write("			height:250px;\r\n");
      out.write("			width:230px;\r\n");
      out.write("			\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		.unselect\r\n");
      out.write("		{\r\n");
      out.write("			background-color: white;\r\n");
      out.write("		}\r\n");
      out.write("		\r\n");
      out.write("		.select\r\n");
      out.write("		{\r\n");
      out.write("			outline: 5px solid #085820;\r\n");
      out.write("		}		\r\n");
      out.write("</style>\r\n");
      out.write("<script src=\"./js/option.js\"></script>\r\n");
      out.write("<!-- ==================================================================================================================== -->\r\n");
      out.write("<tr>\r\n");
      out.write("	<td style=\"background-color:white;padding:80px 0px 80px 0px\" colspan=3>\r\n");
      out.write("		<form id=\"optionfrm\" name=\"optionfrm\" method=\"post\" action=\"optionok.jsp\">\r\n");
      out.write("		<input type=\"hidden\" id=\"pro_no\" name=\"pro_no\" value=\"");
      out.print( pro_no );
      out.write("\">\r\n");
      out.write("		<input type=\"hidden\" id=\"hname\" name=\"hname\" value=\"");
      out.print( hname );
      out.write("\">\r\n");
      out.write("		<table id=\"login\" border=\"0\" height=\"100%\" width=\"90%\" style=\"margin : auto; text-align:center\">\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td colspan=\"5\" style=\"padding:30px 0px 0px 0px;\"><h1>옵션을 선택해 주세요</h1></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			");

			
			for(int i = 0 ; i < MAX ; i++ )
			{
				pro = dto.GetProItem(i);
			
      out.write("\r\n");
      out.write("			\r\n");
      out.write("			<td style=\"padding:35px 10px 50px 140px;width:100px\">\r\n");
      out.write("								<table border=0>\r\n");
      out.write("									<tr>\r\n");
      out.write("										<td>\r\n");
      out.write("											<div id=\"drink\" class=\"unselect\" onclick=\"Select(this);\">\r\n");
      out.write("												<input type=\"hidden\" id=\"sel_menu\" name=\"sel_menu\" value=\"\">\r\n");
      out.write("												<input type=\"hidden\" id=\"drink_id\" name=\"drink_id\" value=\"");
      out.print( pro.name() );
      out.write("\">\r\n");
      out.write("												<input type=\"hidden\" id=\"price\" name=\"price\" value=\"");
      out.print( pro.price());
      out.write("\">\r\n");
      out.write("			");

				if(pro.images().size() != 0)
				{
					for(imageVO item : pro.images())
					{
						
      out.write("\r\n");
      out.write("						<img style=\"border-radius:10px; width:200px; height:220px;\"\r\n");
      out.write("						 src=\"download.jsp?file=");
      out.print( item.img_pname() );
      out.write("&name=");
      out.print( item.img_lname() );
      out.write("\">\r\n");
      out.write("						");

					}
				}
			
      out.write("\r\n");
      out.write("											</div>	\r\n");
      out.write("										<td>\r\n");
      out.write("									</tr>\r\n");
      out.write("									<tr>\r\n");
      out.write("										<td style=\"background-color:#D1DDE2; text-align:center;font-size: 2rem;\" >\r\n");
      out.write("											");
      out.print( pro.name() );
      out.write("<br>");
      out.print( pro.price() );
      out.write("\r\n");
      out.write("										</td>\r\n");
      out.write("									</tr>\r\n");
      out.write("								</table>\r\n");
      out.write("							</td>\r\n");
      out.write("			");

				if(count!=0 && count%2==1)
				{
					
      out.write("</tr><tr>");

				}
				count++;
			}
			
			
      out.write("\r\n");
      out.write("			<tr height=\"50px\">\r\n");
      out.write("				<td style=\"font-size:20px;font-weight:bold;\">샷 추가<br/>(기본 1샷)</td>\r\n");
      out.write("				<td style=\"font-size:25px;\">\r\n");
      out.write("					<input type=\"button\" id=\"minus1\" value=\"-\"><span id=\"shot\" style=\"display:inline-block; width:100px\" >1</span><input type=\"button\" id=\"plus1\" value=\"+\">\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr height=\"50px\">\r\n");
      out.write("				<td style=\"font-size:20px;font-weight:bold;\">시럽  추가</td>\r\n");
      out.write("				<td style=\"font-size:25px;\">\r\n");
      out.write("					<input type=\"button\" id=\"minus2\" value=\"-\"><span id=\"syrup\" style=\"display:inline-block; width:100px\">0</span><input type=\"button\" id=\"plus2\" value=\"+\">\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr height=\"50px\">\r\n");
      out.write("				<td style=\"font-size:20px;font-weight:bold;\">수량</td>\r\n");
      out.write("				<td style=\"font-size:25px;\">\r\n");
      out.write("					<input type=\"button\" id=\"minus3\" value=\"-\"><span id=\"drinkcount\" style=\"display:inline-block; width:100px\">1</span><input type=\"button\" id=\"plus3\" value=\"+\">\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr height=\"50px\">\r\n");
      out.write("				<td style=\"font-size:20px;font-weight:bold;\">가격</td>\r\n");
      out.write("				<td>\r\n");
      out.write("					<input type=\"hidden\" id=\"p\" name=\"p\" value=\"0\">\r\n");
      out.write("					<input style=\"height:30px; 	font-size:25px;	font-weight:bold;text-align:right; width:155px;\" type=\"text\" readonly id=\"drinkprice\" value=\"0\">\r\n");
      out.write("				</td>\r\n");
      out.write("			</tr>\r\n");
      out.write("			<tr height=\"20px\"></tr>\r\n");
      out.write("			<tr>\r\n");
      out.write("				<td colspan=3 style=\"padding:0px 0px 10px 0px;\"><input type=\"submit\" value=\"담기\"  id=\"yes\" onclick=\"Option();\"> <span style=\"display:inline-block; width:330px\"></span> <span><a id=\"no\" href=\"drinkmenu.jsp\">취소</a></span></td>\r\n");
      out.write("			</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("		</form>\r\n");
      out.write("	</td>\r\n");
      out.write("<!-- ==================================================================================================================== -->\r\n");
      out.write("\r\n");
      out.write("</tr>\r\n");
      out.write("		</table>\r\n");
      out.write("	</body>\r\n");
      out.write("	</html>");
      out.write('\r');
      out.write('\n');
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