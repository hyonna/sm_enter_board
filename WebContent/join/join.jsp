<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/join.css">
<title>Insert title here</title>

<script type="text/javascript">

$(function() {
	
	/* 이메일 셀렉트 박스 옵션값 input값에 넣기 */
	$('#select_email').change(function() {
		var select = $('#select_email option:selected').text();
		$('#femail2').val(select);
	});
	
	
	 /*  
	  $('.idOk').click(function() {
		
		  open("./idOk.jsp","_blank","top=200, left=200, width=300, height=250");
		  
	}); */
	  
	  
	 /*  아이디 중복확인 */
	  
	/*   $('#id').on('keyup', function() {
		  
		  if($('#id').val() == '') {
			  
			  $('#idChk').html('<p id="idOver" style="color:red; font-weight:700; margin:20px 0;">아이디 중복확인 해야함</p>');
		  }
		
	}); */
	  
	  
	 /* 
	  $('#id').change(function() {
		  
		  $('#idc').val('0');
		
	});
	   */
	  
		  
	  
	 /*  입력란이 전부 null일때 */
	 
	/*  $('#btn_more').click(function() {
		 
		 	var result = true;
		 
		 $('.nul').each(function() {
			
			 if($(this).prop('value') == '') {
				 
				 result = false;
				 
			 }
				
		});
		 
		 if(result && $('#idc').val() == '1') {
			 
			 $('#formBox').submit();
			 
		 } else {
			 
			 $('#idChk').html('<p id="idOver" style="color:red; font-weight:700; margin:20px 0;">아이디 중복확인 해야함</p>');
			 alert("모두 입력하세요");
		 }
		  
		 
	});
	 

	
	
	 $('.pw').on('keyup', function() {
		 
		  if($(this).val().length > 6) {
			  
			  $(this).val($(this).val().substring(0, 6));
			  $('#pwdChk').html('<p id="pwOver" style="color:red; font-weight:700; margin:20px 0;">비밀번호 6자 미만 가능</p>');
			  
			  
		  }
	});
	 
	 $('.pw2').on('keyup', function() {
		 
		 
		 if($('.pw').val() == $('.pw2').val()) {
			 
			 $('#pwdChk').html('<p id="pwChk" style="color:blue; font-weight:700; margin:20px 0;">비밀번호 일치</p>');
			 
		 } else {
			 
			 $('#pwdChk').html('<p id="pwNot"style="color:red; font-weight:700; margin:20px 0;">비밀번호가 일치하지 않습니다.</p>');
			 
		 }
		
	}); */
	 
	
});

</script>
</head>
<body>

