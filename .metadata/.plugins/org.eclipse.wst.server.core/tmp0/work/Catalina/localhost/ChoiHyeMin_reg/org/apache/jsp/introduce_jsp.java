/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.52
 * Generated at: 2021-10-04 07:25:58 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.text.*;

public final class introduce_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("java.text");
    _jspx_imports_packages.add("javax.servlet.http");
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

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
        return;
      }
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

	Date today = Calendar.getInstance().getTime();
	SimpleDateFormat yearFormat = new SimpleDateFormat("yyyy");
	SimpleDateFormat monthFormat = new SimpleDateFormat("MM");
	SimpleDateFormat dayFormat = new SimpleDateFormat("dd");
	
	Scanner sc = new Scanner(System.in);
	
	int currYear = Integer.parseInt(yearFormat.format(today));
	int currMonth = Integer.parseInt(monthFormat.format(today));
	int currDay = Integer.parseInt(dayFormat.format(today));
	
	int birthYear = 2019;
	int birthMonth = 10;
	int birthDay = 24;
	
	int dayCount = 0;
	
	dayCount = currDay - birthDay;
	dayCount = dayCount + ((currMonth * 30) - (birthMonth * 30));
	dayCount = dayCount + ((currYear * 365) - (birthYear * 365));

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write("	.box \r\n");
      out.write("	{\r\n");
      out.write("	    width: 200px;\r\n");
      out.write("	    height: 200px; \r\n");
      out.write("	    border-radius: 70%;\r\n");
      out.write("	    overflow: hidden;\r\n");
      out.write("	}\r\n");
      out.write("	\r\n");
      out.write("	.profile \r\n");
      out.write("	{\r\n");
      out.write("	    width: 100%;\r\n");
      out.write("	    height: 100%;\r\n");
      out.write("	    object-fit: cover;\r\n");
      out.write("	}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("	<meta charset=\"UTF-8\">\r\n");
      out.write("	<title>Web Service ProgrammingHomework</title>\r\n");
      out.write("	<link rel=\"stylesheet\" href=\"resources/register.css\" type=\"text/css\"></link>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>	\r\n");
      out.write("\r\n");
      out.write("	<header> INTRODUCE MYSELF </header>\r\n");
      out.write("\r\n");
      out.write("	<div class=\"box\">\r\n");
      out.write("    	<img class=\"profile\" src=\"resources/ChoiHyeMin01.jpg\">\r\n");
      out.write("	</div>\r\n");
      out.write("	<h1 style=\"text-align:center;\"> Choi Hye Min </h1>\r\n");
      out.write("	<hr>\r\n");
      out.write("	\r\n");
      out.write("	<div style=\"text-align:center;\">\r\n");
      out.write("		<a href=\"https://github.com/papav-hub\"><img src=\"resources/github.png\" height=\"50\" width=\"50\"></a>\r\n");
      out.write("	</div>\r\n");
      out.write("\r\n");
      out.write("	<hr>\r\n");
      out.write("	<br>\r\n");
      out.write("	\r\n");
      out.write("	<table>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>기초 교과</th>\r\n");
      out.write("			<td>글쓰기, 영어1, 영어2, 글로벌잉글리쉬, 가치와비전, 창의와 실천</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>커리어 교과</th>\r\n");
      out.write("			<td>진로와 미래</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>핵심 교양</th>\r\n");
      out.write("			<td>과학기술과 대중문화, 문화유산과 역사, 소비자와 마케팅, 현대사회와 법</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>프로그래밍 실무 능력</th>\r\n");
      out.write("			<td>프로그래밍 기초, 프로그래밍, 선형대수학, 이산수학, 자료구조, 객체지향언어, 확률 및 통계학, 파이썬 프로그래밍, 자바, 네트워크 프로그래밍, 모바일 프로그래밍</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>임베디드 시스템 개발 능력</th>\r\n");
      out.write("			<td>하드웨어 개론, 논리회로, 컴퓨터 구조</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>시스템 구축 및 운영 능력</th>\r\n");
      out.write("			<td>전산학 기초, 창의적 공학 설계, 유닉스 기초, 데이터베이스, 운영체제, 소프트웨어 공학</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>수강중인 과목</th>\r\n");
      out.write("			<td>알고리즘, 웹서비스프로그래밍, 컴퓨터응용설계, 종합설계 기획, 컴퓨터 네트워크</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>수강중인 타학과 과목</th>\r\n");
      out.write("			<td>OpenSource SW, 인공지능</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("		<tr>\r\n");
      out.write("			<th>수강 예정 과목</th>\r\n");
      out.write("			<td>수치해석, 오픈소스SW응용, 종합설계1, 종합설계2, 네트워크 메니지먼트, IoT설계, HCI개론, 클라우드 컴퓨팅, 기술문서 작성</td>\r\n");
      out.write("		</tr>\r\n");
      out.write("	</table>\r\n");
      out.write("	\r\n");
      out.write("	<br>\r\n");
      out.write("	<hr>\r\n");
      out.write("	<br>\r\n");
      out.write("	\r\n");
      out.write("	<h2 style=\"text-align:center;\"> 제 보물 1호를 소개합니다 </h2>\r\n");
      out.write("	<div class=\"box\">\r\n");
      out.write("    	<img class=\"profile\" src=\"resources/cat.jpg\">\r\n");
      out.write("	</div>\r\n");
      out.write("	<br>\r\n");
      out.write("	<hr>\r\n");
      out.write("	<h4 style=\"text-align:center;\">오늘은 구름이랑 만난지 ");
      out.print(dayCount );
      out.write("째 되는 날입니다</h4>\r\n");
      out.write("	<hr>\r\n");
      out.write("	\r\n");
      out.write("	<div>\r\n");
      out.write("		<video controls height=\"300\">\r\n");
      out.write("	  		<source src=\"resources/cat.mp4\" type=\"video/mp4\">\r\n");
      out.write("		</video>\r\n");
      out.write("	</div>\r\n");
      out.write("	\r\n");
      out.write("</body>\r\n");
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
