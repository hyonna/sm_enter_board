<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="../temp/header_link.jsp"></jsp:include>
<link type="text/css" rel="stylesheet" href="/sm_enter_board/css/agree.css">
<title>Insert title here</title>
<script type="text/javascript">


$(function() {
	  
	  // 전체동의 체크 박스
	
	$('#checkAll').click(function() {
		
		var c = $(this).prop('checked');
		
		$('.chk').prop('checked', c);
		
	});
	
	  //----------------------------
	  
	  //동의 ABC 체크
	  
	$('.chk').click(function() {
		
		var c = true;
		
		$('.chk').each(function() {
			
			if(!$(this).prop('checked')) {
				
				c = false;
				
			}
			
		});	
		
		$('#checkAll').prop('checked', c);
		
	});
	  
	 //----------------------------
	  
	  //join 버튼
	
	$('#btn_more').click(function() {
		
		var c = $('#checkAll').prop('checked');
		
		if(c) {
			
			location.href="./join.jsp"; //전체동의 버튼이 true 이면 join 페이지로 넘어감
			
			
		} else {
			
			alert("약관에 전체 동의를 해야합니다.");
			c = false;
			
		}
		
	});
	  
});

</script>
</head>
<body>

<!-- header start -->
	
 <jsp:include page="../temp/header_html.jsp"></jsp:include>
	
	<!-- header end -->

	<!-- contents start -->
	
	
	<section>
	
	<div id="join">


	<div id="h_join">
	
		<div id="join_ul">
		
	
		<ul>
			
			<li class="j_li">약관동의</li>
			<li>정보입력</li>
			<li>가입인증</li>
			<li>가입완료</li>
		
		
		</ul>
	
		</div>
	
	
	
	<div id="agree_box">
	
	
		<div id="agree_1">
		
			<span class="agree_title">약관동의</span>
			
			<span class="agree_txt">
			&#65279;<strong>FNC 공식 홈페이지 이용약관 &lt;서비스약관&gt;</strong><br><br>

FNC의 회원약관은 다음과 같은 내용을~ 담고 있습니다.<br><br>

제1조 목적<br>
본 약관은 주식회사에프엔씨엔터테인먼트(이하, 회사)에서 운영하는 www.fncent.com 이용과 관련하여 FNC와 회원과의 권리, 의무 및 책임사항, 기타 필요한 사항을 규정함을 목적으로 합니다.<br><br>

제2조 약관의 효력과 변경<br>
(1) 본 약관은 서비스를 통하여 이를 공지하거나, 전자우편, 기타의 방법으로 회원에게 통지함으로써 효력을 발생합니다.<br>
(2) 회사는 사정상 중요한 사유가 발생될 경우 사전 통지 없이 이 약관의 내용을 변경할 수 있으며, 변경된 약관은 본 조 제 1항과 같은 방법으로 공지 또는 통지함으로써 효력을 발생합니다.<br>
(3) 회사는 약관을 개정할 경우 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정 전의 약관조항이 그대로 적용됩니다.<br>
(4) 회원은 변경된 약관에 동의하지 않을 경우 회원 탈퇴를 요청할 수 있으며, 변경된 약관의 효력 발생일로부터 7일 이후에도 서비스를 계속 사용할 경우 약관의 변경 사항에 동의한 것으로 간주 됩니다. <br><br>

제3조 약관외 준칙<br>
(1) 본 약관은 회사가 제공하는 개별서비스에 관한 별도의 약관, 정책 및 운영규칙과 함께 적용됩니다.<br>
(2) 본 약관에 명시되지 않은 사항에 대해서는 전기통신기본법, 전기통신사업법, 정보통신윤리위원회 심의규정, 정보통신 윤리 강령, 프로그램 보호법 및 관계규정에 의합니다 <br><br>

