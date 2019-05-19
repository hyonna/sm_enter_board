<%@page import="com.sm.member.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="./temp/header_link.jsp"></jsp:include>
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/index.css">
  
<title>SMTOWN</title>
</head>
<body>


	<!-- header start -->
	<header id="header">

		<div id="header_box">

			<div id="header_box2">

				<div id="header_logo">

					<a href="#" class="h_logo">SMTOWN</a>


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
	<!-- header end -->

	<!-- contents start -->
	<section id="section">

		<div id="article">

			<div id="slide">

				<div id="myCarousel" class="carousel slide" data-ride="carousel">

					<!-- Wrapper for slides -->
					<div id="slid_line">
					<img src="/sm_enter_board/images/slide_line.png" class="slide_line" >
					</div>
					<div class="carousel-inner">
						
						<div class="item active">
						
							<div class="slide_title">
							
							<span class="s_title">EXO-CBX successfully closed EXO-CBX “MAGICAL CIRCUS”</span>
							<p class="s_title2">‘초특급 유닛’ 엑소-첸백시(EXO-CBX, SM엔터테인먼트 소속)가 일본 스페셜 에디션 콘서트를 성공적으로 마쳤다.</p>
							
							</div>
						
							<img src="/sm_enter_board/images/slide_1.jpg" alt="Los Angeles" style="width: 100%;">
						</div>

						<div class="item">
						
						<div class="slide_title">
							
							<span class="s_title">NCT 127’s sold-out ‘NEO CITY : USA – The Origin’ concert</span>
							<p class="s_title2">첫 북미 투어를 펼치고 있는 NCT 127(엔시티 127, SM엔터테인먼트 소속)이 뉴저지에 이어 애틀랜타 공연도 성황리에 마쳤다.</p>
							
							</div>
							<img src="/sm_enter_board/images/slide_2.jpg" alt="Chicago" style="width: 100%;">
						</div>

						<div class="item">
						<div class="slide_title">
							
							<span class="s_title">HEECHUL ‘옛날 사람 (Old Movie)’: 2019.04.24</span>
							<p class="s_title2">‘우주대스타’ 김희철의 첫 솔로 디지털싱글 ‘옛날 사람 (Old Movie)’이 베일을 벗는다.</p>
							
							</div>
							<img src="/sm_enter_board/images/slide_3.jpg" alt="New york" style="width: 100%;">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>






		</div>


	

	</section>
	
	<section id="section_2">
	
	
		<div id="contents">
		
			<div id="sm_issue">
		
			<div id="sm_issue_img"></div>
			
			<div id="sm_issue_txt">
			
			
				<p class="issue_title">SM Issue</p>
				
				<p class="i_txt"><a href="#">뷰티 마스터 장윤주와 함께하는<br> 
				‘겟잇뷰티콘 X DIA BEAUTY’ 5월 3일 개최</a></p>
				
				<a href="#">
				<span class="i_xtx_1">모델 이자 뮤지션 그리고 만능 엔터테이너로 활동 중인 ‘겟잇뷰티 2019’ 의 메인 MC 
				장윤주가 5월 3일(금)부터 5일(일)까지 3일간 코엑스 C홀에서 개최되는 '겟잇뷰티콘 X DIA BEAUTY' 
				행사에도 함께한다. '겟잇뷰티'와 '컨벤션'을 합친 '겟잇뷰티콘'은 소비자(시청자)와 셀러브리티, 
				뷰티 인플루언서, 뷰티 브랜드가 한 데 어우러져 뷰티 콘텐츠를 놀이처럼 경험하고 공유하는 신개념 페스티벌이다.  
				장윤주는 현재 ‘겟잇뷰티 2019’에서 본인만의 뷰티 노하우와 꿀팁을 장윤주 특유의 감각적인 유머를 담아 
				전달하며 대체할 수 없는 존재감으로 자리매김하고 있다. 
				이번 행사장에서도 ‘겟잇뷰티  2019’ 녹화가 진행되어 그녀의 프로그램 속 모습을··· </span>
				</a> 
				
				<div class="s_btn_div">
				<a href="#" class="s_btn"></a>
				<a href="#" class="s_btn1"></a>
				<a href="#" class="s_btn1"></a>
				<a href="#" class="s_btn1"></a>
				<a href="#" class="s_btn1"></a>
				<a href="#" class="s_btn1"></a>
				<a href="#" class="s_btn1"></a>
				<a href="#" class="s_btn1"></a>
				</div>
			
			</div>
			
		</div>
		
		
		
		</div>
		
		
		
		
		<div id="mv">
		
		
			<div id="mv_box">
			
			<div id="m_box">
			<a href="#"><span class="mv_title m1">Music Video</span></a>
			<a href="#"><span class="mv_title_1 m1">봄 여름 가을 겨울 (SSFW)</span></a>
			<a href="#"><span class="mv_title m1">[STATION3] CHANYEOL 찬열 '봄 여름 가을 겨울 (SSFW)' MV 찬열</span></a>
			<a href="#"><img src="/sm_enter_board/images/btn_video_play.png" class="m1"></a>
			
			</div>
			<a href="#" class="mv_box1">
			
			</a>
			
			
			</div>
		
		
			<div id="mv_scroll">
			
					<ul>
					
						<li class="mv_s s1 s_mar"></li>
						<li class="mv_s s2 s_mar"></li>
						<li class="mv_s s3 s_mar"></li>
						<li class="mv_s s4 s_mar"></li>
						<li class="mv_s s5"></li>
					
					
					</ul>
					
					<div id="mv_btn">
					
						<a href="#" class="mv_btn_1"><img src="/sm_enter_board/images/arrow_left.png"></a>
						<a href="#" class="mv_btn_2"><img src="/sm_enter_board/images/arrow_right.png"></a>
					
					
					</div>
				
			
			</div>
		
		
		
		
		
		
		</div>
		
		
		
		<div id="new">
		
		
			<div id="new_box">
				<span class="new_1">New Album</span>
				<p class="new_2">봄 여름 가을 겨울 (SSFW)</p>
				<span class="new_3">봄 여름 가을 겨울 (SSFW) - SM STATION</span>
		
			</div>
			
			
			<div id="new_circle">
			
			
				<ul>
			
				<li><a href="#"><img src="/sm_enter_board/images/circle_1.jpg" class="circle_im"></a></li>
				<li><a href="#"><img src="/sm_enter_board/images/circle_2.jpg" class="circle_im"></a></li>
				<li><a href="#"><img src="/sm_enter_board/images/circle_3.jpg" class="circle_im"></a></li>
				<li><a href="#"><img src="/sm_enter_board/images/circle_4.jpg" class="circle_im"></a></li>
				<li><a href="#"><img src="/sm_enter_board/images/circle_main.jpg" class="circle_img"></a></li>
				<li><a href="#"><img src="/sm_enter_board/images/circle_5.jpg" class="circle_im"></a></li>
				<li><a href="#"><img src="/sm_enter_board/images/circle_6.jpg" class="circle_im"></a></li>
				<li><a href="#"><img src="/sm_enter_board/images/circle_7.jpg" class="circle_im"></a></li>
				<li><a href="#"><img src="/sm_enter_board/images/circle_8.jpg" class="circle_im"></a></li>
				
				</ul>
			
			
			</div>
		
		
		</div>
		
		
		<div id="feed">
		
			<div id="feed_box">
			
			
				<div id="feed_list">
				
				
					<div id="topic">
					
						<a href="#">
						
							<img src="/sm_enter_board/images/topic_1.jpg" class="t_img">
							<span class="t_box">
							<span class="t_white t_title">엑소 시우민, 솔로곡 ‘이유’로 <br>아름다운 감성 발라드 선사!</span>
							<span class="t_white t_txt">엑소 시우민(SM엔터테인먼트 소속)이 솔로곡 ‘이유 (You)’로 매력적인 보컬이 돋보이는 감성 발라드를 선사한다.</span>
							<span class="t_white t_date">2019. 05. 02.</span>
							</span>
						
						</a>
					
					
					</div>
					
					
					<div id="topic" style="background: rgb(45, 48, 67); position: absolute; left: 368px; top: 0px;">
					
						<a href="#">
						
							<img src="/sm_enter_board/images/topic_2.jpg" class="t_img">
							<span class="t_box">
							<span class="t_white t_title">SM엔터테인먼트, 음악 꿈나무 위한 <br>‘SMile Music Festival 2019’ 개최!</span>
							<span class="t_white t_txt">SM엔터테인먼트(이하 SM)가 음악 꿈나무들을 위한 음악 축제 ‘SMile Music Festival 2019’(스마일 뮤직 페스티벌 2019)를 개최한다.</span>
							<span class="t_white t_date">2019. 05. 02.</span>
							</span>
						
						</a>
					
					
					</div>
					
					
					
					<div id="topic" style="background: rgb(255, 255, 255); position: absolute; left: 736px; top: 0px;">
					
						<a href="#">
						
							<img src="/sm_enter_board/images/topic_3.jpg" class="t_img">
							<span class="t_box">
							<span class="t_black t_title">독립영화계 여신 류아벨, ‘멜로가 <br>체질’ 캐스팅 확정</span>
							<span class="t_black t_txt">독립 영화계의 여신으로 알려지며 탄탄한 연기력을 지닌 배우 류아벨이 오는 7월 방송되는 JTBC 새 금토 드라마 ‘멜로가 체질’(극본 이병헌·김영영, 연출 이병헌)에 출연을 확정했다.</span>
							<span class="t_black t_date">2019. 05. 02.</span>
							</span>
						
						</a>
					
					
					</div>
					
					
					<div id="topic" style="background: rgb(255, 255, 255); position: absolute; left: 0px; top: 452px;">
					
						<a href="#">
						
							<img src="/sm_enter_board/images/topic_4.jpg" class="t_img">
							<span class="t_box">
							<span class="t_black t_title">엑소 시우민, SM ‘스테이션’ 시즌 3<br>출격! 솔로곡 ‘이유’ 5월 9일 오후 6시 공개!</span>
							<span class="t_black t_txt">엑소 시우민(SM엔터테인먼트 소속)이 SM ‘STATION’(스테이션) 시즌 3의 열한 번째 주자로 나선다.</span>
							<span class="t_black t_date">2019. 05. 01.</span>
							</span>
						
						</a>
					
					
					
		
					</div>
					
					
					
					<div id="topic" style="background: rgb(255, 255, 255); position: absolute; left: 368px; top: 717px;">
					
						<a href="#">
						
							<img src="/sm_enter_board/images/topic_5.jpg" class="t_img">
							<span class="t_box">
							<span class="t_black t_title">KBS ‘회사 가기 싫어’ 김관수, 시크한<br>신입사원의 ‘반전 츤데레美’</span>
							<span class="t_black t_txt">신예 김관수가 츤데레 매력을 제대로 발산했다.</span>
							<span class="t_black t_date">2019. 05. 01.</span>
							</span>
						
						</a>
					
					
					
		
					</div>
					
					
					<div id="topic" style="background: rgb(255, 255, 255); position: absolute; left: 736px; top: 698px;">
					
						<a href="#">
						
							<img src="/sm_enter_board/images/topic_6.jpg" class="t_img">
							<span class="t_box">
							<span class="t_black t_title">‘국민 여러분!’ 최시원, 이번엔<br>로맨스로 안방극장 달궜다! ‘지지율도 시청률도 상승’</span>
							<span class="t_black t_txt">최시원(슈퍼주니어 시원, SM엔터테인먼트 소속)의 코믹과 멜로를 넘나드는 연기가 빛났다. </span>
							<span class="t_black t_date">2019. 05. 01.</span>
							</span>
						
						</a>
					
					
					
		
					</div>
					
					
					<div id="topic" style="background: rgb(3, 3, 3); position: absolute; left: 0px; top: 935px;">
					
						<a href="#">
						
							<img src="/sm_enter_board/images/topic_7.jpg" class="t_img">
							<span class="t_box">
							<span class="t_white t_title">‘초특급 유닛’ 엑소-첸백시, 日 스페셜<br>에디션 콘서트 성황 마무리!</span>
							<span class="t_white t_txt">엑소 시우민(SM엔터테인먼트 소속)이 솔로곡 ‘이유 (You)’로 매력적인 보컬이 돋보이는 감성 발라드를 선사한다.</span>
							<span class="t_white t_date">2019. 04. 30.</span>
							</span>
						
						</a>
					
					
					
		
					</div>
					
					
					
					<div id="topic" style="background: rgb(255, 255, 255); position: absolute; left: 368px; top: 1239px;">
					
						<a href="#">
						
							<img src="/sm_enter_board/images/topic_8.jpg" class="t_img">
							<span class="t_box">
							<span class="t_black t_title">‘국민 여러분!’ 최시원, 사이다 발언<br>통했다! 지지율 폭풍 상승 ‘반전’ </span>
							<span class="t_black t_txt">‘국민 여러분!’ 최시원(슈퍼주니어 시원, SM엔터테인먼트 소속)의 폭주가 지지율의 폭풍 상승을 이끌었다. </span>
							<span class="t_black t_date">2019. 04. 30.</span>
							</span>
						
						</a>
					
					
					
		
					</div>
				
				
				
				
				
				
				</div>
			
			
			
				
			
			
			</div>
			
			
			<div id="feed_btn">
				
				
					<a href="#" id="btn_more">More</a>
				
				</div>
		
		
		</div>
		
	
	
	
	</section>
	
	
	<!-- contents end -->


	<!-- footer start -->
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
	<!-- footer end -->

</body>
</html>