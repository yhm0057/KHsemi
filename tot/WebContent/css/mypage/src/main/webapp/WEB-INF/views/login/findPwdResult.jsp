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

#findPwdResultFormDiv {
	margin-bottom: 7%;
}

#backColor {
	height: 250px;
    background-color: #2f455c;
}

#findPwdForm {
	width: 800px;
    height: 700px;
    background: white;
    border: 1px solid #ccc;
    margin: 0 auto;
    margin-top: -7%;
}

#findPwdTextDiv {
	text-align: center;
}

#findPwdFirstText {
	font-size: 35px;
    font-weight: bold;
    margin-top: 50px;
    margin-bottom: 20px;
}

a:link {text-decoration: none; color: #808080;}
a:visited {text-decoration: none; color: #808080;}
a:active {text-decoration: none; color: #808080}
a:hover {text-decoration: underline; color: #808080;}

*:focus { outline:none; }

.horizonLine {
	width: 600px;
	color: #ccc; /* IE */
    border-color: #ccc; /* 사파리 */
    background-color: #ccc; /* 크롬, 모질라 등, 기타 브라우저 */
       
    margin-top: 45px;
    margin-bottom: 10px;
    
}

/* 메일 전송 이미지 */
#findPwdImg {
	margin-top: 30px;
    margin-bottom: 50px;
    
	width: 150px;
}

/* 비밀번호 찾기 결과 감싸고 있는 div */
#findPwdResultDiv {
    width: 600px;
    margin: 0 auto;
    height: 145px;
    font-size: 17px;
    color: #808080;
}

/* 비밀번호 찾기 결과 - 사용자 이메일 label */
#findPwdResult {
	color: #606060;
}

#otherFindText {
	margin-left: 12.5%;
	color: #bbb;
}

#otherFind {
	text-decoration: underline;
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
/*     margin-left: 50px; */
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
	margin-bottom: 50px;
}

</style>

<div id="findPwdResultFormDiv">
	<div id="backColor"></div>

	<div id="findPwdForm">
		<div id="findPwdTextDiv">
			<div id="findPwdFirstText">
				비밀번호 찾기
			</div>
			
			<div id="findPwdImgForm">
				<img src="/resources/image/logo/emailSend.png" id="findPwdImg" alt="logo image">
			</div>
			
			<div id="findPwdResultDiv">
				회원가입시 등록하신 <label id="findPwdResult">abc@naver.com</label> 메일로<br>
				임시비밀번호를 발송하였습니다.<br><br>
				로그인 후, 비밀번호를 변경해주세요.
			</div>
		</div>
		
		<div class="form-group">
			<div>
				<a href=""><button type="button" id="loginBtn">로그인</button></a>
				<a href=""><button type="button" id="mainBtn">메인으로</button></a>
			</div>
		</div>
		
		<hr class="horizonLine">
		
		<div id="otherFindText">
			혹시 아이디를 찾으시나요? <a href=""><label id="otherFind">아이디 찾기</label></a>
		</div>
		
	</div>
	
</div>

<%@ include file="../layout/footer.jsp"%>

