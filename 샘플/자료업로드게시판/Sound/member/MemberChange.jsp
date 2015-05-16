<%@ page contentType="text/html;charset=UTF-8"%>
    
<jsp:useBean id="memInfo" class="Sound.MemberInfo"/>
    
<%
   request.setCharacterEncoding("UTF-8");
   String mem_id = (String)session.getAttribute("idKey");
   String passwd = memInfo.getPasswd(mem_id);
   String name = memInfo.getName(mem_id);
   String num1 = memInfo.getNum1(mem_id);
   String num2 = memInfo.getNum2(mem_id);
   String email = memInfo.getEmail(mem_id);
   String phone = memInfo.getPhone(mem_id);
   String zipcode = memInfo.getZipcode(mem_id);
   String address = memInfo.getAddress(mem_id);
   String job = memInfo.getJob(mem_id);
%>
    
<html>
<head>
<title>회원 정보 수정</title>
<link href="style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" src="script.js"></script>
</head>
<body bgcolor="#996600" onLoad="regForm.mem_name.focus">
<br><br>
    
<table align="center" border="0" cellspacing="0" cellpadding="5" >
  <tr> 
    <td align="center" valign="middle" bgcolor="#FFFFCC"> 
      <table border="1" cellspacing="0" cellpadding="2"  align="center">
          
        <form name="regForm" method="post" action="MemberChange2.jsp">
          <tr align="center" bgcolor="#996600"> 
            <td colspan="3"><font color="#FFFFFF"><b>회원 정보 수정</b></font></td>
          </tr>
          <tr> 
            <td width="16%">아이디</td>
            <td width="57%"> <%=mem_id%>
            <td width="27%">아이디</td>
          </tr>
          <tr> 
            <td>패스워드</td>
            <td> <input type="password" name="mem_passwd" size="15" value="<%=passwd%>"> </td>
            <td>패스워드를 적어주세요.</td>
          </tr>
          <tr> 
            <td>패스워드 확인</td>
            <td> <input type="password" name="mem_repasswd" size="15" value="<%=passwd%>"> </td>
            <td>패스워드를 확인합니다.</td>
          </tr>
          <tr> 
            <td>이름</td>
            <td> <input type="text" name="mem_name" size="15" value="<%=name%>"> </td>
            <td>고객실명을 적어주세요.</td>
          </tr>
		  <tr> 
            <td>주민등록번호</td>
            <td> <input type="text" name="mem_num1" size="6" maxlength="6"
			onKeyUp="if(this.value.length==6)regForm.mem_num2.focus()" value="<%=num1%>">-
			     <input type="password" name="mem_num2" size="7" maxlength="7"
				  onKeyUp="if(this.value.length==7)regForm.mem_email.focus();" value="<%=num2%>"></td>
            <td>주민등록번호를 적어주세요.</td>
          </tr>
          <tr> 
            <td>이메일</td>
            <td> <input type="text" name="mem_email" size="27" value="<%=email%>"> </td>
            <td>이메일을 적어주세요.</td>
          </tr>
          <tr>  
            <td>전화번호</td>
            <td> <input type="text" name="mem_phone" size="20" value="<%=phone%>"> </td>
            <td>연락처를 적어 주세요.</td>
          </tr>
		  <tr>  
            <td>우편번호</td>
              <td> <input type="text" name="mem_zipcode" size="7" value="<%=zipcode%>"></td>
              <td>우편번호를 적어 주세요.</td>
          </tr>
		  <tr>  
            <td>주소</td>
            <td><input type="text" name="mem_address" size="70" value="<%=address%>"></td>
            <td>주소를 적어 주세요.</td>
          </tr>
		  <tr>  
            <td>직업</td>
            <td><select name=mem_job>
 					<option value="0">선택하세요.
 					<option value="회사원">회사원
 					<option value="연구전문직" <% if(job.equals("회사원")) out.print("selected"); %> >연구전문직
 					<option value="교수학생">교수학생
 					<option value="일반자영업">일반자영업
 					<option value="공무원">공무원
 					<option value="의료인">의료인
 					<option value="법조인">법조인
 					<option value="종교,언론,에술인">종교.언도론/예술인
 					<option value="농,축,수산,광업인">농/축/수산/광업인
 					<option value="주부">주부
 					<option value="무직">무직
 					<option value="기타">기타
				  </select></td>
            <td>직업을 선택 하세요.</td>
          </tr>
          <tr> 
            <td colspan="3" align="center"> 
             <input type="button" value="수정하기" onclick="inputCheck2()"> 
              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
             <input type="button" value="취소" onclick="ChangeCancle()"> 
            </td>
          </tr>
        </form>
      </table>
    </td>
  </tr>
</table>
</body>
</html>
