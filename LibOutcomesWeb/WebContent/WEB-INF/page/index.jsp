<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>

<div class="contents">
	<div id="main_slider_wrapper">
		<div id="main_slider_container">
			<div id="main_slider">
				<ul>
					<li>
						<div class="list-bg">
						</div>
						<div class="list-contents">
							<div class="list-dialog">
								<div class="list-dialog-title">
									 국화
								</div>
								<div class="list-dialog-contents">
									국화는 동양에서 재배하는 관상식물 중 가장 역사가 오랜 꽃이며, 사군자의 하나로 귀히 여겨왔다. 중국 원산이라고 하나, 그 조상은 현재 한국에서도 자생하는 감국이라는 설, 산국과 뇌향국화와의 교잡설, 감국과 산구절초와의 교잡설 등 여러 가지가 있다. 재배를 시작한 시기는 당대(唐代) 이전으로 추정된다. [네이버 지식백과] 국화 [菊花] (두산백과)
								</div>
								<div class="list-dialog-more">
									<div>
										자세히 알아보기
									</div>
								</div>
							</div>
						</div>
					</li><li>
						<div class="list-bg">
						</div>
						<div class="list-contents">
							<div class="list-dialog">
								<div class="list-dialog-title">
									사막
								</div>
								<div class="list-dialog-contents">
									식물이 자라기 힘든 지역으로, 전체 육지의 1/10을 차지한다. 한랭사막, 중위도 사막, 열대사막으로 구분한다. 열대, 중위도 사막의 분포는 연평균강수량 250㎜ 등우량선과 거의 일치한다. 한랭사막은 한랭하여 식물이 못 자라는 곳으로, 연평균강수량 125㎜ 이하이다. 표면을 형성하는 물질에 따라 암석사막, 모래사막, 자갈사막으로 나눌 수 있다. [네이버 지식백과] 사막 [desert, 沙漠] (두산백과)
								</div>
								<div class="list-dialog-more">
									<div>
										자세히 알아보기
									</div>
								</div>
							</div>
						</div>
					</li><li>
						<div class="list-bg">
						</div>
						<div class="list-contents">
							<div class="list-dialog">
								<div class="list-dialog-title">
									등대
								</div>
								<div class="list-dialog-contents">
									해상교통의 안전과 선박 운항의 능률 증진을 위하여 해안이나 섬에 설치된 구조물. [네이버 지식백과] 등대 [燈臺] (한국민족문화대백과, 한국학중앙연구원)
								</div>
								<div class="list-dialog-more">
									<div>
										자세히 알아보기
									</div>
								</div>
							</div>
						</div>
					</li><li>
						<div class="list-bg">
						</div>
						<div class="list-contents">
							<div class="list-dialog">
								<div class="list-dialog-title">
									펭귄
								</div>
								<div class="list-dialog-contents">
									펭귄과의 바다새로서 남반구에 6속 18종이 있다. 곧추 서서 걸으며 헤엄치기에 알맞게 날개가 지느러미 모양이고 앞다리의 날개깃은 변형되어 있다. 깃털은 짧고 온몸을 덮는다. 골격을 구성하는 뼈는 일반 조류와 마찬가지이지만 결합 부위가 편평하고 어깨뼈가 발달했다. 가슴뼈에는 낮은 용골돌기가 있는데, 이는 날개가 물속에서 사용하기 편리하게 변화하면서 가슴 및 목 근육의 구성이 달라진 것과도 관계가 있는 듯하다. [네이버 지식백과] 펭귄 [penguin] (두산백과)
								</div>
								<div class="list-dialog-more">
									<div>
										자세히 알아보기
									</div>
								</div>
							</div>
						</div>
					</li><li>
						<div class="list-bg">
						</div>
						<div class="list-contents">
							<div class="list-dialog">
								<div class="list-dialog-title">
									튤립
								</div>
								<div class="list-dialog-contents">
									남동 유럽과 중앙아시아 원산이다. 내한성 구근초로 가을에 심는다. 비늘줄기는 달걀 모양이고 원줄기는 곧게 서며 갈라지지 않는다. 잎은 밑에서부터 서로 계속 어긋나고 밑부분은 원줄기를 감싼다. 길이 20∼30cm로서 넓은 바소꼴이거나 타원 모양 바소꼴이고 가장자리는 물결 모양이며 안쪽으로 약간 말린다. 빛깔은 파란빛을 띤 녹색 바탕에 흰빛이 돌지만 뒷면은 짙다. [네이버 지식백과] 튤립 [tulip] (두산백과)
								</div>
								<div class="list-dialog-more">
									<div>
										자세히 알아보기
									</div>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
			<div id="main_slider_number">
				<ul>
					<li class="current">
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/slider-on.png">
						</span>
					</li><li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/slider-off.png">
						</span>
					</li><li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/slider-off.png">
						</span>
					</li><li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/slider-off.png">
						</span>
					</li><li>
						<span>
							<img src="${pageContext.request.contextPath}/assets/img/slider-off.png">
						</span>
					</li>
				</ul>
			</div>
		</div>
	</div>

	<div id="main_contents" class="row">
		내용이 들어갈 자리입니다.<br>
		메뉴, 내용, 이미지 크기가 서로 맞지 않다고 생각하시겠지만...<br>
		이미지 크기는 일부러 넓게 쓸수 있도록 맞춰놨습니다<br>
		하지만 메뉴와 내용은 같은 너비입니다.<br>
		코드 일부분에 주석처리 해놓았으니 공부가 되었으면 좋겠네요 :D<br>
		질문사항 있으면 바로바로 연락주시면 좋겠어요~<br>
		내용이 들어갈 자리입니다.<br>
		메뉴, 내용, 이미지 크기가 서로 맞지 않다고 생각하시겠지만...<br>
		이미지 크기는 일부러 넓게 쓸수 있도록 맞춰놨습니다<br>
		하지만 메뉴와 내용은 같은 너비입니다.<br>
		코드 일부분에 주석처리 해놓았으니 공부가 되었으면 좋겠네요 :D<br>
		질문사항 있으면 바로바로 연락주시면 좋겠어요~<br>
		내용이 들어갈 자리입니다.<br>
		메뉴, 내용, 이미지 크기가 서로 맞지 않다고 생각하시겠지만...<br>
		이미지 크기는 일부러 넓게 쓸수 있도록 맞춰놨습니다<br>
		하지만 메뉴와 내용은 같은 너비입니다.<br>
		코드 일부분에 주석처리 해놓았으니 공부가 되었으면 좋겠네요 :D<br>
		질문사항 있으면 바로바로 연락주시면 좋겠어요~<br>
		내용이 들어갈 자리입니다.<br>
		메뉴, 내용, 이미지 크기가 서로 맞지 않다고 생각하시겠지만...<br>
		이미지 크기는 일부러 넓게 쓸수 있도록 맞춰놨습니다<br>
		하지만 메뉴와 내용은 같은 너비입니다.<br>
		코드 일부분에 주석처리 해놓았으니 공부가 되었으면 좋겠네요 :D<br>
		질문사항 있으면 바로바로 연락주시면 좋겠어요~<br>
		내용이 들어갈 자리입니다.<br>
		메뉴, 내용, 이미지 크기가 서로 맞지 않다고 생각하시겠지만...<br>
		이미지 크기는 일부러 넓게 쓸수 있도록 맞춰놨습니다<br>
		하지만 메뉴와 내용은 같은 너비입니다.<br>
		코드 일부분에 주석처리 해놓았으니 공부가 되었으면 좋겠네요 :D<br>
		질문사항 있으면 바로바로 연락주시면 좋겠어요~<br>

		<%
		
			if (null != request.getAttribute("resultSet")) {
				ResultSet rs = (ResultSet) request.getAttribute("resultSet");
				while (rs.next()) {
					out.println(rs.getString("email"));
					out.println(rs.getString("name"));
				}
			}
		%>
	</div>
</div>


<%@ include file="footer.jsp"%>