<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"%>

<!-- 게시판
==========================================-->

<!-- 제목 -->
<div class="space"><br><br><br></div>
<div class="section-title center text-center">
	<h2>게시판 <strong>Board</strong></h2>
	<div class="line">
		<hr>
	</div>
</div>
<!-- /.제목 -->
		
		
<!--main-->
<div class="container" id="main">
	<div id="tf-works">
	    <div class="container"> 
	    
	    	<!-- 카테고리 -->
	    	<div class="categories">
	           	<ul class="cat">
					<li class="pull-left"><h4>CATEGORIES:</h4></li>
					<li class="pull-right">
						<ol class="type">
							<li><a href="#" data-filter="*" class="active">All</a></li>
	                        <li><a href="#" data-filter=".library">도서관 DB</a></li>
	                        <li><a href="#" data-filter=".menual">데이터 사이언스 메뉴얼</a></li>
	                        <li><a href="#" data-filter=".reference">데이터 사이언스 적용사례</a></li>
	                    </ol>
					</li>
				</ul>
				<div class="clearfix"></div>
			</div>
			<!-- /.카테고리 -->


	        <!-- 게시글 -->
			<div id="lightbox" class="row">
			
				<c:forEach items="${list}" var="row" >
			
					<div class="col-md-4 col-sm-6 ${row.category}">		
						<div class="panel panel-default">
						
							<div class="panel-heading">
								<a href="#" class="pull-right">${row.date}
									<br>by ${row.writerName}</a>
								<a href="BoardView?num=${row.num}" style="color: #000;">
									<h4>${row.title}</h4></a>
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
				
	        </div>
	        <!-- /.게시글 -->
        
        	<a class="btn btn-primary" href="BoardCreate">글 쓰기</a>
        	
		</div>
    </div>
</div>

<%@ include file="footer.jsp"%>
