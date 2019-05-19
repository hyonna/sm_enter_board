<%@page import="com.sm.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
    request.setCharacterEncoding("UTF-8");
   	response.setCharacterEncoding("UTF-8");
   	
   	%>
   	
   <jsp:useBean id="noticeDTO" class="com.sm.notice.NoticeDTO" scope="page" />
	<jsp:setProperty property="*" name="noticeDTO"/>
   	
   	<% 
   	
   	
   	NoticeDAO noticeDAO = new NoticeDAO();
   	
   	int result = noticeDAO.noticeWrite(noticeDTO);
   	
   	String msg = "Write Fail";
   	
   	if(result > 0) {
   		
   		msg = "Write Sucess";
   	}
    
   	request.setAttribute("message", msg);
   	request.setAttribute("path", "./notice.jsp");
   	
    
    %>
    
    <jsp:forward page="../common/result.jsp"></jsp:forward>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Notice Write Process</h1>

</body>
</html>