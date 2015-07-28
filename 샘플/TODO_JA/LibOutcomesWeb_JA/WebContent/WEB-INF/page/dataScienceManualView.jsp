<%@page import="com.hansung.liboutcomes.model.Manual"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%
	Manual manual = (Manual) request.getAttribute("manual");
	
	pageContext.setAttribute("manual", manual);
%>

<div class="contents">
	<div class="col-lg-8 col-centered">
		<div id="page_title">
			<h1>
				매뉴얼 View
			</h1>
		</div>
		
		<div>
			<c:out value="${manual.title }"/>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>