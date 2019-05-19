<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/login.css">
<title>Insert title here</title>
<script type="text/javascript">
$(function() {
$('#btnJoin').click(function() {
	location.href="../join/agree.jsp";
});

});
</script>
</head>
<body>

<!-- header start -->
	
 <jsp:include page="../temp/header_html.jsp"></jsp:include>
	
	<!-- header end -->
	
	
	<!-- logn form -->
	
	<div class="container">

<div id="agree_box">
	<div id="n_title">
	<span class="notice_title">로그인</span>
	</div>			
	
        
    <div id="login1">
        
        
        <form action="./loginProcess.jsp" id="loginForm" method="post" name="login">



<fieldset>

<legend>Member Login</legend>

<div id="login">
<p>
<label for="userId" class="labelStyle">아이디</label>
<input type="text" id="userId" name="id"/>
</p>
<p>
<label for="userPWD" class="labelStyle">비밀번호</label>
<input type="password" id="userPWD" name="pw"/>
</p>


    
</div>     
    
<input type="submit" value="로그인하기" id="btnLogin" />
   
    
<p id="btn1">
<input type="checkbox" id="saveId" value="savedIdYes" />
<label for="saveId">아이디 저장 </label>
<input type="checkbox" id="secure" value="secureYes" />
<label for="secure">보안접속 </label>

</p>

<!--<p id="btn2">
<input type="button" value="회원가입" id="btnJoin" />
<input type="button" value="아이디/비밀번호 찾기" id="btnSearch" />
</p>-->
        
    </div>
        
            </fieldset>
        </form>
        
    <div class="login_box">
        
        <div class="help">
        
            <form>
                <fieldset>
                    <legend>로그인하단폼</legend>
                <p>&#8226;&nbsp;페이스북 아이디로 간편하게 로그인하세요.
                    <input type="image" value="페이스북회원가입" src="../images/login_facebook.jpg" id="facebook"></p>
                    
                    <p>&#8226;&nbsp;네이버 아이디로 간편하게 로그인하세요.
                   <input type="image" value="네이버회원가입" src="../images/login_naver.jpg" id="naver"></p>
                    
                    <p>&#8226;&nbsp;아이디 / 비밀번호를 잊어버리셨나요?
                    <input type="button" value="아이디/비밀번호 찾기" id="btnSearch" /></p>
                    
                    <p>&#8226;&nbsp;아이디가 없으신 분은 회원가입을 해주세요.
                    <input type="button" value="회원가입" id="btnJoin" />
                </p>
                
                </fieldset>
            
            
            
            </form>
        
        
        </div>
        
        
    </div>    
        
        
        </div>
        
        </div>
	
	<!-- footer start -->

 <jsp:include page="../temp/footer_html.jsp"></jsp:include>


	<!-- footer end -->
	

</body>
</html>