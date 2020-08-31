<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<!-- #f4f8fb -->

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
    height: 900px;
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

.space {
	margin-left: 60px;
}

#businessJoin {
	border: 1px solid #ccc;
	
	width: 250px;
    height: 350px;
    border-radius: 10px;
    margin-left: 100px;
    
    float: left;
}

#ordinaryJoin {
	border: 1px solid #ccc;
	
	width: 250px;
    height: 350px;
    border-radius: 10px;
    margin-left: 100px;

    float: left;
}

.horizonLine {
	width: 600px;
	color: #ccc; /* IE */
    border-color: #ccc; /* 사파리 */
    background-color: #ccc; /* 크롬, 모질라 등, 기타 브라우저 */
}

#joinText {
	text-align: center;
    font-size: 25px;
    margin-top: 70px;
    margin-bottom: 70px;
    font-weight: bold;
}

.joinMemberImg {
	width: 180px;
}

.joinSelectBtn {
	width:250px;
    background-color: #f3f3f3;
    border: none;
    padding: 10px 0;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 15px;
    margin-left: -1px;
    margin-top: 26px;
    cursor: pointer;
    height: 60px;
    border-radius: 0px 0px 10px 10px;
    font-weight: bold;
    border: 1px solid #ccc;
}

.joinMemberImgDiv {
	margin: 60px 40px 40px 40px;
}

a:link {text-decoration: none; color: #808080;}
a:visited {text-decoration: none; color: #808080;}
a:active {text-decoration: none; color: #808080}
a:hover {text-decoration: underline; color: #808080;}

*:focus { outline:none; }

</style>

<div id="joinFormDiv">
	<div id="backColor"></div>

	<div id="joinForm">
		<div id="joinOrderForm">
			<div id="joinFirstOrder" class="joinSelectOrderText">STEP01<br>가입유형 선택<br> <label class="space">></label> </div>
			<div id="joinSecondOrder" class="joinOrderText">STEP02<br>개인정보 입력<br> <label class="space">></label> </div>
			<div id="joinLastOrder" class="joinOrderText">STEP03<br>회원가입 완료<br> <label class="space">></label> </div>
		</div>
		
		<hr class="horizonLine">
		
		<div id="joinText">
		원하시는 가입유형을 선택하세요.
		</div>
		
		<div id="businessJoin">
			<div class="joinMemberImgDiv">
				<a href="/login/bUserJoin"><img src="/resources/image/logo/business.png" class="joinMemberImg" alt="businessMember image"></a>
			</div>
			
			<a href="/login/bUserJoin"><button type="button" class="joinSelectBtn">사업자로 가입</button></a>
		</div>
		
		<div id="ordinaryJoin">
			<div class="joinMemberImgDiv">
				<a href="/login/userJoin"><img src="/resources/image/logo/ordinary.png" class="joinMemberImg" alt="ordinaryMember image"></a>
			</div>
			
			<a href="/login/userJoin"><button type="button" class="joinSelectBtn">일반회원으로 가입</button></a>
		</div>
		
		
	</div>	
	
</div>

<%@ include file="../layout/footer.jsp"%>

