<%@page import="com.sm.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

#header_box {
	
	width: 100%;
	height: 70px;
	position: relative;
	margin: 0 auto;
	box-sizing: border-box;
	z-index: 999;
	
	
}

#header_box2 {
	
	
	
	width: 100%;
	height: 70px;
	margin: 0 auto;
	overflow: hidden;
}

#header_logo {
	
	position: absolute;
	top: 25px;
	left: 20px;
	padding: 0 20px;
	font-size: 1em;
	font-weight: 900;
	
}

#header_logo a {
	
	
	
	color: black;
	
}





#header_nav {
	
	float: left;
	padding-top: 25px;
	padding-left: 410px;
	
}


#header_nav li {
	
	float: left;
	font-weight: bold;
	text-align: center;
	padding: 0 10px;
	
}



#header_nav li a {
	
	
	color: black;
	font-size: 1em;
	
}

#header_nav li a:hover {
	
	
	color: #8e8e8e;
	font-size: 1em;
	
}


#header_member {
	
	float: right;
	padding-top: 25px;
	padding-right: 50px;
	
}


#header_member li {
	
	float: left;
	font-weight: bold;
	text-align: center;
	padding: 0 10px;
	
}



#header_member li a {
	
	
	color: black;
	font-size: 1em;
	
}



/* header end */


</style>
<title>Insert title here</title>
</head>
<body>

<header id="header">

		<div id="header_box">

			<div id="header_box2">

				<div id="header_logo">

					<a href="../index.jsp" class="h_logo">SMTOWN</a>


				</div>

				<div id="header_nav">

					<ul>

						<li><a href="<%= application.getContextPath() %>/notice/notice.jsp">Notice</a></li>
						<li><a href="#">Actors</a></li>
						<li><a href="#">Entertainers</a></li>
						<li><a href="#">Models</a></li>
						<li><a href="#">Athletes</a></li>



					</ul>



				</div>
				
				<div id="header_member">

					<ul>

			<% MemberDTO memberDTO = (MemberDTO)session.getAttribute("member"); %>
			
			<% if(memberDTO != null) { %>
			
          	<li><a href="<%= application.getContextPath() %>/member/myPage.jsp?id=<%=memberDTO.getId()%>">MyPage</a></li>
			<li><a href="<%= application.getContextPath() %>/member/logout.jsp">Logout</a></li>
			
			<% } else { %>
			
			   <li><a href="<%= application.getContextPath() %>/login/login.jsp">Login</a></li>
				<li><a href="<%= application.getContextPath() %>/join/agree.jsp">Join</a></li>
				
			<% } %>
						



					</ul>



				</div>


	



			</div>

		</div>



	</header>

</body>
</html>