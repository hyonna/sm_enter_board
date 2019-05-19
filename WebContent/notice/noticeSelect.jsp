<%@page import="com.sm.notice.NoticeDTO"%>
<%@page import="com.sm.notice.NoticeDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	int num = Integer.parseInt(request.getParameter("num"));
	
	NoticeDAO noticeDAO = new NoticeDAO();
	NoticeDTO noticeDTO = noticeDAO.selectOne(num);
    
    
    %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/noticeSelect.css">
<title>Insert title here</title>
</head>
<body>

<!-- header start -->
	
 <jsp:include page="../temp/header_html.jsp"></jsp:include>
	
	<!-- header end -->
	
	
	<div class="container">
	
	<div id="notice">
				
		<span class="notice_title">News &#38; Notice</span>
		
				<ul>
				
					
					<li><a href="../index.jsp">SMTOWN</a>&nbsp;/&nbsp;<a href="./notice.jsp">News &#38; Notice</a></li>
				
				</ul>
	
	</div>
	
	<div id="c_title">
		
			<span class="list_title list_color"><%= noticeDTO.getTitle() %></span>
			<span class="list_date list_color"><%= noticeDTO.getWriter() %> / <%= noticeDTO.getReg_date() %></span>	
			<span class="list_txt list_color"><%= noticeDTO.getContents() %></span>
	
	
   	 <div id="feed_btn">
   		 
		
		
			<a href="./notice.jsp" class="btn_more">List</a>
			<a href="./noticeDelete.jsp?num=<%=noticeDTO.getNum()%>" class="btn_more b2">Delete</a>
			<a href="./noticeUpdate.jsp?num=<%=noticeDTO.getNum()%>" class="btn_more b2 b3">Update</a>

		
				
	</div>
	</div>
	
	
	
	
	</div>
	<div id="bg">
	
	
	</div>
	<!-- footer start -->

 <jsp:include page="../temp/footer_html.jsp"></jsp:include>


	<!-- footer end -->

</body>
</html>