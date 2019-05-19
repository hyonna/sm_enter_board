<%@page import="com.sm.notice.NoticeDTO"%>
<%@page import="com.sm.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
    request.setCharacterEncoding("UTF-8");
   	response.setCharacterEncoding("UTF-8");
   	
   	
    NoticeDAO noticeDAO = new NoticeDAO();
    NoticeDTO noticeDTO = new NoticeDTO();
    
    
    noticeDTO.setTitle(request.getParameter("title"));
    noticeDTO.setContents(request.getParameter("contents"));
    noticeDTO.setImage_src(request.getParameter("image_src"));
    noticeDTO.setNum(Integer.parseInt(request.getParameter("num")));
    
    int result = noticeDAO.update(noticeDTO);
    
    
    String msg = "Update Fail";
    
    if(result > 0) {
    	
 	   msg = "Update Sucess";
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

<h1>notice Update Process</h1>

</body>
</html>