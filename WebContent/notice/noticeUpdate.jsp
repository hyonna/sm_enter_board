<%@page import="com.sm.notice.NoticeDAO"%>
<%@page import="com.sm.notice.NoticeDTO"%>
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
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/noticeUpdate.css">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$("#fileInput").on('change', function(){  // 값이 변경되면
		if(window.FileReader){  // modern browser
			var filename = $(this)[0].files[0].name;
		} else {  // old IE
			var filename = $(this).val().split('/').pop().split('\\').pop();  // 파일명만 추출
		}
		// 추출한 파일명 삽입
		$("#userfile").val(filename);
	});
});

</script>
</head>
<body>
<!-- header start -->
	
 <jsp:include page="../temp/header_html.jsp"></jsp:include>
	
	<!-- header end -->
<div class="container">

<div id="agree_box">
	<div id="n_title">
	<span class="notice_title">공지사항 수정</span>
	</div>			
  
  <form action="./noticeUpdateProcess.jsp">
  
      <input type="hidden" class="form-control i1" id="num" name="num" value="<%=noticeDTO.getNum()%>">
  
    <div class="form-group f1">
      <label for="title">글제목</label>
      <input type="text" class="form-control" id="title" name="title" value="<%= noticeDTO.getTitle()%>">
    </div>
    
    <div class="form-group f2">
      <label for="writer">작성자</label>
      <input type="text" class="form-control" id="writer" name="writer" value="<%= noticeDTO.getWriter()%>">
    </div>
    
    <div class="form-group">
      <label for="contents">글내용</label>
      <textarea rows="15" cols="" class="form-control" id="contents" name="contents"><%= noticeDTO.getContents()%></textarea>
    </div>
    
    <div class="form-group">
		<label for="InputSubject1">썸네일 이미지 업로드</label>
			<input id="fileInput" type="file" data-class-button="btn btn-default"
			data-class-input="form-control" data-button-text="" data-icon-name="fa fa-upload" 
			class="form-control" tabindex="-1" style="position: absolute; clip: rect(0px 0px 0px 0px);">
				<div class="bootstrap-filestyle input-group">
					<input type="text" id="userfile" class="form-control" name="image_src" value="<%= noticeDTO.getImage_src()%>" readonly>
						<span class="group-span-filestyle input-group-btn" tabindex="0">
							<label for="fileInput" class="btn btn-default ">
						<span class="glyphicon glyphicon-upload"></span>
					</label>
				</span>
			</div>
		</div>
		
		

    
   		 <div id="feed_btn">
   		 
				<button id="btn_more">수정</button>
				
		</div>
    
  </form>
  </div>
</div>

<!-- footer start -->

 <jsp:include page="../temp/footer_html.jsp"></jsp:include>


	<!-- footer end -->

</body>
</html>