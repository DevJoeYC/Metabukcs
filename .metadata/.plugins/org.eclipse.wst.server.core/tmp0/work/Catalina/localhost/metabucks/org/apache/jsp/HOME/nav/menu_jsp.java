/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.78
 * Generated at: 2022-05-27 04:33:22 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.HOME.nav;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import meta.vo.*;
import meta.dto.*;
import meta.util.*;
import meta.vo.*;
import meta.dto.*;
import meta.util.*;
import java.util.ArrayList;

public final class menu_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/HOME/nav/../include/head2.jsp", Long.valueOf(1653623697865L));
    _jspx_dependants.put("/HOME/nav/../include/tail.jsp", Long.valueOf(1653310125863L));
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

      out.write('\r');
      out.write('\n');
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

	String userid="";
	accountVO loginVO  = (accountVO) session.getAttribute("accountVO");
	if(loginVO !=null)
	{
	 userid = loginVO.id();
	
	}
	//String userid  = (String) session.getAttribute("id");

      out.write("\r\n");
      out.write("<!doctype html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write(" <head>\r\n");
      out.write("  <title>MetaBucks</title>\r\n");
      out.write("	<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("	<meta http-equiv=\"X-UA-Compatible\" content=\"IE=Edge\">\r\n");
      out.write("	<meta name=\"viewport\" content=\"width=1180\">\r\n");
      out.write("	<meta name=\"Author\" content=\"MetaBucks\">\r\n");
      out.write("	<meta name=\"description\" content=\"메타벅스\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	<link rel=\"stylesheet\" href=\"//fonts.googleapis.com/earlyaccess/notosanskr.css\" />\r\n");
      out.write("	<link type=\"text/css\" rel=\"stylesheet\" href=\"../css/@default.css\">\r\n");
      out.write("	<script type=\"text/javascript\" src=\"../js/jquery-3.6.0.js\"></script>\r\n");
      out.write("	<script type=\"text/javascript\" src=\"../js/slick.min.js\"></script>\r\n");
      out.write("	<script type=\"text/javascript\" src=\"../js/common.js\"></script>\r\n");
      out.write("	<script src=\"http://dmaps.daum.net/map_js_init/postcode.v2.js\"></script>\r\n");
      out.write("\r\n");
      out.write(" </head>\r\n");
      out.write(" <body>\r\n");
      out.write("\r\n");
      out.write(" <!--Wrap-->\r\n");
      out.write(" <div id=\"wrap\" class=\"\">\r\n");
      out.write("	<!--Header-->\r\n");
      out.write("\r\n");
      out.write("	<div id=\"header\">\r\n");
      out.write("		<div class=\"h_inner\" style=\"padding-bottom: 0px;\">\r\n");
      out.write("			<span class=\"gnb_bg\"></span>\r\n");
      out.write("			<div class=\"join\">\r\n");
      out.write("				<ul>\r\n");
      out.write("					<li><a href=\"../login/login.jsp\">\r\n");
      out.write("					");

						if(loginVO == null)
						{
							
      out.write("\r\n");
      out.write("								Sign In\r\n");
      out.write("							");

						}else
						{
							
      out.write("\r\n");
      out.write("							( ");
      out.print( userid );
      out.write(" )님 환영합니다\r\n");
      out.write("							<a href=\"../login/logout.jsp\" class=\"btnlogout\">로그아웃</a>\r\n");
      out.write("							");

						}
      out.write("\r\n");
      out.write("					</a></li>\r\n");
      out.write("				</ul>\r\n");
      out.write("			</div>\r\n");
      out.write("			<h1 id=\"logo\"><a href=\"../index.jsp\"><span></span>메타벅스</a></h1>\r\n");
      out.write("			<div class=\"gnb_wrap\" id=\"gnb_wrap\">\r\n");
      out.write("				<ul class=\"gnb\">\r\n");
      out.write("					<li><a href=\"about1.jsp\">About us</a>\r\n");
      out.write("						<ul class=\"gsnb\">\r\n");
      out.write("							<li><a href=\"about1.jsp\">Brand</a></li>\r\n");
      out.write("							<li><a href=\"about2.jsp\">Coffee</a></li>\r\n");
      out.write("						</ul>\r\n");
      out.write("					</li>\r\n");
      out.write("					<li><a href=\"menu.jsp\">MENU</a></li>\r\n");
      out.write("					<li><a href=\"store.jsp\">SHOP</a>\r\n");
      out.write("						<ul class=\"gsnb\">\r\n");
      out.write("							<li><a href=\"store.jsp\">매장위치안내</a></li>\r\n");
      out.write("						</ul>\r\n");
      out.write("					</li>\r\n");
      out.write("					<li><a href=\"contact.jsp\">Contact</a>\r\n");
      out.write("						<ul class=\"gsnb\">\r\n");
      out.write("							<li><a href=\"../board/bindex.jsp\">공지사항</a></li>\r\n");
      out.write("							<li><a href=\"contact.jsp\">이메일 문의하기</a></li>\r\n");
      out.write("						</ul>\r\n");
      out.write("					</li>\r\n");
      out.write("					\r\n");
      out.write("					");

						if(loginVO != null)
						{	
							
      out.write("<li><a href=\"../mypage/userinfo.jsp\">Members</a> \r\n");
      out.write("								\r\n");
      out.write("								<ul class=\"gsnb\">\r\n");
      out.write("									<li><a href=\"../mypage/userinfo.jsp\">My Page</a></li>\r\n");
      out.write("								</ul>\r\n");
      out.write("							</li>\r\n");
      out.write("							");

						}	
					 
      out.write("\r\n");
      out.write("				</ul>\r\n");
      out.write("			</div>\r\n");
      out.write("\r\n");
      out.write("		</div>\r\n");
      out.write("	</div><!--END Header-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

request.setCharacterEncoding("UTF-8");

//상품 이미지를 포함하는 상품용 DTO VO 사용
productsDTO	pdto	= new productsDTO();
productsVO	product	= null;
//상품 리스트를 생성한다
pdto.GetProList();

      out.write("\r\n");
      out.write("<script src=\"../js/menu.js\"></script>\r\n");
      out.write("<style>\r\n");
      out.write("a.unselect\r\n");
      out.write("{\r\n");
      out.write("	color: green;\r\n");
      out.write("	font-size:15px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("a.select\r\n");
      out.write("{\r\n");
      out.write("	color: red;\r\n");
      out.write("	font-size:15px;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("<!--Container-->\r\n");
      out.write("<div id=\"container\">\r\n");
      out.write("	<div class=\"sv_wrap K01\">\r\n");
      out.write("		<p class=\"sv_tit\"><img src=\"../image/tit_K02.png\" alt=\"MENU\"></p>\r\n");
      out.write("		<p class=\"page_path\"><a href=\"../index.jsp\">HOME</a><span class=\"arr\"></span> MENU</p>\r\n");
      out.write("	</div>\r\n");
      out.write("	<!-- Content-->\r\n");
      out.write("	<div class=\"content\">\r\n");
      out.write("		<h2 class=\"page_tit\">MENU</h2>\r\n");
      out.write("		<div class=\"outer pt20 pb20 tint\">\r\n");
      out.write("			<div class=\"inner\">\r\n");
      out.write("		<form id=\"favForm\" name=\"favForm\" method=\"post\" action=\"../mypage/mymenu.jsp\">\r\n");
      out.write("			<input type=\"hidden\" id=\"fav_menu\" name=\"fav_menu\" value=\"\">\r\n");
      out.write("				<ul class=\"menu_list\">\r\n");
      out.write("				");

				//아이템 갯수를 얻음
				int MAX = pdto.GetTotal("pro");
				for(int i=0; i< MAX; i++)
				{
					product = pdto.GetProItem(i);
					String style = "";
					String msg = "";
					if(product.flag_sell().equals("0"))
					{
						style = "style='filter: grayscale(100%)'";
						msg = "판매중지";
					}
				
      out.write("\r\n");
      out.write("					<li>\r\n");
      out.write("						\r\n");
      out.write("						<a href=\"javascript:void(0);\" onclick=\"addfav(this);\" id=\"btnGray\" class=\"unselect\">★</a>\r\n");
      out.write("							<input type=\"hidden\"  id=\"fav_name\" name=\"fav_name\" value=\"");
      out.print( product.name() );
      out.write("\">\r\n");
      out.write("							<input type=\"hidden\"  id=\"fav_price\" name=\"fav_price\" value=\"");
      out.print( product.price() );
      out.write("\">\r\n");
      out.write("							<input type=\"hidden\"  id=\"fav_no\" name=\"fav_no\" value=\"");
      out.print( product.pro_no() );
      out.write("\">\r\n");
      out.write("							<input type=\"hidden\"  id=\"fav_hname\" name=\"fav_hname\" value=\"");
      out.print( product.hname() );
      out.write("\">\r\n");
      out.write("						<span class=\"favmenu\">\r\n");
      out.write("						");

						if(product.images().size() != 0)
						{
							for(imageVO items : product.images())
							{
								
      out.write("\r\n");
      out.write("								<img src=\"download.jsp?file=");
      out.print( items.img_pname() );
      out.write("&name=");
      out.print( items.img_lname() );
      out.write("\" \r\n");
      out.write("								");
      out.print( style );
      out.write("\r\n");
      out.write("								><br>\r\n");
      out.write("								");

							}
						}
						
      out.write("\r\n");
      out.write("						<!-- <img src=\"https://silverwoods.synology.me:8081/productimage/americano.png\" alt=\"\"></span> -->\r\n");
      out.write("						<p>");
      out.print( msg );
      out.write("</p>\r\n");
      out.write("						<p class=\"unselect\">");
      out.print( product.name() );
      out.write("</p>\r\n");
      out.write("						<p>");
      out.print( product.ename() );
      out.write("<br></p>\r\n");
      out.write("						<p>");
      out.print( product.price() );
      out.write("<br></p>\r\n");
      out.write("						<p>");
      out.print( product.hname() );
      out.write("<br></p>\r\n");
      out.write("						\r\n");
      out.write("						<!--<p>Solo(22ml)/0.75 fl oz<br>  -->\r\n");
      out.write("						<div class=\"desc\">\r\n");
      out.write("							<div class=\"cell\">\r\n");
      out.write("								<p class=\"price\">\r\n");
      out.write("								1회제공량 기준<br>\r\n");
      out.write("								열량(kcal)10<br>\r\n");
      out.write("								당류(g)-<br>\r\n");
      out.write("								나트륨(mg)-<br>\r\n");
      out.write("								단백질(g)1<br>\r\n");
      out.write("								포화지방(g)-<br>\r\n");
      out.write("								카페인(mg)160</p>\r\n");
      out.write("								<p>");
      out.print( product.name() );
      out.write("<br /></p>\r\n");
      out.write("							</div>\r\n");
      out.write("						</div>					\r\n");
      out.write("					</li>\r\n");
      out.write("				");

				}
				
      out.write("	\r\n");
      out.write("				<div>\r\n");
      out.write("				</form>\r\n");
      out.write("				<span> <a href=\"javascript:favSend();\" class=\"btnBlack\">선호메뉴 등록</a></span>						\r\n");
      out.write("				</div>\r\n");
      out.write("				</ul>\r\n");
      out.write("				\r\n");
      out.write("					\r\n");
      out.write("					\r\n");
      out.write("			</div><!-- END Inner -->\r\n");
      out.write("		</div><!-- END Outer -->\r\n");
      out.write("\r\n");
      out.write("	</div><!-- END Content -->\r\n");
      out.write("</div><!--END Container-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("	\r\n");
      out.write("	<!-- 인스타그램 -->\r\n");
      out.write("	<div id=\"f_insta\">\r\n");
      out.write("		<p class=\"htit\">Follow us on instagram</p>\r\n");
      out.write("		<p class=\"id\"><span>@Metabuckscoffee</span></p>\r\n");
      out.write("\r\n");
      out.write("	</div><!-- END 인스타그램 -->\r\n");
      out.write("\r\n");
      out.write("	<!--Footer-->\r\n");
      out.write("	<div id=\"footer\">\r\n");
      out.write("		업체명 : (주)메타벅스 | 대표자명 : TeamC | 사업자등록번호 : 123-45-67890 <br>\r\n");
      out.write("		주소 : 전주시 덕진구 금암1동 이젠컴퓨터아카데미 5층 | Tel : 010-1234-5678\r\n");
      out.write("		Copyright ⓒ 2022 (주)메타벅스. All Rights Reserved.\r\n");
      out.write("	</div><!--END Footer-->\r\n");
      out.write("\r\n");
      out.write(" </div><!--END Wrap-->\r\n");
      out.write("\r\n");
      out.write("<!-- ↓ 아래있는 /div 태그 두개는  joinok에 구문이 잘 안닫혀 있어서 추가한 것-->\r\n");
      out.write("</div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
