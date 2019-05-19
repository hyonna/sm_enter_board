<%@page import="com.sm.member.MemberDAO"%>
<%@page import="com.sm.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
/*     System.out.println(request.getParameter("id")); */
    
    request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
    %>

<%-- 	<jsp:useBean id="memberDTO" class="com.sm.MemberDTO" scope="page" /> --%>
	<%-- <jsp:setProperty property="*" name="memberDTO"/> --%>
    
    
   <% 
   
   
   MemberDAO memberDAO = new MemberDAO();
   MemberDTO memberDTO = new MemberDTO();
   
   String email = request.getParameter("email") + "@" + request.getParameter("email2");
   String birth = request.getParameter("birth") + request.getParameter("month") + request.getParameter("date");
   
   memberDTO.setId(request.getParameter("id"));
   memberDTO.setPw(request.getParameter("pw"));
   memberDTO.setNickname(request.getParameter("nickname"));
   memberDTO.setEmail(email);
   memberDTO.setBirth(birth);
   memberDTO.setSolarCal(request.getParameter("solarCal"));
   memberDTO.setGender(request.getParameter("gender"));
   
   
   int result = memberDAO.memberJoin(memberDTO);
   
   String msg = "Join Fail";
   
   if(result > 0) {
	   
	   msg = "Join Sucess";
   }
   
   
   request.setAttribute("message", msg);
   request.setAttribute("path", "../index.jsp");
   
   
   %> 
   
    <jsp:forward page="../common/result.jsp"></jsp:forward>
   
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Member Join Process Page</h1>

</body>
</html>