<%@page import="com.hansung.liboutcomes.model.Manual"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%

	/*
	*		Get Request
	*/
	
	ArrayList<Manual> list = (ArrayList<Manual>) request.getAttribute("manual_list");
	
	/*
	*		Set PageContext
	*/
	
	pageContext.setAttribute("list", list);
%>
<div class="contents">

	<div class="col-lg-8 col-centered">
		<div id="page_title">
			<h1>
				매뉴얼
			</h1>
		</div>
		
		<div class="col-lg-12 col-centered">
			<table id="board_list" class="table">
				<thead>
					<tr>
						<th class="text-center" width="10">
							No
						</th>
						<th class="text-center">
							제목
						</th>
						<th class="text-center" style="width:150px;">
							작성자
						</th>
						<th class="text-center" style="width:150px;">
							날짜
						</th>
					</tr>
				</thead>
				<tbody class="text-center">
					<c:forEach items="${list}" var="row">
						<tr style="cursor:pointer;">
							<td>
								${row.id}
							</td>
							<td>
								${row.title}
							</td>
							<td>
								${row.writerName}
							</td>
							<td>
								${row.date}
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>

<%@ include file="footer.jsp"%>