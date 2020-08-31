<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- #f4f8fb -->

<!-- 다음 주소 api -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<!-- 해당 페이지에만 적용되는 Script -->
<script type="text/javascript">

/* 주소 api 실행 */
function execPostCode() {
    new daum.Postcode({
        oncomplete: function(data) {
           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

           // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
           var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
           var extraRoadAddr = ''; // 도로명 조합형 주소 변수

           // 법정동명이 있을 경우 추가한다. (법정리는 제외)
           // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
           if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
               extraRoadAddr += data.bname;
           }
           // 건물명이 있고, 공동주택일 경우 추가한다.
           if(data.buildingName !== '' && data.apartment === 'Y'){
              extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
           }
           // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
           if(extraRoadAddr !== ''){
               extraRoadAddr = ' (' + extraRoadAddr + ')';
           }
           // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
           if(fullRoadAddr !== ''){
               fullRoadAddr += extraRoadAddr;
           }

           // 우편번호와 주소 정보를 해당 필드에 넣는다.
           console.log(data.zonecode);
           console.log(fullRoadAddr);
           
           
           $("[name=userAddrPostcode]").val(data.zonecode);
           $("[name=userAddrStreet]").val(fullRoadAddr);
           
           /* document.getElementById('signUpUserPostNo').value = data.zonecode; //5자리 새우편번호 사용
           document.getElementById('signUpUserCompanyAddress').value = fullRoadAddr;
           document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress; */
       }
    }).open();
}

</script>

<!-- 해당 페이지에만 적용되는 Style -->
<style type="text/css">

body {
	background-color: #f4f8fb;
}

#joinFormDiv {
	margin-bottom: 7%;
}

#backColor {
	height: 250px;
    background-color: #2f455c;
}

#joinForm {
	width: 800px;
    height: 1170px;
    background: white;
    border: 1px solid #ccc;
    margin: 0 auto;
    margin-top: -7%;
}

#joinOrderForm {
	margin-top: 50px;
	margin-left: 20px;
	height: 150px;
}

#joinFirstOrder {
	float: left;
	width: 230px;
    height: 100px;
/*     border: 1px solid #ccc; */
    margin-left: 75px;
}

#joinSecondOrder {
	float: left;
	
	width: 230px;
    height: 100px;
/*     border: 1px solid #ccc; */
}

#joinLastOrder {
    float: left;
    
   	width: 230px;
    height: 100px;
/*     border: 1px solid #ccc; */
}

.joinSelectOrderText {
	font-size: 25px;
	font-weight: 800;
}

.joinOrderText {
	font-size: 25px;
	color: #808080;
}

.horizonLine {
	width: 600px;
	color: #ccc; /* IE */
    border-color: #ccc; /* 사파리 */
    background-color: #ccc; /* 크롬, 모질라 등, 기타 브라우저 */
}

.joinInputText {
	font-weight: bold;
	font-size: 15px;
	color: #424242;
}

.requiredInput {
	font-weight: bold;
	color: red;
}

#joinInputForm {
	width: 450px;
    margin: 0 auto;
    margin-top: 60px;
    margin-bottom: 60px;
}

.joinInputDiv {
	margin-bottom: 35px;
}

/* 완료 버튼 */
#joinBtn {
	width:100px;
    background-color: #f15b2a;
    border: none;
    color:#fff;
    padding: 10px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
    border-radius:10px;
    height: 40px;
    margin-left: 50px;
}

/* 취소 버튼 */
#cancelBtn {
	width:100px;
    background-color: white;
    border: 1px solid #ccc;
    color:#808080;
    padding: 10px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin: 4px;
    cursor: pointer;
    border-radius:10px;
    height: 40px;
    margin-left: 50px;
}

.form-group {
	text-align: center;
}

#userAddrPostcode {
	width: 200px;
	float: left;
	
	margin-bottom: 10px;
	
}

/* 주소 검색 버튼 */
#btnAddrSearch {
	margin-left: 150px;
	
	width: 100px;
	height: 34px;
	
    background-color: white;
    border: 1px solid #ccc;
    color:#808080;
    padding: 5px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    cursor: pointer;
    border-radius:5px;
}

#userAddrStreet {
	margin-bottom: 10px;
	
}

*:focus { outline:none; }

</style>

<div id="joinFormDiv">
	<div id="backColor"></div>

	<div id="joinForm">
		<div id="joinOrderForm">
			<div id="joinFirstOrder" class="joinOrderText">STEP01<br>가입유형 선택<br> <label class="space">></label> </div>
			<div id="joinSecondOrder" class="joinSelectOrderText">STEP02<br>개인정보 입력<br> <label class="space">></label> </div>
			<div id="joinLastOrder" class="joinOrderText">STEP03<br>회원가입 완료<br> <label class="space">></label> </div>
		</div>
		
		<hr class="horizonLine">
		
		<!-- 회원가입 정보 입력 폼 -->
		<form action="" method="post" autocomplete="off">
			<div id="joinInputForm">
				<div class="joinInputDiv">
					<div class="joinInputText">아이디 <label class="requiredInput">*</label></div>
					<input type="text" id="idInput" class="joinInput form-control" placeholder="이메일 형식으로 입력해주세요." />
				</div>
				
				<div class="joinInputDiv">
					<div class="joinInputText">비밀번호 <label class="requiredInput">*</label></div>
					<input type="password" id="pwdInput" class="joinInput form-control" placeholder="6~8자 어쩌구" />
				</div>
				
				<div class="joinInputDiv">
					<div class="joinInputText">이름 <label class="requiredInput">*</label></div>
					<input type="text" id="nameInput" class="joinInput form-control" placeholder="이름을 입력해주세요." />
				</div>
				
				<div class="joinInputDiv">
					<div class="joinInputText">상호명 <label class="requiredInput">*</label></div>
					<input type="text" id="businessNameInput" class="joinInput form-control" placeholder="2~6자의 한글로 입력해주세요." />
				</div>
				
				<div class="joinInputDiv">
					<div class="joinInputText">사업자등록번호 <label class="requiredInput">*</label></div>
					<input type="text" id="businessNumInput" class="joinInput form-control" placeholder="사업자등록번호를 입력해주세요." />
				</div>
				
				<div class="joinInputDiv">
					<div class="joinInputText">연락처 <label class="requiredInput">*</label></div>
					<input type="text" id="phoneInput" class="joinInput form-control" placeholder="-를 제외한 휴대폰 번호 11자리를 입력해주세요." />
				</div>
				
				<div class="joinInputDiv">
					<div class="joinInputText">사업장 주소 <label class="requiredInput">*</label></div>
					<input type="text" id="userAddrPostcode" name="userAddrPostcode" class="form-control" placeholder="우편번호" readonly="readonly" />
					<button type="button" id="btnAddrSearch" onclick="execPostCode();"><i class="fa fa-search"></i> 우편번호 찾기</button>
					<input type="text" id="userAddrStreet" name="userAddrStreet" class="form-control" placeholder="도로명 주소" readonly="readonly" />
					<input type="text" id="userAddrDetail" name="userAddrDetail" class="form-control" placeholder="상세주소" />
				</div>
			</div>
			
			<div class="form-group">
				<div>
					<a href="/login/bUserJoinSuccess"><button type="button" id="joinBtn">완료</button></a> <!-- 실제 개발시에는 회원가입 진행 컨트롤러로 연결해야함!! type도 submit으로 변경해야함 -->
					<a href=""><button type="button" id="cancelBtn">취소</button></a>
			    </div>
			</div>
		</form>
		
	</div>	
	
</div>

<%@ include file="../layout/footer.jsp"%>
