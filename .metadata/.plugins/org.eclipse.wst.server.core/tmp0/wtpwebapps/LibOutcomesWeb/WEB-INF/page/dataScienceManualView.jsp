<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- Page Content -->
<div class="container">

    <!-- 글 제목, 작성자  -->
    <div class="row">
        <div class="col-lg-8 col-center">
            <h1 class="page-header">${manual.title}
                <small>by ${manual.writerName}</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->

    <!-- Content Row -->
    <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8 col-center">

            <!-- Blog Post -->

            <hr>

            <!-- Date/Time -->
            <p><i class="fa fa-clock-o"></i> Posted on ${manual.date}</p>

            <hr>

            <!-- Preview Image -->
            <img class="img-responsive" src="http://placehold.it/900x300" alt="">

            <hr>

            <!-- Post Content -->
            <p class="lead">${manual.contents}</p>
            
            <hr>
            
            <div>
            	<a class="btn btn-primary" id="board_modify" name="${manual.id}">글 수정</a>
            	<a class="btn btn-primary" id="board_delete" name="${manual.id}">글 삭제</a>
            </div>
            
            <hr>

            <!-- Comments -->

            <!-- Comments Form -->
            <div class="well">
                <h4>댓글 남기기:</h4>
                <form action="<c:url value="DataScienceManualComment?id=${manual.id}"/>" method="post">
                    <div class="form-group">
                        <textarea class="form-control" name="comment" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>

            <hr>

            <!-- Posted Comments -->
            <c:forEach items="${commentList}" var="row">
            		
	            <div class="media">
	                <div class="media-body">
	                    <h4 class="media-heading">${row.writerName}
	                        <small>${row.date}</small>
	                    </h4>
	                    ${row.comment}
	                </div>
	            </div>
	            
            </c:forEach>

        </div>

		<br>

    </div>
    <!-- /.row -->
    
</div>
<!-- /.container -->


<%@ include file="footer.jsp"%>
