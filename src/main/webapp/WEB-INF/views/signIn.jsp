<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLDecoder" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
  <!-- meta태그, CSS, JS, 타이틀 인클루드  -->
 <%@ include file ="meta.jsp" %>
 <!-- 소셜 로그인(카카오, 네이버, 구글) -->
 <script src="resources/assets/js/social.js"></script>
 <script src="resources/assets/js/loginValidation.js"></script>
 
</head>
<body>
  <!--헤더 인클루드-->
   <%@ include file ="header.jsp" %>
   <!--메인 컨테이너 -->
  <section>
    <h1 class="visually-hidden">Sign In</h1>
    <div class="contentsWrap">
      <!--컨텐츠 영역-->
      <div class="row col-md-8 d-block mx-auto">
      
        <div class="form-signin w-100 m-auto">
          <form action="<c:url value='/user/login'/>" method="post" id="loginForm">
            <img class="mb-4 text-center pt-4 w-25" src="${pageContext.request.contextPath}/resources/assets/img/purplaying_logo_kor.png" alt="퍼플레잉 로고">
            <h1 class="mb-3 fw-normal text-center">퍼플레잉 로그인</h1>
        	<div id="msg">
        		<c:if test="${LoginFailMessage!=null}">
					<i class="fa fa-exclamation-circle">${LoginFailMessage}</i>
				</c:if>
			</div>
            <div class="form-floating py-2">
              <input type="email" class="form-control" id="floatingInput" onkeypress="onKeyUp(event)" placeholder="example@example.com" name="user_id"  value="${cookie.rememberId.value}" autofocus>
              <label for="floatingInput">Email address</label>
            </div>
            <div class="form-floating py-2">
              <input type="password" class="form-control" id="floatingPassword" onkeypress="onKeyUp(event)" placeholder="Password" name="user_pwd">
              <label for="floatingPassword">Password</label>
            </div>
            <div class="form-floating py-2">
              <input type="hidden" name="toURL" value="${param.toURL }" />
            </div>
        
            <div class="checkbox mb-3">
              <label>
                <input type="checkbox" name="remember-me" id="remeber" value="on" ${empty cookie.rememberId.value ? "" : "checked" }/> 다음에도 내 정보 기억하기
              </label>
            </div>
            <button class="w-100 btn btn-lg btn-primary" type="button" id="loginSubmitBtn" onclick="loginCheck()">Sign in</button>
            <p class="text-center mt-4">아이디/비밀번호를 잊으셨나요?<a href="findaccount">아이디 / 비밀번호 찾기</a></p>
            <p class="mt-5 mb-3 text-muted">&copy; 2022 Purplaying</p>
          	<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
          </form>
		
        </div>

        <hr class="my-4">
        
        <p class="text-center">아직 퍼플레잉 계정이 없나요? <a href="signup">회원가입</a></p>
        <h5 class="mb-3 text-center">또는 다른 방법으로 로그인</h5>
        
      
		<!--소셜 로그인 인클루드-->
  		<%@ include file ="socialLogin.jsp" %>
      </div>

    </div>
    <script type="text/javascript">    
	    function onKeyUp(e){	    	
	        if (e.keyCode == 13){
	        	loginCheck();
	        }
	       
	    }
    	function loginCheck(){
    		let rememberChk = $('#remeber').is(":checked");
    		let user_id = $('#floatingInput').val();
    		
    		if(rememberChk){
    			setCookie("rememberId",user_id,7);
    		}
    		else{
    			deleteCookie("rememberId");
    		}
    		$('#loginForm').submit();
    	}
    	function setCookie(cookieName, value, exdays){
    		let exdate = new Date();
    		exdate.setDate(exdate.getDate()+exdays);
    		let cookieValue = escape(value) + ((exdays==null)?"":"; expires="+exdate.toGMTString());
    		document.cookie = cookieName + "=" + cookieValue;
    	}
    	function deleteCookie(cookieName){
    		let expireDate = new Date;
    		expireDate.setDate(expireDate.getDate() - 1);
    		document.cookie = cookieName + "=" + "; expires="+ expireDate.toGMTString();
    	}
    
    </script>

  </section>
   <!--푸터 인클루드-->
  <%@ include file ="footer.jsp" %>
</body>
</html>