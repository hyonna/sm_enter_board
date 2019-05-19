<%@page import="com.sm.member.MemberDTO"%>
<%@page import="com.sm.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
             <%
         
        request.setCharacterEncoding("UTF-8");
     	response.setCharacterEncoding("UTF-8");

 		String id = request.getParameter("id");
	
   	 	MemberDAO memberDAO = new MemberDAO();
 	
 		int result = memberDAO.memberDelete(id);
	
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
location.href="../index.jsp";



</script>
</head>
<body>

</body>
</html>