제4조 용어의 정의<br>
(1) 회원 : 서비스를 제공받기 위하여 회사와 이용계약을체결하고 아이디(ID)를 부여받은 자를 말합니다.<br>
(2) 아이디(ID) : 회원의 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 회사가 승인하는 문자나 숫자의 조합<br>
(3) 비밀번호 : 회원이 부여받은 ID와 일치된 회원임을 확인하고, 회원 자신의 비밀을 보호하기 위하여 회원이 정한 문자와 숫자의 조합<br>
(4) 이용해지 : 회사 또는 회원이 서비스 사용 후 이용계약을 종료시키는 의사표시<br>
(5) 정지 : 회사가 정한 일정한 요건에 따라 일정기간동안 서비스이용을 보류/중지하는 것<br>
(6) 중복가입 : 1인의 이용자가 서로다른 2개이상의 아이디(ID)로 회원등록을 하는 행위<br><br>

제5조 이용 계약의 성립<br>
(1) 서비스 가입 신청시 본 약관을 읽고 '동의함'의 체크박스에 체크를 한 후 가입 버튼을 클릭하면 본 약관에 동의하는 것으로 간주됩니다.<br>
(2) 이용 계약은 서비스 이용희망자의 이용약관 동의 후 이용 신청에 대하여 회사가 승낙함으로써 성립합니다.<br><br>

제6조 이용신청<br>
(1) 서비스를 이용하고자 하는 귀하는 회사에서 요청하는 소정의 가입신청 양식에 개인 신상정보를 기록하여 신청하도록 합니다.<br>
(2) 가입신청 양식에 기재하는 모든 정보는 실제 데이터인 것으로 간주됩니다. 내용이 허위(차명, 비실명, 중복가입 등))인 것으로 판명되거나, 그러하다고 의심할 만한 합리적인 사유가 발생할 경우 귀하는 법적인 보호를 받을 수 없고, 회사는 귀하의 본 서비스 사용을 일부 또는 전부 중지할 수 있으며, 이로 인해 발생하는 모든 불이익에 대해 책임을 지지 않습니다.<br><br>

제7조 이용신청의 승낙<br>
(1) 회사는 제5조에 따른 이용 신청 고객에 대하여 특별한 하자가 없는 한 서비스 이용신청을 승낙합니다.<br>
(2) 회사는 만 14세 미만의 아동이 서비스를 이용하기 위해서는 부모 또는 법정대리인의 동의 절차를 거쳐야만 가입을 승낙하고 있습니다.<br>
(3) 회사는 다음 각호의 내용에 해당하는 경우 이용신청에 대한 승낙을 제한할 수 있고, 그 사유가 해소될 때까지 승낙을 유보할 수 있습니다.<br>
가. 가입 신청서상 필수입력사항 미비 등 소정의 절차를 완료하지 않는 경우<br>
나. 본인의 실명으로 신청하지 않는 경우<br>
다. 이용 신청시 필요사항을 허위로 기재하여 신청한 경우<br>
라. 사회의 안녕과 질서 혹은 미풍양속을 저해할 목적으로 신청한 경우<br>
마. 회사가 정한 이용신청 요건이 미비된 경우<br>
바. 기타 회사가 필요하다고 인정되는 경우<br><br>

제8조 개인정보의 변경<br>
회원은 신청시 기재한 개인정보가 변경되었을 때에는 수정을 하여야 하며, 수정을 하지 아니하여 발생하는 문제의 책임은 회원에게 있습니다.<br><br>

