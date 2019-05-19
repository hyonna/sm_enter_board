<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">

/* footer start */

#footer {
	
	width: 100%;
	height: 210px;
	background-color: white;
	overflow: hidden;
	box-sizing: border-box;
	position: relative;
}



#footer_box {
	
	
	padding: 2.5%;
	position: relative;
	
}


#ft_logo {
	
	display:inline-block;
	float: left;
}

#ft_nav{
	
	
	position: absolute;
	left: 400px;
	top:45px;
	
}


.ft_li {
	
	float: left;
	padding: 0 15px;
	background: url(/sm_enter_board/images/icon_ft_line.png) no-repeat right center;
	
	
}


#ft_nav li:last-child {
	

	background: none;
	
}


.ft_li a {
	
	color: black;
	font-size: 1em;
	font-weight: bold;
}


.ft_s {
	
	color: black;
	font-size: 1em;
	font-weight: bold;
	cursor: pointer;
	border: none;
	vertical-align: middle;
	height: 20px;
	line-height: 25px;
}

#ft_info {
	
	
	position: absolute;
	top:40px;
	left: 15px;
	
	
}

#ft_info p {
	
	width: 1080px;
	font-size: 1em;
	color: #666;
	text-align: left;
	line-height: 23px;
	
	
}


#ft_sns {
	
	
	
	float: right;
}


#ft_sns li {
	
	
	float: left;
	padding: 0 5px;
	
}


</style>
<title>Insert title here</title>
</head>
<body>
	<footer id="footer"> 
	
		<div id="footer_box">
		
			<div id="ft_logo">
				<a href="#"><img src="/sm_enter_board/images/ft_logo.png"></a>
			
			</div>
			
			
			<div id="ft_nav">
			
				<ul>
				
					<li class="ft_li"><a href="#">회사소개</a></li>
					<li class="ft_li"><a href="#">이용약관</a></li>
					<li class="ft_li"><a href="#">개인정보처리방침</a></li>
					<li class="ft_li"><a href="#">고객센터</a></li>
					<li class="ft_li">
					
						<select class="ft_s">
						
							<option>Family site</option>
							<option>SM TOWN now</option>
							<option>Family site</option>
							<option>Family site</option>
							<option>Family site</option>
						
						
						</select>
					
					
					</li>
				
				
				
				</ul>
			
			
			<div id="ft_info">
			
			<p>서울특별시 강남구 삼성로 648 SM ENTERTAINMENT Communication Center 대표전화 02 6240 9800<br>

				대표 : 한세민, 남소영 사업자번호 114 81 63109<br>

				Copyrightⓒ2013 SM ENTERTAINMENT Co., Ltd. All rights reserved.</p>
			
			</div>
			
			
			
			
			
			
			</div>
			
			<div id="ft_sns">
			
				<ul>
				
					<li><a href="#"><img src="/sm_enter_board/images/icon_ft_facebook.png"></a></li>
					<li><a href="#"><img src="/sm_enter_board/images/icon_ft_twitter.png"></a></li>
					<li><a href="#"><img src="/sm_enter_board/images/icon_ft_weibo.png"></a></li>
					<li><a href="#"><img src="/sm_enter_board/images/icon_ft_youtube.png"></a></li>
		
				
				</ul>
			
			
			
			
			</div>
			
		
		
		</div>
	
	
	</footer>

</body>
</html>