<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 게시판 글 작성
==========================================-->
<section class="container">
	<div class="space"><br><br><br></div>
		
	<!-- 제목 -->
    <article class="row">
        <div class="col-lg-12 col-center">
            <h1 class="page-header">글 작성
                <small>게시판</small>
            </h1>
        </div>
    </article>
   	<!-- /.제목 -->
   	
    <!-- 내용 -->
    <article class="row">
        <div class="col-lg-12 col-center">
        
            <form action="<c:url value="BoardWrite"/>" method="post" >
            
            	<div class="form-group">
            		<label>카테고리:</label>
            		<!-- <select class="form-control" name="category" required> 크롬에서 required 오류 : 전송 불가 -->
	            	<select class="form-control" name="category">
	            	    <option value="mining">데이터 마이닝</option>
						<option value="library">도서관 DB</option>
						<option value="report">논문 · 보고서</option>
						<option value="menual">메뉴얼</option>
						<option value="etc">기타 문의</option>
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
					<textarea class="summernote" name="contents"></textarea>
                </div>
                
                <a class="btn btn-primary" href="Board" role="button">취소</a>
                <button type="submit" class="btn btn-primary">글 등록</button>
                
            </form>
            
        </div>
    </article>
    <!-- /.내용 -->

</section>

<br /><br /><br /><br />

<%@ include file="footer.jsp"%>