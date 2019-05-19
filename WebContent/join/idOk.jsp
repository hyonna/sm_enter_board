<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<title>Insert title here</title>
  <script type="text/javascript">
    var id = document.getElementById('id');


    $(function() {

      if ($('#id').val().length > 10) {

        $('#id').val($('#id').val().substring(0, 10));
        $('#idChk').html('<p id="idOver" style="color:red; font-weight:700; margin:20px 0;">아이디 10자 미만 가능</p>');
      }


      $('#btnCheck').click(function() {

        if ($('#id').val() == '') {

          $('#idChk').html('<p id="idNull" style="color:red; font-weight:700; margin:20px 0;">아이디를 입력하세요.</p>');


        } else {
          $("#id", opener.document).val($("#id").val());
          $("#idc", opener.document).val($("#id").val());
          $("#idChk", opener.document).html('<p style="color:blue; font-weight:700; margin:20px 0;">중복확인 완료</p>');
          close();

        }
      });


      $('#id').on('keyup', function() {

        if ($(this).val().length > 10) {

          $(this).val($(this).val().substring(0, 10));
          $('#idChk').html('<p id="idOver" style="color:red; font-weight:700; margin:20px 0;">아이디 10자 미만 가능</p>');
        }
      });


      $('#idOk').click(function() {

        $('#idChk').html('<p id="idChk" style="color:blue; font-weight:700; margin:20px 0;">중복확인 완료</p>');
      });



    })
  </script>
</head>
<body>


  <div class="container">
    <h2>Id Check</h2>
    <form action="./jquery8.html" name="idChk">

      <div class="form-group">
        <label for="id">Id:</label>
        <input type="text" class="form-control" id="id" placeholder="아이디를 입력하세요" name="id">
      </div>


      <div id="idChk">

      </div>



      <input type="button" class="btn btn-default" value="중복확인" id="idOk">
      <input type="button" class="btn btn-default" value="확인" id="btnCheck"> <!-- 모두 비어있으면 버튼 X -->
    </form>
  </div>


</body>
</html>