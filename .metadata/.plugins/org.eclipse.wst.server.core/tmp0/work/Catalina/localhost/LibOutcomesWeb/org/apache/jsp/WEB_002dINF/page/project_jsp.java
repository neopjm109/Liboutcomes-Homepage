/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.23
 * Generated at: 2015-07-07 03:55:03 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.page;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class project_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/WEB-INF/page/footer.jsp", Long.valueOf(1436152924109L));
    _jspx_dependants.put("/WEB-INF/lib/javax.servlet.jsp.jstl-1.2.1.jar", Long.valueOf(1436152923985L));
    _jspx_dependants.put("/WEB-INF/page/header.jsp", Long.valueOf(1436152924109L));
    _jspx_dependants.put("jar:file:/D:/Git/Liboutcomes-Homepage/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/LibOutcomesWeb/WEB-INF/lib/javax.servlet.jsp.jstl-1.2.1.jar!/META-INF/c.tld", Long.valueOf(1323225978000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fif_0026_005ftest;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
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
      out.write("    \r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"ko\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("    <title>LIBOUTCOMES</title>\r\n");
      out.write("\r\n");
      out.write("    <!-- Bootstrap Core CSS -->\r\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/css/bootstrap.min.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom CSS -->\r\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/css/liboutcomes.css\" rel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("    <!-- Custom Fonts -->\r\n");
      out.write("    <link href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("    <!-- Navigation -->\r\n");
      out.write("    <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\r\n");
      out.write("        <div class=\"container\">\r\n");
      out.write("        \r\n");
      out.write("            <!-- Brand and toggle get grouped for better mobile display -->\r\n");
      out.write("            <div class=\"navbar-header\">\r\n");
      out.write("                <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\r\n");
      out.write("                    <span class=\"sr-only\">Toggle navigation</span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                    <span class=\"icon-bar\"></span>\r\n");
      out.write("                </button>\r\n");
      out.write("                <a class=\"navbar-brand\" href=\"/LibOutcomesWeb\">LibOutcomes</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            \r\n");
      out.write("            <!-- Collect the nav links, forms, and other content for toggling -->\r\n");
      out.write("            <div class=\"collapse navbar-collapse navbar-right\" id=\"bs-example-navbar-collapse-1\">\r\n");
      out.write("                <ul class=\"nav navbar-nav \">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"Project\">프로젝트 소개</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <a href=\"Library\">도서관 DB</a>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"dropdown\">\r\n");
      out.write("                        <a href=\"#\" class=\"dropdown-toggle\" data-toggle=\"dropdown\">데이터 사이언스 <b class=\"caret\"></b></a>\r\n");
      out.write("                        <ul class=\"dropdown-menu\">\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"DataScienceManual\">메뉴얼</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"DataScienceReference\">적용사례</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"nav navbar-right\" style=\"padding-right:15px;\">\r\n");
      out.write("\t\t\t\t\t<!-- 세션 체크로 변경 -->\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fif_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fif_005f1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("                \r\n");
      out.write("            </div>\r\n");
      out.write("            <!-- /.navbar-collapse -->\r\n");
      out.write("            \r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- /.container -->\r\n");
      out.write("        \r\n");
      out.write("    </nav>\r\n");
      out.write("    <!-- /.navigation -->\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Page Content -->\r\n");
      out.write("<div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("\t<!-- Page Heading -->\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"col-lg-12\">\r\n");
      out.write("            <h1 class=\"page-header\">프로젝트 소개\r\n");
      out.write("                <small>About the Project</small>\r\n");
      out.write("            </h1>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.row -->\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <!-- 프로젝트 소개 -->\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"col-lg-12 text-center\">\r\n");
      out.write("            <h3>공공도서관 서비스 가치평가 모델 개발 및 소프트웨어 구축 과제</h3>\r\n");
      out.write("            <h3 class=\"section-subheading text-muted\">Modeling the Values of Public Library Services and Software Development</h3>\r\n");
      out.write("        </div>\r\n");
      out.write("\t\t<div class=\"col-md-6\">\r\n");
      out.write("            <img class=\"img-responsive\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/project1.jpg\" alt=\"\">\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-md-6\">\r\n");
      out.write("\t\t\t<p>2012년 ACRL(미국 대학 및 연구도서관 협회)은 도서관의 10대 핵심 이슈 중 하나로 ‘도서관 가치 알리기(Communicating value)’를 선정한 바 있다. 이는 도서관의 가치를 알리고 이를 통해 지역사회에서 변화와 소통에 주도적인 역할을 주문하는 것이다. 도서관이 지역사회와 소통하기 위해서는 무엇보다 올바른 평가를 통한 가치의 발견이 선행되어야 함은 물론이다.</p>\r\n");
      out.write("        \t<p>그간 도서관에서 수행한 평가는 이용자의 만족도 조사 혹은 서비스 산출 평가(Output evaulation) 위주로 되어 있어 지역사회 내에서 도서관이 만들어내는 변화와 성과를 충분히 보여주지 못하여 도서관이 가진 가치에 비해 상대적으로 낮은 인식을 받아왔다. 또한 내부적으로도 도서관에 축적된 데이터를 평가에 다양하게 활용할 수 있음에도 불구하고 단순 기술통계로 사용하고 있어 도서관 데이터 활용의 효율성을 제고할 필요가 있는 상황이다.</p>\r\n");
      out.write("        \t<p>따라서 본 연구는 공공도서관의 가치를 계량적으로 제시할 수 있는 성과 평가(Outcome evaluation) 모델을 개발하기 위해 도서관에서 기존에 축적한 데이터를 활용하여 도서관의 가치 평가 지표를 설계하고 지표를 측정하는 것을 목적으로 한다. 본 목적을 달성하기 위해서 구체적으로는 공공도서관의 다양한 서비스를 다차원으로 분석하고, 공공도서관의 데이터를 활용한 지표를 개발한 후 로직모델(Logic model)을 바탕으로 평가 프레임워크를 개발한다. 이를 바탕으로 ‘LibOutcomes software’를 개발하여 도서관의 성과와 가치를 보여줄 수 있는 평가도구로 활용하고자 한다.</p>\r\n");
      out.write("        \t<p>본 연구를 통해 다음과 같은 효과를 얻을 수 있을 것으로 기대한다.</p>\r\n");
      out.write("        </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- /.row -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- 기대효과 -->\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"col-lg-12 text-center\">\r\n");
      out.write("            <h2 class=\"section-heading\">기대 효과</h2>\r\n");
      out.write("            <h3 class=\"section-subheading text-muted\">Expectation Effectiveness</h3>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-md-4\">\r\n");
      out.write("            <div class=\"panel panel-default text-center\">\r\n");
      out.write("                <div class=\"panel-heading\">\r\n");
      out.write("                    <span class=\"fa-stack fa-5x\">\r\n");
      out.write("                          <i class=\"fa fa-circle fa-stack-2x text-primary\"></i>\r\n");
      out.write("                          <i class=\"fa fa-bar-chart fa-stack-1x fa-inverse\"></i>\r\n");
      out.write("                    </span>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"panel-body\">\r\n");
      out.write("                    <h4>올바른 평가 & 가치 알리기</h4>\r\n");
      out.write("                    <p>지역사회에 대한 공공도서관의 성과에 대한 평가를 수행함으로써 공공도서관의 프로그램 운영에 대한 올바른 평가와 가치 알리기가 가능해질 것이다. 아울러, 도서관을 이용하는 지역사회 주민과의 지속적인 연계 및 관계 유지에 유용하게 이용될 것이다.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-md-4\">\r\n");
      out.write("            <div class=\"panel panel-default text-center\">\r\n");
      out.write("                <div class=\"panel-heading\">\r\n");
      out.write("                    <span class=\"fa-stack fa-5x\">\r\n");
      out.write("                          <i class=\"fa fa-circle fa-stack-2x text-primary\"></i>\r\n");
      out.write("                          <i class=\"fa fa-book fa-stack-1x fa-inverse\"></i>\r\n");
      out.write("                    </span>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"panel-body\">\r\n");
      out.write("                    <h4>업무 개선 & 사업 확장</h4>\r\n");
      out.write("                    <p>공공도서관 업무 개선 및 사업의 확장이 가능할 것이다. 이제 단순 수치만으로 도서관을 평가할 수는 없다. 지속적인 가치의 평가와 이용자 서비스의 개발을 통해 지역사회와의 소통에 구심점으로 자리매김해야 할 것이다.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-md-4\">\r\n");
      out.write("            <div class=\"panel panel-default text-center\">\r\n");
      out.write("                <div class=\"panel-heading\">\r\n");
      out.write("                    <span class=\"fa-stack fa-5x\">\r\n");
      out.write("                          <i class=\"fa fa-circle fa-stack-2x text-primary\"></i>\r\n");
      out.write("                          <i class=\"fa fa-plane fa-stack-1x fa-inverse\"></i>\r\n");
      out.write("                    </span>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"panel-body\">\r\n");
      out.write("                    <h4>문헌정보학계의 발전</h4>\r\n");
      out.write("                    <p>평가모델의 공유를 통한 문헌정보학계의 발전을 도모할 수 있을 것이다. 과거의 여러 연구를 통해 평가의 영역이 현재도 여러 문제점이 있으나 개선 및 새로운 지표의 개발이 용이하지 않다는 것을 목도해 왔다. 따라서 본 연구를 통해 성과의 평가라는 새로운 화두를 던질 수 있을 것이다.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.row -->\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <!-- 프로젝트 진행방향 -->\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"col-lg-12 text-center\">\r\n");
      out.write("            <h2 class=\"section-heading\">진행 방향</h2>\r\n");
      out.write("            <h3 class=\"section-subheading text-muted\">Direction of Progress</h3>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <div class=\"col-lg-12\">\r\n");
      out.write("                <ul class=\"timeline\">\r\n");
      out.write("                    <li>\r\n");
      out.write("                        <div class=\"timeline-image\">\r\n");
      out.write("                            <img class=\"img-circle img-responsive\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/project2.jpg\" alt=\"\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"timeline-panel\">\r\n");
      out.write("                            <div class=\"timeline-heading\">\r\n");
      out.write("                                <h4>2015-2016</h4>\r\n");
      out.write("                                <h4 class=\"subheading\">프로젝트 1년차</h4>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"timeline-body\">\r\n");
      out.write("                                <p class=\"text-muted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"timeline-inverted\">\r\n");
      out.write("                        <div class=\"timeline-image\">\r\n");
      out.write("                            <img class=\"img-circle img-responsive\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/project3.jpg\" alt=\"\">\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"timeline-panel\">\r\n");
      out.write("                            <div class=\"timeline-heading\">\r\n");
      out.write("                                <h4>2016-2017</h4>\r\n");
      out.write("                                <h4 class=\"subheading\">프로젝트 2년차</h4>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"timeline-body\">\r\n");
      out.write("                                <p class=\"text-muted\">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sunt ut voluptatum eius sapiente, totam reiciendis temporibus qui quibusdam, recusandae sit vero unde, sed, incidunt et ea quo dolore laudantium consectetur!</p>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                    <li class=\"timeline-inverted\">\r\n");
      out.write("                        <div class=\"timeline-image\">\r\n");
      out.write("                            <h4>Be Part\r\n");
      out.write("                                <br>Of Our\r\n");
      out.write("                                <br>Story!</h4>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </li>\r\n");
      out.write("                </ul>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.row -->  \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    <!-- 팀원 소개 -->\r\n");
      out.write("    <div class=\"row text-center\">\r\n");
      out.write("        <div class=\"col-lg-12\">\r\n");
      out.write("            <h2 class=\"section-heading\">참여 팀원</h2>\r\n");
      out.write("            <h3 class=\"section-subheading text-muted\">Team Member</h3>\r\n");
      out.write("        </div>\r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/박성재.png\" alt=\"\">\r\n");
      out.write("            <h4>박성재\r\n");
      out.write("                <small>지식정보학과 교수</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/조세홍.png\" alt=\"\">\r\n");
      out.write("            <h4>조세홍\r\n");
      out.write("                <small>멀티미디어공학과 교수</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/한상우.png\" alt=\"\">\r\n");
      out.write("            <h4>한상우\r\n");
      out.write("                <small>Job Title</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"http://placehold.it/200x200\" alt=\"\">\r\n");
      out.write("            <h4>김정환\r\n");
      out.write("                <small>Job Title</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/이제진.png\" alt=\"\">\r\n");
      out.write("            <h4>이제진\r\n");
      out.write("                <small>Job Title</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/박준민.png\" alt=\"\">\r\n");
      out.write("            <h4>박준민\r\n");
      out.write("                <small>Job Title</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/박미현.png\" alt=\"\">\r\n");
      out.write("            <h4>박미현\r\n");
      out.write("                <small>Job Title</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/윤민정.png\" alt=\"\">\r\n");
      out.write("            <h4>윤민정\r\n");
      out.write("                <small>Job Title</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/이지아.png\" alt=\"\">\r\n");
      out.write("            <h4>이지아\r\n");
      out.write("                <small>Job Title</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("        \r\n");
      out.write("        <div class=\"col-lg-4 col-sm-6 text-center\">\r\n");
      out.write("            <img class=\"img-circle img-responsive col-center\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/img/member/정유진.png\" alt=\"\">\r\n");
      out.write("            <h4>정유진\r\n");
      out.write("                <small>Job Title</small>\r\n");
      out.write("            </h4>\r\n");
      out.write("            <p>What does this team member to? Keep it short! This is also a great spot for social links!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    <!-- /.row -->  \r\n");
      out.write("    \r\n");
      out.write("</div>\r\n");
      out.write("<!-- /.container -->\r\n");
      out.write("\r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Footer -->\r\n");
      out.write("<footer>\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div class=\"col-md-6\">\r\n");
      out.write("\t\t\t<p>Copyright &copy; LibOutcomes Hansung Univ. Sung Jae Park Alright Reserved</p>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-md-6\">\r\n");
      out.write("\t\t\t<big>박성재</big><br>\r\n");
      out.write("\t\t\t<small>\r\n");
      out.write("\t\t\t\t한성대 지식정보학과<br><br>\r\n");
      out.write("\t\t\t\t서울 특별시 삼선구 삼선동2가 389 한성대학교 연구관 529호\r\n");
      out.write("\t\t\t</small>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("</footer>\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("<!-- jQuery -->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/js/jquery.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- Bootstrap Core JavaScript -->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- 액션 -->\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/js/public/loginFunction.js\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/assets/js/public/dataScienceManualFunction.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- Script to Activate the Carousel -->\r\n");
      out.write("<script>\r\n");
      out.write("$('.carousel').carousel({\r\n");
      out.write("        interval: 5000 //changes the speed\r\n");
      out.write("})\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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

  private boolean _jspx_meth_c_005fif_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f0.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f0.setParent(null);
    // /WEB-INF/page/header.jsp(67,5) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginId eq null || loginId == ''}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_005fif_005f0 = _jspx_th_c_005fif_005f0.doStartTag();
    if (_jspx_eval_c_005fif_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t\t\t\t<a href=\"Login\" class=\"btn navbar-btn btn-primary\">로그인</a>\r\n");
        out.write("\t\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f0);
    return false;
  }

  private boolean _jspx_meth_c_005fif_005f1(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_005fif_005f1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_005fif_005f1.setPageContext(_jspx_page_context);
    _jspx_th_c_005fif_005f1.setParent(null);
    // /WEB-INF/page/header.jsp(70,5) name = test type = boolean reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
    _jspx_th_c_005fif_005f1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${loginId ne null}", boolean.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_005fif_005f1 = _jspx_th_c_005fif_005f1.doStartTag();
    if (_jspx_eval_c_005fif_005f1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\r\n");
        out.write("\t\t\t\t\t\t<a href=\"Logout\" class=\"btn navbar-btn btn-danger\">로그아웃</a>\r\n");
        out.write("\t\t\t\t\t");
        int evalDoAfterBody = _jspx_th_c_005fif_005f1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_005fif_005f1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
      return true;
    }
    _005fjspx_005ftagPool_005fc_005fif_0026_005ftest.reuse(_jspx_th_c_005fif_005f1);
    return false;
  }
}
