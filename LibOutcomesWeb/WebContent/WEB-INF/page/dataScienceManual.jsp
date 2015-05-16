<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<div class="contents">

	<div class="container">
		<div id="page_title">
			<h1>
				매뉴얼
			</h1>
		</div>
<%

	ResultSet rs = (ResultSet) request.getAttribute("manual_list");

	while(rs.next()) {
		out.print(rs.getString("manual.id") + " ");
		out.print(rs.getString("manual.title") + " ");
		out.print(rs.getString("member.name") + " ");
		out.print(rs.getString("manual.date") + " ");
		out.print(rs.getString("manual.contents") + " ");
	}

%>
	</div>

</div>

<%@ include file="footer.jsp"%>