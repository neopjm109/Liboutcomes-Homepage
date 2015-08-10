<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 일반 게시판
==========================================-->
<section id="lib-board">
    <div class="container text-center">
        
        <!-- 제목 -->
        <article class="section-title center">
            <h2><strong>일반</strong> 게시판</h2>
            <div class="line">
                <hr>
            </div>
        </article>
        <div class="space"></div>
        <!-- /.제목 -->
        
        <!-- 카테고리 -->
        <article class="categories">
            <hr>
            <ul class="cat">
                <li class="pull-left"><h4>카테고리:</h4></li>
                <li class="pull-right">
                    <ol class="type">
                        <li><a href="#" data-filter="*" class="active">All</a></li>
                        <li><a href="#" data-filter=".mining">데이터 마이닝</a></li>
                        <li><a href="#" data-filter=".library">도서관 DB</a></li>
                        <li><a href="#" data-filter=".report">논문 · 보고서</a></li>
                        <li><a href="#" data-filter=".menual">메뉴얼</a></li>
                        <li><a href="#" data-filter=".etc">기타 문의</a></li>
                    </ol>
                </li>
            </ul>
            <div class="clearfix"></div>
            <hr>
        </article>
        <!-- /.카테고리 -->
        
        <!-- 게시글 -->
        <article id="lightbox" class="row">
            <c:forEach items="${list}" var="row" >
        
                <div class="col-md-4 col-sm-6 ${row.category}">     
                    <div class="panel panel-default">
                    
                        <div class="panel-heading">
                            <a href="#" class="pull-right">${row.date}
                                <br>by ${row.writerName}</a>
                            <h4><a href="BoardView?num=${row.num}" style="color: #000;">${row.title}</a></h4>
                        </div>
                        
                        <div class="panel-body" style="height: 200px; overflow: hidden;">
                            <div class="clearfix"></div>
                            <hr>
                            <div class="clearfix"></div>
                            <p>${row.contents}</p>
                        </div>
                        
                        <div class="panel-body">
                            <a href="BoardView?num=${row.num}">더 보기...</a>
                        </div>
                        
                    </div>              
                </div>
                
            </c:forEach>    
        </article>
        <!-- /.게시글 -->
    
        <a class="btn btn-primary" href="BoardWrite">글 쓰기</a>
        
    </div>
</section>

<%@ include file="footer.jsp"%>