제9조 계약해지 및 이용제한<br>
(1) 회원은 이용 계약을 해지 하고자 하실 때에는 직접 전자우편이나 서비스내 "회원탈퇴"메뉴를 사용하여 이용해지를 하실 수 있습니다<br>
가. 가입 아이디의 완전해지를 신청하는 방식으로 이용해지자는 90일간 www.fncent.com 재가입이 금지됩니다. <br>
나. 해지 신청자의 정보는 90일간 보존되며 타인에게 공개되지 않으며, 기타 다른 용도로 사용되지 않습니다.  <br>
다. 이용해지 90일후 모든 정보는 완전히 삭제됩니다.<br>
(2) 회사는 회원이 다음 사항에 해당하는 행위를 하였을 경우 사전 통지 없이 이용 계약을 해지 하거나 또는 기간을 정하여 서비스 이용의 일부 제한 및 중지를 할 수 있습니다.<br>
가. 비실명가입, 주민등록번호의 도용등 회원이 제공한 데이터가 허위임이 판명된 경우<br>
나. 범죄적 행위에 관련되는 경우<br>
다. 국익 또는 사회적 공익을 저해할 목적으로 서비스 이용을 계획 또는 실행 할 경우<br>
라. 타인의 서비스 아이디 및 비밀 번호를 도용한 경우<br>
마. 타인의 명예를 손상시키거나 불이익을 주는 경우<br>
바. 같은 이용자가 중복가입을 한 경우<br>
사. 서비스에 위해를 가하는 등 서비스의 건전한 이용을 저해하는 경우<br>
아. 기타 관련법령이나 회사가 정한 이용조건에 위배되는 경우<br><br>

제10조 이용 제한의 해제 절차<br>
(1) 회사는 제9조의 규정에 의하여 이용 제한을 하고자 하는 경우에는 그 사유, 일시 및 기간을 정하여 전자우편 또는 전화 등의 방법에 의하여 해당 회원 또는 대리인에게 통지합니다. 다만, 회사가 긴급하게 이용을 정지할 필요가 있다고 인정하는 경우에는 그러하지 아니합니다.<br>
(2) 제(1)항의 규정에 의하여 이용정지의 통지를 받은 회원 또는 그 대리인은 그 이용정지의 통지에 대하여 이의가 있을 때에는 이의신청을 할 수 있습니다.<br>
(3) 회사는 제2항의 규정에 의한 이의신청에 대하여 그 확인을 위한 기간까지 이용정지를 일시 연기할 수 있으며, 그 결과를 회원 또는 그 대리인에게 통지합니다.<br>
(4) 회사는 이용정지 기간 중에 그 이용정지 사유가 해소된 것이 확인된 경우에는 이용정지조치를 즉시 해제합니다.<br><br>

