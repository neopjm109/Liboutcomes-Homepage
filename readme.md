# Liboutcomes Webpage Project

### To Do List
- Database 완성
- 페이지 마다 내용 채우기

### 참고 사이트
1. 주석 작성방법 : [코드 문서화]
2. 

### 간단한 설명
**접속 경로**
* *localhost:8080/LibOutcomesWeb* 까지가 기본 url
* 기본 url 뒤는 해당 페이지 url
    - ex. **/** 가 메인 페이지 url
* 페이지 url은 서블릿 파일에 @WebServlet()으로 선언되어 있음
* 즉, *localhost:8080/LibOutcomesWeb/* 접속하면 @WebServlet("/")을 통해 해당 서블릿으로 매핑됨
    - ex. *localhost:8080/LibOutcomesWeb/IntroProject* 는 @WebServlet("/IntroProject") 가 선언된 IntroProjectServlet.java 로 매핑
* 매핑된 서블릿의 doGet()을 통해 jsp 페이지로 이동

**폼**
* 글 작성, 수정 등의 form은 POST 방식으로 서블릿에 전송됨
* 해당 서블릿에서는 doPost()에서 작업

**이벤트**
* script 관련 코드들은 js 파일에서 작성
    - ex. 버튼 관련 이벤트 
* jsp 파일에서 js 파일을 임포트하여 js 파일내의 함수 사용

[코드 문서화]: https://github.com/xpressengine/xe-core/wiki/%EC%BD%94%EB%93%9C-%EB%AC%B8%EC%84%9C%ED%99%94%EB%A5%BC-%EC%9C%84%ED%95%9C-%EC%A3%BC%EC%84%9D-%EA%B7%9C%EC%B9%99(Draft-v0.1)