<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 게시판 글 수정
==========================================-->

<div class="container">
	<div class="space"><br><br><br></div>
	
	<!-- 제목 -->
    <div class="row">
        <div class="col-lg-12 col-center">
            <h1 class="page-header">글 수정
                <small>게시판</small>
            </h1>
        </div>
    </div>
   	<!-- /.제목 -->
   	
   
    <!-- 글 작성 -->
    <div class="row">
        <div class="col-lg-12 col-center">

            <form action="<c:url value="BoardModify?num=${board.num}"/>" method="post" >
            
            	<div class=" form-group">
                    <label>글 제목:</label>
                    <input type="text" class="form-control" name="title" value="${board.title}" required>
                    <p class="help-block"></p>
                </div>
                
                <div class="form-group">
                    <label>작성자 이름:</label>
                    <input type="text" class="form-control" name="writerName" value="${board.writerName}" disabled>
                    <p class="help-block"></p>
                </div>
                
                <div class="form-group">
					<textarea id="summernote" name="contents">${board.contents}</textarea>
                </div>
                
                <a class="btn btn-primary" href="BoardView?num=${board.num}" role="button">취소</a>
                <button type="submit" class="btn btn-primary">글 수정</button>
                
            </form>
            
        </div>
    </div>
    <!-- /.글 작성 -->

</div>
<!-- /.container -->

<br /><br /><br /><br />

<%@ include file="footer.jsp"%>