제11조 회원의 의무 및 정보보안<br>
(1) 회원은 서비스 이용을 위해 등록할 경우 현재의 사실과 일치하는 완전한 정보(이하 "등록정보"라 한다)를 제공하셔야 합니다. 또한 등록정보에 변경이 발생할 경우 즉시 갱신하셔야 합니다. 회원이 제공하는 정보의 내용이 허위(차명, 비실명 등)인 것으로 판명되거나, 그러하다고 의심할 만한 합리적인 사유가 발생할 경우 회사는 회원의 본 서비스 사용을 일부 또는 전부 중지할 수 있으며, 이로 인해 발생하는 불이익에 대해 책임을 부담하지 아니합니다.<br>
(2) 회원은 자기자신의 ID와 비밀번호에 관한 관리책임이 있으며 제3자에게 이용하게 해서는 안되며 회원이 자신의 ID 및 비밀번호를 도난 당하거나  제3자가 사용하고 있음을 인지한 경우에는 회사에 통보하고 지시사항에 따라야 하며 회원이 ID 및 비밀번호에 대한 관리소홀에 따른 회원에 손해가 발생하는경우 그 책임을 회원이 부담하여야 합니다. <br>
(3) 회사는 회사가 제공한 서비스가 아닌 가입자 또는 기타 제휴사가 제공하는 서비스의 내용상의 정확성, 완전성 및 질에 대하여 보장하지 않습니다. 따라서 회사는 회원이 위 내용을 이용함으로 인하여 입게 된 모든 종류의 손실이나 손해에 대하여 책임을 부담하지 아니합니다.<br>
(4) 회원은 서비스를 이용하면서 다음과 같은 행위를 하지 않기로 동의합니다.<br>
가. 타인(소수를 포함)에게 위해를 가하는 행위<br>
- 타인의 ID, PASSWORD,  카드 도용 및 타인으로 가장하는 행위<br>
- 타인과의 관계를 허위로 명시하는 행위<br>
- 사람을 비방할 목적으로 사실 또는 허위의 사실을 적시하여 사람의 명예를 훼손하는 행위<br>
- 자기 또는 타인에게 재산상의 이익을 주거나 타인에게 손해를 가할 목적으로 허위의 정보를 유통시키는 행위<br>
- 수치심이나 혐오감 또는 공포심을 일으키는 말이나 음향, 글이나 화상 또는 영상을 상대방에게 도달하게 하는 행위<br>
- 회사의 사전 승낙 없이 회사의 서비스를 이용한 영리행위<br>
- 타인의 정보통신서비스 이용명의를 도용하여 사용하는 행위<br>
나. 불필요하거나 승인되지 않은 광고, 판촉물을 게재하거나, "정크 메일(junk mail)",
"스팸메일(spam mail)", "행운의 편지(chain letters)", "도배글", "피라미드 조직" 등을 권유하거나 게시, 게재 또는 전자우편으로 보내는 행위 등<br>
다. 저속 또는 음란한 데이터, 텍스트, 소프트웨어, 음악, 사진, 그래픽, 비디오 메시지 등(이하 "컨텐츠")을 게시, 게재 또는 전자우편으로 보내는 행위 등<br>
라. 권리(지적재산권을 포함한 모든 권리)가 없는 컨텐츠를 게시, 게재 또는 전자우편 으로 보내는 행위 또는 컴퓨터 소프트웨어, 하드웨어, 전기통신 장비를 파괴, 방해 또는 기능을 제한하기 위한 소프트웨어 바이러스를 게시, 게재 또는 전자우편으로 보내는 행위 등<br>
마. 다른 컴퓨터 코드, 파일, 프로그램을 포함하고 있는 자료를 게시, 게재, 전자우편으로 보내는 행위 등 다른 사용자의 개인정보를 수집 또는 저장하는 행위<br>
바. 재물을 걸고 도박하거나 사행행위를 하는 행위<br>
사. 윤락행위를 알선하거나 음행을 매개하는 내용의 정보를 유통시키는 행위<br>
아. 기타 불법적이거나 부당한 행위<br>
(5) 회원은 전항의 귀책사유로 인한 회사나 제3자에게 입힌 손해를 배상할 책임이 있습니다.<br>
(6) 회원은 본 약관 및 관계법령에서 규정한 사항을 준수하여야 합니다.<br><br>

제12조 회사의 의무<br>
(1) 회사는 특별한 사정이 없는 한 회원이 신청한 서비스 제공 개시일에 서비스를 이용할 수 있도록 합니다.<br>
(2) 회사는 이 약관에서 정한 바에 따라 계속적, 안정적으로 서비스를 제공할 의무가 있습니다.<br>
(3) 회사는 회원의 개인신상정보를 본인의 승낙 없이 타인에게 누설, 배포 하여서는 아니 됩니다. 다만, 전기통신관련법령 등 관계법령에 의하여 관계 국가기관 등의 요구가 있는 경우에는 그러하지 아니합니다.<br>
(4) 회사가 제공하는 유료서비스에 대하여 회원에게 손해가 발생할 경우 그러한 손해가 회사의 고의나 중과실로 인하여 발생한 경우에 한하여 제24조 규정에서 정의한 범위에서 회사가 책임을 부담합니다. 단, 무료서비스에 대해서는 개인정보보호정책에서 정하는 내용에 해당하지 않는한 회사가 어떠한 책임도 지지 아니합니다.<br>
(5) 회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 인정할 경우에는 즉시 처리하여야 합니다. 다만, 즉시 처리가 곤란한 경우에는 회원에게 그 사유와 처리일정을 통보하여야 합니다.<br><br>

