<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
<title></title>
<script type="text/javascript" src="/Perplus/js/OpenPayAPI.js"></script>
<!--  1.API 호출 -->
<script>
  function getPGIOresult() {	/* 5.오픈페이API의 처리과정이 완료되었을 때 API내부에서 "getPGIOresult()"함수를 호출 */
  var replycode = document.PGIOForm.elements['replycode'].value;
  var replyMsg = document.PGIOForm.elements['replyMsg'].value;
  displayStatus(getPGIOElement('ResultScreen'));    //필수항목
  alert(replycode + replyMsg);
 
  if(replycode == "0000"){//0000은 결제 성공을 의미
      document.PGIOForm.action = 'http://Perplus/test/success.html'; //결제 성공 후 이동할 페이지.
      document.PGIOForm.submit();
  }else{
     //결제 실패 처리.   0000을 제외한 나머지 code는 모두 결제 실패.
  }
  }
  </script>
</head>
<body>
	<div id="PGIOscreen">
		<!--  4."doTransaction()호출시 PGIOscreen에서 결제창이 뜸 -->
		<input type=button value="OpenPay API"
			onclick="javascript:doTransaction(document.PGIOForm);">
		<!--  3.상점 페이지에 정의한  "doTransaction()" 메서드콜에 의해 결제가 시작됨 -->
	</div>
	<form name="PGIOForm">
		<!--  2.PGIOForm에서 데이터 입출력 -->
		<input type=hidden name=mid value="paygatekr"> <!-- 국내 카드 결제 -->
		<input type=hidden name="charset" value="UTF-8">
    	<input type=hidden name=langcode value="KR"> <input type="hidden" name="kindcss" value="1"><input
			type=hidden name=paymethod value="104"> <input
			type=hidden name=unitprice value="1"><!--  폼 디자인 1번 --><input type=hidden
			name=goodcurrency value="WON"> <input type=hidden
			name=goodname value="상품명"> <input type=hidden
			name=receipttoname value="구매자이름"> <input type=hidden
			name=receipttoemail value="dev@paygate.net"> <input
			type=hidden name=receipttotel value=""> <input type=hidden
			name=receipttosocialnumber value=""> <input type=hidden
			name=socialnumber value=""> <input type=hidden name=carrier
			value=""> <input type=hidden name=cardauthcode value="">
		<input type=hidden name=cardtype value=""> <input type=hidden
			name=cardnumber value=""> <input type=hidden
			name=cardsecretnumber size=3 value=""> <input type=hidden
			name=cardexpiremonth size=2 value=""> <input type=hidden
			name=cardexpireyear size=4 value=""> <input type=hidden
			name=cardownernumber size=13 value=""> <input type=hidden
			name=bankcode value=""> <input type=hidden name=bankexpyear
			value=""> <input type=hidden name=bankexpmonth value="">
		<input type=hidden name=bankexpday value=""> <input
			type=hidden name=bankaccount value=""> <input type=hidden
			name=mb_serial_no value=""> <input type=hidden
			name=profile_no value=""> <input type=hidden name=hashresult
			value=""> <input type=hidden name=tid value=""> <input
			type=hidden name=replycode value=""> <input type=hidden
			name=replyMsg value=""> <input type=hidden name=riskscore
			value="">
	</form>
</body>
</html>