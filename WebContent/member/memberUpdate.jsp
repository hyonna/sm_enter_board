<%@page import="com.sm.member.MemberDTO"%>
<%@page import="com.sm.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    request.setCharacterEncoding("UTF-8");
   	response.setCharacterEncoding("UTF-8");
   	
   	String id = request.getParameter("id");
    
   
   	MemberDAO memberDAO = new MemberDAO();
   	MemberDTO memberDTO = memberDAO.selectOne(id);
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/memberUpdate.css">
<title>Insert title here</title>

<script type="text/javascript">

$(function() {
	
	/* 이메일 셀렉트 박스 옵션값 input값에 넣기 */
	$('#select_email').change(function() {
		var select = $('#select_email option:selected').text();
		$('#femail2').val(select);
	});
	
	
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
	
	
	<div id="join_box">
	
		<div id="title_box">
		<span class="join_title">SMTOWN</span>
		<span class="join_txt">회원가입 정보입력</span>
	</div>
		
		<div id="join_form">
		<form action="./memberUpdateProcess.jsp">
		<table>
		
			<tr>
				<td class="td_title">아이디 입력</td>
				<td class="td_1"><input type="text" id="fname" name="id" value="<%= memberDTO.getId() %>" readonly></td>
				<td><input type="hidden" value="중복확인" id="button"></td>
			
			
			</tr>
			
			<tr>
				<td class="td_title">비밀번호(8~32자리)</td>
				<td class="td_2"><input type="password" id="fpw" class="pw" name="pw"></td>
			
			
			</tr>
			
			<tr>
				<td class="td_pw tr_pw">비밀번호 확인</td>
				<td class="tr_pw td_2"><input type="password" id="fpw" class="pw2" name="pw2" placeholder="비밀번호 재입력"></td>
			
			
			</tr>
			
			<tr>
			
				<td></td>
				<td class="td_2 td_3"><p class="pw_info">· 비밀번호는 8 ~ 32 자의 영문 대소문자, 숫자, 특수문자를 조합하여 설정해주세요.<br>
                                        · 다른사이트에서 사용하는 것과 동일하거나 쉬운 비밀번호는 사용하지 마세요.<br>
                                          · 안전한 계정 사용을 위해 비밀번호는 주기적으로 변경해주세요.</p></td>
			</tr>
			
			<tr>
				<td class="td_title">닉네임</td>
				<td class="td_2"><input type="text" id="fname" name="nickname" value="<%=memberDTO.getNickname()%>"></td>
			
			
			</tr>
			
			<tr>
				<td class="td_title">이메일 입력</td>
				<td class="td_2"><input type="text" id="femail" name="email" ></td>
				<td><span class="e_txt">@</span></td>
				<td class="td_2"><input type="text" id="femail2" name="email2"></td>
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