제13조 개인정보보호정책<br>
회사는 회원의 개인정보의 취급 및 보호정책에 대하여 '서비스'되는 사이트 내에 별도로 페이지를 구성하여 명기하고 있습니다. 따라서 본 약관에서는 이것으로 갈음합니다.<br><br>

제14조 서비스의 제공 및 변경 <br>
회사에서 제공하는 서비스는 기본적으로 무료입니다. 다만 회사가 정한 유료서비스에 대하여는 그러하지 아니합니다. 유료서비스의 이용에 대한 사항은 회사가 별도로 정한 정책 또는 운영규칙에 따릅니다.<br><br>

제15조 서비스 이용<br>
(1) 서비스 이용은 회사 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴, 1일 24시간을 원칙으로 합니다.<br>
(2) 제1항의 이용시간은 정기점검 등의 필요로 인하여 회사가 정한 날 또는 시간은 그러하지 아니합니다.<br>
(3) 회원에 가입한 후라도 일부 서비스 이용 시 광고주의 요구에 따라 특정 회원에게만 서비스를 제공할 수 있습니다.<br>

제16조 서비스의 변경, 중지 및 정보의 저장과 사용<br>
(1) 회원은 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의 비상사태, 정전, 당사의 관리범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 대해 회사가 아무런 책임을 지지 않음에 동의합니다.<br>
(2) 회사는 정상적인 서비스 제공의 어려움으로 인하여 1일이상 서비스를 중지하여야 할 경우에는 서비스 중지 1일전까지 서비스 사이트에서 고지후 서비스를 중지할 수 있으며, 이 기간동안 회원이 고지내용을 인지하지 못한데 대하여 회사는 책임을 부담하지 아니합니다. 피치 못할 사정이 있을 경우 위 사전 고지기간은 감축되거나 생략될 수 있습니다. 또한 위 서비스 중지에 의하여 본 서비스에 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 대하여도 회사는 책임을 부담하지 아니합니다.<br>
(3) 회사의 사정으로 서비스를 영구적으로 중단하여야 할 경우 전(2)항을 준용합니다. 다만, 이 경우 사전 고지기간은 1개월로 합니다.<br>
(4) 회사는 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 회원 또는 제3자에게 어떠한 책임도 부담하지 아니합니다.<br>
(5) 회사는 가입자가 본 서비스 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용중지 할 수 있습니다. 이 경우 회사는 위 가입자의 접속을 금지할 수 있으며, 위 가입자가 게시한 내용의 전부 또는 일부를 임의로 삭제할 수 있습니다.<br>
(6) 장기간 휴면 가입자인 경우 안내 메일 또는 공지사항 발표 후 1주일간의 통지 기간을 거쳐 서비스 사용을 중지할 수 있습니다.<br><br>

제17조 정보의 제공 및 통지<br>
(1) 회사는 회원이 서비스 이용 중 필요가 있다고 인정되는 다양한 정보에 대해서는 전자우편이나 서신우편 등의 방법으로 회원에게 제공할 수 있습니다.<br>
(2)회사는 본 조 제1항의 사항을 대신하여 사이트 내 공지사항을 통해 서비스 이용에 대한 정보 등을 게시할 수 있습니다. <br><br>

제18조 광고 및 광고주와의 거래<br>
(1) 회사는 서비스의 운용과 관련하여 서비스화면, 홈페이지, 전자우편 등에 광고 등을 게재할 수 있으며, 서비스를 이용하고자 하는 회원은 이 광고게재에 대하여 동의하는 것으로 간주됩니다.<br>
(2) 회사는 본 서비스상에 게재되어 있거나 본 서비스를 통한 광고주와의 판촉활동에 회원이 참여하거나 교신 또는 거래의 결과로서 발생하는 모든 손실 또는 손해에 대해 책임을 지지 않습니다.<br><br>