<!-- header start -->
	
 <jsp:include page="../temp/header_html.jsp"></jsp:include>
	
	<!-- header end -->
	
	<section>
	
	<div id="join">


	<div id="h_join">
	
		<div id="join_ul">
		
	
		<ul>
			
			<li>약관동의</li>
			<li class="j_li">정보입력</li>
			<li>가입인증</li>
			<li>가입완료</li>
		
		
		</ul>
	
		</div>
	
	
	
	<div id="join_box">
	
		<div id="title_box">
		<span class="join_title">SMTOWN</span>
		<span class="join_txt">회원가입 정보입력</span>
	</div>
		
		<div id="join_form">
		<form action="./joinProcess.jsp" id="formBox">
		<table>
		
			<tr>
				<td class="td_title">아이디 입력</td>
				<td class="td_1"><input type="text" id="fname" name="id" class="nul" placeholder="아이디 입력"></td>
				<td><input type="hidden" id="idc" value="1"><input type="button" value="중복확인" id="button" class="idOk"></td>
				<!-- <td><p id="idChk"></p></td> -->
			
			</tr>
			
			<tr>
				<td class="td_title">비밀번호(8~32자리)</td>
				<td class="td_2"><input type="password" id="fpw" name="pw" class="nul pw" placeholder="비밀번호 (8~38자리)"></td>
			
			
			</tr>
			
			<tr>
				<td class="td_pw tr_pw">비밀번호 확인</td>
				<td class="tr_pw td_2"><input type="password" id="fpw" name="pw" class="nul pw2" placeholder="비밀번호 재입력"></td>
				<!-- <td class="td_2 td_3"><p id="pwdChk"></p></td>
			 -->
			</tr>
			
			
			<tr>
			
				<td></td>
				<td class="td_2 td_3"><p class="pw_info">· 비밀번호는 8 ~ 32 자의 영문 대소문자, 숫자, 특수문자를 조합하여 설정해주세요.<br>
                                        · 다른사이트에서 사용하는 것과 동일하거나 쉬운 비밀번호는 사용하지 마세요.<br>
                                          · 안전한 계정 사용을 위해 비밀번호는 주기적으로 변경해주세요.</p></td>
			</tr>
			
			
			
			<tr>
				<td class="td_title">닉네임</td>
				<td class="td_2"><input type="text" id="fname" name="nickname" class="nul" placeholder="닉네임을 입력해주세요"></td>
			
			
			</tr>
			
			<tr>
				<td class="td_title">이메일 입력</td>
				<td class="td_2"><input type="text" id="femail" name="email" class="nul"></td>
				<td><span class="e_txt">@</span></td>
				<td class="td_2"><input type="text" id="femail2" name="email2" class="nul"> </td>
				<td class="td_2">
				<select id="select_email">
  								<option>도메인 선택</option>
   								<option value="naver" id="naver">naver.com</option>
   								<option value="daum" id="daum">hanmil.net</option>
  								 <option value="google" id="google">gmail.com</option>
 								</select>
 				</td>
			
			
			</tr>
			
			<tr>
			
				<td></td>
				<td class="td_2 td_4"><p class="pw_info">· 입력한 이메일로 인증메일이 발송됩니다.<br>
                                        · 실제로 사용중인 이메일주소를 입력해주세요. 비밀번호 분실 시 이메일을 통해 재설정이 가능합니다.</p></td>
			</tr>
			
			<tr>
				<td class="td_title">생년월일</td>
				<td class="td_s">
				
				<select id="select_birth" name="birth">
  								<option>생년월일</option>
  								
  								<% for(int i = 1950; i < 2020; i++)  {%>
   								<option value="<%=i%>"><%=i%></option>
   							
  								 <% } %>
 								</select>
 								
 								
 								</td>
 								
 								<td class="td_s">
 								<select id="select_month" name="month">
 								
 								
  								<option>월</option>
   								<% for(int i = 1; i < 13; i++)  { %>
   									
   										<% if (i < 10) { String c = "0" + i; %>
   									
   										<option value="<%=c%>"><%=c%></option>
   										
   										<% } else { %>
   										
   										<option value="<%=i%>"><%=i%></option>
   										
   										<% } %>	
   							
  								 <% } %>
 								</select></td>
 								
 								
 								
 								<td class="td_s">
 								<select id="select_date" name="date">
  								<option>일</option>
  								<% for(int i = 1; i < 32; i++)  {%>
  								
   										<% if (i < 10) { String c = "0" + i; %>
   									
   										<option value="<%=c%>"><%=c%></option>
   										
   										<% } else { %>
   										
   										<option value="<%=i%>"><%=i%></option>
   										
   										<% } %>	
   							
  								 <% } %>
 								</select></td>
			
		
			
			
			</tr>
			<tr>
			
				<td></td>
				<td class="birth_check">
 <p class="pp2"><input type="radio" name="solarCal" value="양력" checked> <span>양력</span> </p>
  <p class="pp2"><input type="radio" name="solarCal" value="음력"> <span>음력</span></p>
  <p class="pp2"><input type="radio" name="solarCal" value="윤달"> <span>윤달</span></p>
 
</td>
				
			</tr>
			
			
			<tr>
				<td class="td_title">성별</td>
				<td>
 <p class="pp"><input type="radio" name="gender" value="여자" checked> <span>여자</span> </p>
  <p class="pp"><input type="radio" name="gender" value="남자"> <span>남자</span></p>
 
</td>
				
			
			
			</tr>
		
		
		
		</table>
		
		<div id="feed_btn">
				
					<input type="submit" id="btn_more" value="작성완료">
				
				</div>
		</form>
		
		</div>
	
	
	
	</div>	
	
	</div>
	
	</div>	
	
	
	







<div id="bg">
	
		<img src="/sm_enter_board/images/bg_line.png">
	
	</div>
	</section>
	
	
	<!-- footer start -->

 <jsp:include page="../temp/footer_html.jsp"></jsp:include>


	<!-- footer end -->

</body>
</html>