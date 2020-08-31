<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- 해당 페이지에만 적용되는 Script -->
<script type="text/javascript">
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
    height: 780px;
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

#joinSuccessTextForm {
	text-align: center;
}


#joinSuccesTextFirst {
	font-size: 25px;
    margin-bottom: 30px;
}

#joinSuccesTextSecond {
	font-size: 17px;
    color: #606060;
    
    margin-bottom: 50px;
}

#successImg {
	margin-top: 30px;
    margin-bottom: 30px;
    
	width: 150px;
}

/* 로그인 버튼 */
#loginBtn {
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

/* 메인으로 버튼 */
#mainBtn {
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
	margin-top: 50px;
}

</style>

<div id="joinFormDiv">
	<div id="backColor"></div>

	<div id="joinForm">
		<div id="joinOrderForm">
			<div id="joinFirstOrder" class="joinOrderText">STEP01<br>가입유형 선택<br> <label class="space">></label> </div>
			<div id="joinSecondOrder" class="joinOrderText">STEP02<br>개인정보 입력<br> <label class="space">></label> </div>
			<div id="joinLastOrder" class="joinSelectOrderText">STEP03<br>회원가입 완료<br> <label class="space">></label> </div>
		</div>
		
		<hr class="horizonLine">
		
		<div id="joinSuccessTextForm">
			<div id="successImgForm">
				<img src="/resources/image/logo/joinSuccess.png" id="successImg" alt="logo image">
			</div>
		
			<div id="joinSuccesTextFirst">회원가입이 <b>완료</b> 되었습니다.</div>
			<div id="joinSuccesTextSecond"><b>하나유선</b>님은 사업자서비스 이용이 가능한 사업자 회원이 되셨습니다.<br> 알차고 실속있는 서비스로 찾아뵙겠습니다.</div>
		</div>
		
		<hr class="horizonLine">
		
		<div class="form-group">
			<div>
				<a href=""><button type="button" id="loginBtn">로그인</button></a>
				<a href=""><button type="button" id="mainBtn">메인으로</button></a>
			</div>
		</div>
			
	</div>	
	
</div>

<%@ include file="../layout/footer.jsp"%>