제19조 회원의 게시물<br>
회사는 회원이 게시하거나 등록하는 서비스 내의 내용물이 다음 각 사항에 해당된다고 판단되는 경우에 사전 통지 없이 삭제할 수 있습니다.<br>
(1) 다른 회원 또는 제 3자를 비방하거나 중상 모략으로 명예를 손상시키는 내용인 경우<br>
(2) 공공질서 및 미풍양속에 위반되는 내용인 경우<br>
(3) 범죄적 행위에 결부된다고 인정되는 내용일 경우<br>
(4) 제3자의 저작권 등 기타 권리를 침해하는 내용인 경우<br>
(5) 기타 관계 법령이나 회사에서 정한 규정에 위배되는 경우<br><br>

제20조 게시물의 저작권<br>
(1) 회원이 게시한 게시물의 내용에 대한 권리는 회원에게 있습니다.<br>
(2) 회사는 게시된 내용을 사전 통지된 지 3일 이후 편집, 이동, 삭제할 수 있는 권리를 보유하며, 게시된 내용이 본 서비스 약관에 위배, 상용 또는 비합법적, 불건전한 내용일 경우 및 해지 회원이 게시한 게시물은 사전통보 없이 삭제할 수 있습니다.<br>
(3) 회원의 게시물이 타인의 저작권을 침해함으로써 발생하는 민.형사상의 책임은 전적으로 회원이 부담하여야 합니다.<br><br>

제21조 서비스 이용 책임<br>
회원은 서비스를 이용하여 불법 상품을 판매하는 영업 활동을 할 수 없으며 특히 해킹, 돈벌기 광고, 음란사이트를 이용한 상업행위, 상용 S/W불법배포 등을 할 수 없습니다. 이를 위반하고 발생한 영업활동의 결과 및 손실, 관계기관에 의한 구속 등 법적조치 등에 관해 회사는 책임을 지지 않습니다.<br><br>

제22조 회사의 소유권<br>
(1) 회사가 제공하는 서비스, 그에 필요한 소프트웨어, 이미지, 마크, 로고, 디자인, 서비스명칭, 정보 및 상표 등과 관련된 지적재산권 및 기타권리는 회사에게 소유권이 있습니다.<br>
(2) 회원은 회사가 명시적으로 승인한 경우를 제외하고는 제1항 소정의 각 재산에 대한 전부 또는 일부의 수정, 대여, 대출, 판매, 배포, 제작, 양도, 재라이센스, 담보권 설정행위, 상업적 이용행위를 할 수 없으며, 제3자로 하여금 이와 같은 행위를 하도록 허락할 수 없습니다.<br><br>

제23조 양도금지<br>
회원이 서비스의 이용권한, 기타 이용계약상의 지위를 타인에게 양도, 증여할 수 없으며, 이를 담보로 제공할 수 없습니다.<br><br>

제24조 손해배상<br>
회사는 무료로 제공되는 서비스와 관련하여 회원에게 어떠한 손해가 발생하더라도 이에 대하여 책임을 부담하지 아니합니다. 단, 유료서비스의 경우 회사의 고의나 중과실로 인하여 발생하는 경우에 회사는 그에 대한 책임을 부담하며 그 범위는 통상손해에 한합니다.<br><br>

제25조 면책조항<br>
(1) 회사는 천재지변, 정전 또는 이에 준하는 불가항력으로 인하여 서비스를 제공할 수 없는 경우에는 서비스 제공에 관한 책임이 면제됩니다.<br>
(2) 회사는 회원의 귀책사유로 인한 서비스이용의 장애에 대하여 책임지지 않습니다.<br>
(3) 회사는 회원이 무료로 제공되는 서비스를 이용하여 기대할 수 있는 손익이나 서비스를 통하여 얻은 자료로 인한 손해에 관하여 책임을 지지 않습니다.<br>
(4) 회사는 회원이 서비스에 게재한 정보, 자료, 사실의 신뢰도, 정확성 등의 내용에 관하여는 책임을 지지 않습니다.<br><br>

