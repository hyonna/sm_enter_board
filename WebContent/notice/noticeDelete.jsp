<%@page import="com.sm.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    request.setCharacterEncoding("UTF-8");
 	response.setCharacterEncoding("UTF-8");
 	
 	int num = Integer.parseInt(request.getParameter("num"));
	
	 NoticeDAO noticeDAO = new NoticeDAO();
	 
	 int result = noticeDAO.delete(num);

	String msg = "Delete Fail";

	if(result > 0) {
	
	msg = "Delete Success";
	
	}
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<title>Insert title here</title>
<script type="text/javascript">


alert('<%= msg %>');
location.href="./notice.jsp";



</script>
</head>
<body>

</body>
</html>