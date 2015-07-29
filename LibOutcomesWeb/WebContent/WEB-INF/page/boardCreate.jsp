<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 게시판 글 작성
==========================================-->

<div class="container">
	<div class="space"><br><br><br></div>
		
	<!-- 제목 -->
    <div class="row">
        <div class="col-lg-12 col-center">
            <h1 class="page-header">글 작성
                <small>게시판</small>
            </h1>
        </div>
    </div>
   	<!-- /.제목 -->
   	
    
    <!-- 내용 -->
    <div class="row">
        <div class="col-lg-12 col-center">
        
            <form action="<c:url value="BoardCreate"/>" method="post" >
            
            	<div class="form-group">
            		<label>카테고리:</label>
            		<!-- <select class="form-control" name="category" required> 크롬에서 required 오류 : 전송 불가 -->
	            	<select class="form-control" name="category">
						<option value="library">도서관 DB</option>
						<option value="menual">데이터 사이언스 메뉴얼</option>
						<option value="reference">데이터 사이언스 적용사례</option>
					</select>
				</div>
				
            	<div class="form-group">
                    <label>글 제목:</label>
                    <input type="text" class="form-control" name="title">
                    <p class="help-block"></p>
                </div>
                
                <div class="form-group">
                    <label>작성자 이름:</label>
                    <input type="text" class="form-control" name="writerName">
                    <p class="help-block"></p>
                </div>
                
				<div class="form-group">
					<textarea id="summernote" name="contents"></textarea>
                </div>
                
                <a class="btn btn-primary" href="Board" role="button">취소</a>
                <button type="submit" class="btn btn-primary">글 등록</button>
                
            </form>
            
        </div>
    </div>
    <!-- /.내용 -->

</div>
<!-- /.container -->

<br /><br /><br /><br />

<%@ include file="footer.jsp"%>
