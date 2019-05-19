<%@page import="com.sm.member.MemberDTO"%>
<%@page import="com.sm.notice.NoticeDAO"%>
<%@page import="com.sm.notice.NoticeDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        
    <%
    
    request.setCharacterEncoding("UTF-8");
	response.setCharacterEncoding("UTF-8");
	
	NoticeDAO noticeDAO = new NoticeDAO();
	
	/* ---------------------------------------------------- */
	
	int curPage=1;//페이지 번호 
	try {
		
		curPage = Integer.parseInt(request.getParameter("curPage"));
		if(curPage<1) {
			
			curPage=1;
			
		}
		
	} catch(Exception e) {
		
		
	}
	
	/* ------------------- 검색 부분 --------------------- */
	
	String kind = request.getParameter("kind");
	
	if(kind == null) {
		
		kind = "title";
		
	} else if(kind.equals("t")) {
		
		kind = "title";
		
	} else if(kind.equals("c")) {
		
		kind = "contents";
		
	} else if(kind.equals("w")) {
		
		kind = "name";
		
	} else {
		
		kind = "title";
		
	}
		
		
		
	String search = request.getParameter("search");
	
	if(search == null) {
		
		search = "";
	}
	
	/* ---------------------------------------------------- */
	
	int perPage = 5; //한 페이지에 출력할 글 총 갯수 ex)10
	int startRow = (curPage-1)*perPage+1; //시작 글번호
	int lastRow = curPage * perPage; //끝 글번호

	
	/* ---------------------------------------------------- */
	
	/* System.out.println("kind : " + kind);
	System.out.println("search : " + search); */
	
	/* ---------------------------------------------------- */

	//1. 총 글 갯수 구하기
	int totalCount = noticeDAO.getTotalCount(kind, search); //총 글의 갯수
	
	//2. 총 페이지 갯수 구하기
	int totalPage = totalCount / perPage; //총 글의 갯수가 1~10개면 페이지번호 1page까지, 100개면 10page까지
	
	if(totalCount % perPage != 0) {
		
		totalPage++;
		
	}
	
	
	
	try {
		
		if(curPage > totalPage) {
			
			response.sendRedirect("./notice_BackUp.jsp?curPage=1");
		}
		
	} catch(Exception e) {
		
		
	} 
	
	//3. Block당 숫자의 갯수 -> 한 페이지에 나와야하는 페이지 번호 갯수 
	// 한 페이지에 나와야하는 페이지 번호가 1~10개 라면, 1block-> 1~10page = 10개, 2block -> 11~20page = 20개
	int perBlock = 10;
	
	//4. 총 Block 수
	// 한 페이지에 페이지번호가 10개까지면 , 1Block,
	// 페이지번호가 11개 까지면 2block,
	// 페이지 번호가 40개 까지면 , 4Block
	// 페이지 번호가 41개면 5block,
	int totalBlock = totalPage / perBlock;
	
	if(totalPage % perBlock != 0) {
		
		totalBlock++;
	}
	
	//5. curPage를 이용해서 현재 block번호 찾기
	//현재 페이지가 1~10page면 1block
	// 페이지번호가 11개 까지면 2block,
	// 페이지 번호가 40개 까지면 , 4Block
	// 페이지 번호가 41개면 5block,
	int curBlock = curPage / perBlock;
	
	if(curPage % perBlock != 0) {
		
		curBlock++;
	}
	
	//6. curBlock에서 startNum과 lastNum찾기
	int startNum = (curBlock-1)*perBlock+1;
	int lastNum = curBlock * perBlock;
	
	//7. curBlock이 마지막 block일때 lastNum 다시 대입 = totalPage
    
	
	if(curBlock == totalBlock) { //현재 블록이 총 블록 수와 같다면
		
		lastNum = totalPage; //마지막 페이지 번호는 총 페이지 수와 동일
	}
    
	
	/* ---------------------------------------------------- */
	
	ArrayList<NoticeDTO> ar = noticeDAO.noticeList(kind, search, startRow, lastRow);
	
	
	
    %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/notice.css">
<title>Insert title here</title>
</head>
<body>
<!-- header start -->
	
 <jsp:include page="../temp/header_html.jsp"></jsp:include>
	
	<!-- header end -->
	
	
	<section id="section">
	
		<article id="notice_box">
		
			<div id="notice">
				
				<span class="notice_title">News &#38; Notice</span>
				
				<ul>
				
					<li>News</li>
					<li>Notice</li>
				
				</ul>
			
			
			</div>
			
			
			<div id="notice_list">
			
			<% for(NoticeDTO noticeDTO : ar) { %>
			
			<div id="list_box">	
				<ul>
				
					<li class="n_li"><a href="./noticeSelect.jsp?num=<%= noticeDTO.getNum() %>"><img src="/sm_enter_board/images/<%=noticeDTO.getImage_src()%>"></a></li>
					<li class="n_li2"><a href="./noticeSelect.jsp?num=<%=noticeDTO.getNum()%>">
					
						<span class="list_title list_color"><%=noticeDTO.getTitle() %></span>
						<span class="list_date list_color">
						<%=noticeDTO.getWriter() %> / <%=noticeDTO.getReg_date() %></span>
						<span class="list_txt list_color"><%=noticeDTO.getContents() %></span>
					
					
					
					</a></li>
				
				
				
				</ul>
				
				
			
			</div>
			
			<% } %>
			
			
			
			</div>
		 
			<div id="feed_btn">
				
					<a href="./noticeWrite.jsp" id="btn_more">Write</a>
				</div>
				
				<div id="form_box">
		
		
		<form action="./notice.jsp" id="serach">
		
			<select name="kind">
			
				<option value="t">제목</option>
				<option value="w">작성자</option>
				<option value="c">내용</option>
			
			</select>
			
			<input type="text" class="" name="search" value="<%=search%>" >
			
			<button >Search</button>
		
		
		</form>
		
		
</div>
		
		<div id="list_page"> 
		
			<div id="list_page_box">
			
			
		
		<% if(curBlock > 1) { %>
		
			<a href="./notice.jsp?curPage=1&kind=<%=kind%>&search=<%=search%>" class="page_1"> &#60;&#60; </a>
			<a href="./notice.jsp?curPage=<%=startNum-1%>&kind=<%=kind%>&search=<%=search%>" class="page_1"> &#60; </a>
		
		
		<% } %>
		
				<% for(int i = startNum; i <= lastNum; i++) { %>
		
						<a href="./notice.jsp?curPage=<%=i%>&kind=<%=kind%>&search=<%=search%>" class="page_1"><%=i%></a>
		
				<% } %>	
			
			
			<% if(curBlock < totalBlock) { %>		
				
				<a href="./notice.jsp?curPage=<%= lastNum+1 %>&kind=<%=kind%>&search=<%=search%>" class="page_1">&#62;</a>
				<a href="./notice.jsp?curPage=<%= totalPage %>&kind=<%=kind%>&search=<%=search%>" class="page_1">&#62;&#62;</a>
					
			<% } %>		
		
		
		</div>
		
		</div>
		
		
		
		</article>
	
	
	<div id="bg">
	
		<img src="/sm_enter_board/images/bg_line.png">
	
	</div>
	
	</section>
	
	
	<!-- contents end -->




<!-- footer start -->

 <jsp:include page="../temp/footer_html.jsp"></jsp:include>


	<!-- footer end -->
</body>
</html>