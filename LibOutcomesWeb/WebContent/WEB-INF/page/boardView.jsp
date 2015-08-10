<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 게시판 글 보기
==========================================-->
<section class="container">
	<div class="space"><br><br><br></div>
	
    <!-- 제목  -->
    <article class="row">
        <div class="col-lg-12 col-center">
            <h1 class="page-header">${board.title}
                <small>by ${board.writerName}</small>
            </h1>
        </div>
    </article>
    <!-- /.제목 -->
    
    <!-- 내용 -->
    <article class="row">
        <div class="col-lg-12 col-center">
			
			<!-- 글 정보 -->
            <hr>
            <p><i class="fa fa-clock-o"></i> Posted on ${board.date}</p>

            <hr>
            <p class="lead">${board.contents}</p>
            
            <hr>
            <div>
            	<a class="btn btn-primary" id="board_modify" name="${board.num}">글 수정</a>
            	<a class="btn btn-primary" id="board_delete" name="${board.num}">글 삭제</a>
            </div>
            <!-- /.글 정보 --> 

            <!-- 댓글 작성 -->
            <hr>
            <div class="well">
                <h4>댓글 남기기:</h4>
                <form action="<c:url value="BoardComment?num=${board.num}"/>" method="post">
                    <div class="form-group">
                        <textarea class="form-control" name="comment" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">등록</button>
                </form>
            </div>
            <!-- /.댓글 작성 -->

			<!-- 댓글 -->
            <hr>
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
            <!-- /.댓글 -->
            
        </div>
    </article>
    <!-- /.내용 -->
    
</section>

<br /><br /><br /><br />

<%@ include file="footer.jsp"%>