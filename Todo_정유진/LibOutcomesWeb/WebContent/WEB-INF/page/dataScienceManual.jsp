<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- Page Content -->
<div class="container">

    <!-- Page Heading -->
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">메뉴얼 게시판
                <small>데이터 사이언스</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <div class="row">

        <div class="col-md-8">
			
			<!-- 게시글 for문 돌리기 -->
			<c:forEach items="${list}" var="row" >
			
				<h2>${row.title}</h2>
				<big class="lead">by ${row.writerName} &nbsp</big>
				<i class="fa fa-clock-o"></i> Posted on ${row.date}
	            <hr>
	            <img class="img-responsive img-hover" src="http://placehold.it/900x300" alt="">
	            <hr>
	            <p>${row.contents}</p>
	            <a class="btn btn-primary board_list" name="${row.id}">Read More <i class="fa fa-angle-right"></i></a>
				<hr>
			
			</c:forEach>

            <!-- Pager -->
            <ul class="pager">
                <li class="previous">
                    <a href="#">&larr; Older</a>
                </li>
                <li class="next">
                    <a href="#">Newer &rarr;</a>
                </li>
            </ul>

        </div>

        <!-- Sidebar Widgets Column -->
        <div class="col-md-4">

            <!-- Blog Search Well -->
            <div class="well">
                <h4>검색</h4>
                <div class="input-group">
                    <input type="text" class="form-control">
                    <span class="input-group-btn">
                        <button class="btn btn-default" type="button"><i class="fa fa-search"></i></button>
                    </span>
                </div>
                <!-- /.input-group -->
            </div>

            <!-- Categories Well -->
            <div class="well">
                <h4>카테고리</h4>
                <div class="row">
                    <div class="col-lg-12">
                        <ul class="list-unstyled">
                            <li><a href="#">Category Name</a>
                            </li>
                            <li><a href="#">Category Name</a>
                            </li>
                            <li><a href="#">Category Name</a>
                            </li>
                            <li><a href="#">Category Name</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- /.row -->
            </div>

            <!-- Side Widget Well -->
            <div class="well">
                <h4>Side Widget Well</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Inventore, perspiciatis adipisci accusamus laudantium odit aliquam repellat tempore quos aspernatur vero.</p>
            </div>
            
            <a class="btn btn-primary" href="DataScienceManualCreate">글 쓰기</i></a>

        </div>

    </div>
    <!-- /.row -->
    
</div>
<!-- /.container -->


<%@ include file="footer.jsp"%>