제26조 관할법원<br>
서비스이용으로 발생한 분쟁에 대하여 소송이 제기될 경우 회사의 본사 소재지를 관할하는 법원을 관할법원으로 합니다.<br><br>
			
			</span>
		
		<span class="agree_check"><input type="checkbox" name="agree_check" value="check" class="chk"> 위의 약관에 동의합니다.<br></span>
		
		</div>
		
		
		<div id="agree_2">
		
			<span class="agree_title">개인정보의 수집 및 이용에 대한 동의</span>
			
			<span class="agree_txt">
			<strong>■ 수집하는 개인정보의 항목</strong>
			<br>
			<br>
	

※ 이벤트 및 추가적인 개인정보 수집 시, 수집항목에 대해 필수/선택에 대해 구분하며, 해당 페이지 및 서면 등에서 개인정보의 수집항목, 수집 및 이용의 목적 등을 정보주체에게 고지한 후 추가적인 동의를 받겠습니다.<br><br>

<strong>■ 개인정보의 수집방법</strong><br>
- 홈페이지 회원/팬클럽 가입 및 서비스 이용, 서면, 전자우편, 전화, 이벤트 등<br><br>

<strong>■ 개인정보의 수집 및 이용목적</strong><br>
- FNC 홈페이지/팬클럽 회원가입 및 관리: (가입하는 경우에 한하여) 회원제 서비스 이용에 따른 본인 확인, 불량회원의 부정이용방지와 비인가 사용방지, 가입의사확인, 가입 및 가입횟수 제한, 만14세 미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인, 회원제 서비스의 제공(티켓 선예매 혜택 등 포함), 카드발급, 포인트 적립•사용•정산, 이벤트 정보 및 참여기회 제공, 회원자격유지 및 관리, 제한적 본인 확인제 시행에 따른 본인확인, 분쟁조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 등<br>
- 재화 또는 서비스의 제공: 서비스 제공에 관한 계약 이행 및 서비스 제공에 따른 요금정산콘텐츠 제공, 물품(상품 또는 경품) 배송 또는 청구서 등의 발송, 금융거래, 본인인증, 구매 및 대금결제, 요금추심, 새로운 서비스의 안내, 신상품이나 이벤트 정보 안내 등<br>
- 마케팅 및 광고에의 활용: 이벤트 정보 등 광고성 정보전달(CRM), DM, SMS, 우편, 경품배송 및 행사안내, 회원 등에게 맞춤화된 서비스 제공, 신규서비스(제품) 개발 및 특화, 인구통계학적 특성에 따른 서비스 제공 및 광고게재, 접속빈도파악, 각종 설문조사, 회원의 서비스 이용에 대한 통계, 이벤트 등 광고성 정보 전달 등<br>
- 고충처리: 민원인의 신원확인, 요청•문의•제보사항 확인, 사실조사를 위한 연락•통지, 처리결과 통보 등<br>
- 보안신고(제보): 민원인의 민원처리 및 결과 회신을 위한 연락•통지, 처리결과의 통보 등<br>
- A/S 처리: 구매 상품 등의 접수, 이력 관리를 위한 목적 등<br>
- 재화 또는 서비스 관련 문의에 대한 응대목적<br><br>

