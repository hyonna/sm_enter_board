<%@page import="com.sm.member.MemberDTO"%>
<%@page import="com.sm.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    
    
    request.setCharacterEncoding("UTF-8");
   	response.setCharacterEncoding("UTF-8");
   	
   	
    MemberDAO memberDAO = new MemberDAO();
    MemberDTO memberDTO = new MemberDTO();
    
    String email = request.getParameter("email") + "@" + request.getParameter("email2");
    
    memberDTO.setPw(request.getParameter("pw"));
    memberDTO.setNickname(request.getParameter("nickname"));
    memberDTO.setEmail(email);
    memberDTO.setId(request.getParameter("id"));
    
    int result = memberDAO.memberUpdate(memberDTO);    
    
    String msg = "Update Fail";
    
    if(result > 0) {
    	
 	   msg = "Update Sucess";
    }
    
    
    request.setAttribute("message", msg);
    request.setAttribute("path", "../index.jsp");
   	
   	
   	
   	%>
   	
   	 <jsp:forward page="../common/result.jsp"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>