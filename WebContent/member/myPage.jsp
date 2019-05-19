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
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/myPage.css">
<title>Insert title here</title>
</head>
<body>
<!-- header start -->
	
 <jsp:include page="../temp/header_html.jsp"></jsp:include>
	
	<!-- header end -->
	
	<div class="container">

<div id="agree_box">
	<div id="n_title">
	<span class="notice_title">내정보</span>
	</div>		

	
	<div id="notice_list">
	<div id="list_box">	
	
	<img src="/sm_enter_board/images/profile.png" width="100px" height="100px">
		
</div>	

<div id="profile_box">

	

	<table>
		<tr>
			<td class="p_title">아이디</td>
			<td class="p_value"><%= memberDTO.getId() %></td>
		</tr>
		
		<tr>
			<td class="p_title">닉네임</td>
			<td class="p_value"><%= memberDTO.getNickname() %></td>
		</tr>
		
		<tr>
			<td class="p_title">이메일</td>
			<td class="p_value"><%= memberDTO.getEmail() %></td>
		</tr>
		
		<tr>
			<td class="p_title">생년월일</td>
			<td class="p_value"><%= memberDTO.getBirth() %></td>
		</tr>
		
		<tr>
			<td class="p_title">성별</td>
			<td class="p_value"><%= memberDTO.getGender() %></td>
		</tr>
	
	
	</table>

</div>
</div>
	
	</div>	
<div id="feed_btn">
   		 
		
		
			<a href="./memberDelete.jsp?id=<%=memberDTO.getId() %>" class="btn_more b2">회원탈퇴</a>
			<a href="./memberUpdate.jsp?id=<%=memberDTO.getId() %>" class="btn_more b2 b3">정보수정</a>

		
				
	</div>
	</div>
<!-- footer start -->

 <jsp:include page="../temp/footer_html.jsp"></jsp:include>


	<!-- footer end -->

</body>
</html>