<strong>■ 개인정보의 보유 및 이용기간</strong><br>
- FNC는 원칙적으로 개인정보의 수집 및 처리목적이 달성된 때에는 아래와 같이 정보주체의 개인정보를 지체 없이 파기합니다.<br>  
- 단, 아래에 열거한 경우를 포함하여 상법 등 관련 법령에 따라 일정기간 동안 개인정보를 보존할 필요가 있는 경우에는 요구되는 보관 목적으로 관련 법령에서 정하는 최소한의 기간 동안 정보주체의 개인정보를 보관합니다. <br>
● 계약 및 청약철회 등에 관한 기록<br>
- 관련 법령: 전자상거래 등에서의 소비자보호에 관한 법률 <br>
- 보존기간: 5년<br>
● 대금결제 및 재화 등의 공급에 관한 기록<br>
- 관련 법령: 전자상거래 등에서의 소비자보호에 관한 법률 <br>
- 보존기간: 5년<br>
● 소비자의 불만 또는 분쟁처리에 관한 기록<br>
- 관련 법령: 전자상거래 등에서의 소비자보호에 관한 법률 <br>
- 보존기간: 3년<br>
● 신용정보의 수집, 처리 및 이용 등에 관한 기록<br>
- 관련 법령: 신용정보의 이용 및 보호에 관한 법률<br>
- 보존기간: 3년<br>
● 접속에 관한 기록보존<br>
- 관련 법령: 통신비밀보호법<br>
- 보존기간: 3개월<br>
● 본인확인에 관한 기록<br>
- 관련 법령: 정보통신망 이용촉진 및 정보보호 등에 관한 법률<br>
- 보존기간: 6개월<br>
● 거래기록 등을 보관해야 하는 경우<br>
- 관련 법령: 국세기본법<br>
- 보존기간: 10년<br>
● 손해배상요청을 접수 및 처리<br>
- 관련 법령: 제조물책임법<br>
- 보존기간: 10년<br><br>

※ 위의 필수적 개인정보의 수집 및 이용에 대한 동의를 거부할 권리가 있습니다.  그러나 동의를 거부할 경우에는 회원/팬클럽 가입 거절될 수 있습니다.
			
			</span>
		
		
			<span class="agree_check"><input type="checkbox" name="agree_check" value="check" class="chk"> 위의 약관에 동의합니다.<br></span>
	
		</div>
	
	
	
	<div id="agree_2">
		
			<span class="agree_title">개인정보의 제3자 제공 동의</span>
			
			<span class="agree_txt">
			<strong>■ 개인정보를 제공 받는 자</strong><br>
- HM 인터내셔날<br><br>

<strong>■ 개인정보를 제공받는 자의 이용목적</strong><br>
- HM인터내셔날이 운영하는 FNC Store 홈페이지 등에서 FNC 팬클럽회원에게 할인서비스 등을 제공하기 위해 FNC 회원/팬클럽 회원임을 확인하고, 관련 할인서비스 등(A/S 등 관련 제반 서비스 포함)을 제공하기 위함<br><br>

<strong>■ 제공하는 개인정보의 항목</strong><br>
- 팬클럽이름, 팬클럽고유번호, 팬클럽 등록일 및 만료일<br><br>

<strong>■ 개인정보를 제공받는 자의 개인정보 보유 및 이용기간</strong><br>
- 당사가 상기 제3자에게 귀하의 개인정보를 제공한 날부터 제3자의 이용목적을 달성할 때까지의 기간<br><br>

※ 위의 제3자 제공에 대한 동의를 거부할 권리가 있습니다.  그러나 동의를 거부할 경우에는 상기 제3자가 제공하는 회원/팬클럽 혜택을 제공받지 못한다는 점을 양지하시기 바랍니다. 
			
			</span>
		
		
			<span class="agree_check"><input type="checkbox" name="agree_check" value="check" class="chk"> 위의 약관에 동의합니다.<br></span>
			
	
		</div>
	
	
	<div id="feed_btn">
	
		<div id="checkLast">
	
		<div id="checkLastBox">
			<span class="agree_check1">
			<input type="checkbox" name="agree_check" value="check" id="checkAll"> 전체동의<br>
			</span>
			</div>
			
			</div>
		
					<a id="btn_more" target="_self">다음단계</a>
				
				</div>
	
	
	</div>	
	
	
	
	
	</div>





</div>


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