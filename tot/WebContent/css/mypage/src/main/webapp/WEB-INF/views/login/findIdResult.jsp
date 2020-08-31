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

#findIdResultFormDiv {
	margin-bottom: 7%;
}

#backColor {
	height: 250px;
    background-color: #2f455c;
}

#findIdForm {
	width: 800px;
    height: 510px;
    background: white;
    border: 1px solid #ccc;
    margin: 0 auto;
    margin-top: -7%;
}

#findIdTextDiv {
	text-align: center;
}

#findIdFirstText {
	font-size: 35px;
    font-weight: bold;
    margin-top: 50px;
    margin-bottom: 20px;
}

#findIdSecondText {
	font-size: 17px;
    color: #606060;
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

/* 결과 아이디 감싸고 있는 div */
#findIdResultDiv {
    width: 200px;
    margin: 0 auto;
    height: 160px;
}

/* 결과 아이디 */
#findIdResult {
	font-size: 18px;
	margin-top: 30%;
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

<div id="findIdResultFormDiv">
	<div id="backColor"></div>

	<div id="findIdForm">
		<div id="findIdTextDiv">
			<div id="findIdFirstText">
				아이디 찾기
			</div>
			<div id="findIdSecondText">
				입력하신 정보와 일치하는 아이디입니다.
			</div>
			<div id="findIdResultDiv">
				<label id="findIdResult">abc@naver.com</label>
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
			혹시 비밀번호를 찾으시나요? <a href=""><label id="otherFind">비밀번호 찾기</label></a>
		</div>
		
	</div>
	
</div>

<%@ include file="../layout/footer.jsp"%>

