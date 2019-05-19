<%@page import="com.sm.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
    
    %>
    
    <jsp:useBean id="memberDTO" class="com.sm.member.MemberDTO" />
    <jsp:setProperty property="*" name="memberDTO" />
    
    <%
    
    MemberDAO memberDAO = new MemberDAO();
    
    memberDTO = memberDAO.memberLogin(memberDTO);
    
    
    if(memberDTO != null) {
    	
    	 session.setAttribute("member", memberDTO); //키는 우리 맘대로 만들기
   		 response.sendRedirect("../index.jsp");
   		 
    
    } else {
    	
   		 request.setAttribute("message", "Login Fail");
   		 request.setAttribute("path", "./login.jsp");
   		 
   		 RequestDispatcher view = request.getRequestDispatcher("../common/result.jsp");
   	     view.forward(request, response);
    }
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>