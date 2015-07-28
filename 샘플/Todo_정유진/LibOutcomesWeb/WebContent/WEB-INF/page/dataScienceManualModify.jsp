<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- Page Content -->
<div class="container">

	<!-- Page Heading -->
    <div class="row">
        <div class="col-lg-8 col-center">
            <h1 class="page-header">글 수정
                <small>데이터 사이언스 메뉴얼</small>
            </h1>
        </div>
    </div>
    <!-- /.row -->
    
    <!-- 글 작성 -->
    <div class="row">
        <div class="col-lg-8 col-center">

            <form action="<c:url value="DataScienceManualModify?id=${manual.id}"/>" method="post" >
            	<div class="control-group form-group">
                    <div class="controls">
                        <label>글 제목:</label>
                        <input type="text" class="form-control" name="title" value="${manual.title}" required>
                        <p class="help-block"></p>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>작성자 이름:</label>
                        <input type="text" class="form-control" name="writerName" value="${manual.writerName}" disabled>
                        <p class="help-block"></p>
                    </div>
                </div>
                <div class="control-group form-group">
                    <div class="controls">
                        <label>글 내용:</label>
                        <textarea rows="10" cols="100" class="form-control" name="contents" required maxlength="999" style="resize:none">${manual.contents}</textarea>
                    </div>
                </div>
                <button type="button" class="btn btn-primary">취소</button>
                <button type="submit" class="btn btn-primary">글 수정</button>
            </form>
            
        </div>

    </div>
    <!-- /.row -->

</div>
<!-- /.container -->


<%@ include file="footer.jsp"%>
