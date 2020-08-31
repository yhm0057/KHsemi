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

#findIdFormDiv {
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

#findIdDiv {
	margin-top: 60px;
	margin-bottom: 65px;
}

#inputName {
    margin-left: 25%;
    width: 450px;
}

#inputPhone {
	margin-left: 25%;
    width: 450px;
}

#findIdBtnDiv {
	text-align: center;
}

#findIdBtn {
    width:450px;
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
    
    margin-left: -12px;
}

#otherFindText {
	margin-left: 12.5%;
	color: #bbb;
}

#otherFind {
	text-decoration: underline;
}


</style>

<div id="findIdFormDiv">
	<div id="backColor"></div>

	<div id="findIdForm">
		<div id="findIdTextDiv">
			<div id="findIdFirstText">
				아이디 찾기
			</div>
			<div id="findIdSecondText">
				아이디는 가입시 입력하신 이름, 연락처를 통해 찾으실 수 있습니다.
			</div>
		</div>
						
		<form action="" method="post" autocomplete="off" class="form-horizontal" >
			<div id="findIdDiv">
				<div class="form-group">
					<div class="col-sm-10" >
						<input type="text" class="form-control" id="inputName" name="inputName" placeholder="이름" />
					</div>
				</div>
				
				<div class="form-group">
		 			<div class="col-sm-10" >
						<input type="text" class="form-control" id="inputPhone" name="inputPhone" placeholder="연락처" />
					</div>
				</div>
				
				<div class="form-group">
					<div id="findIdBtnDiv">
						<a href="/login/findIdResult"><button type="button" id="findIdBtn">아이디 찾기</button></a> <!-- 실제 구현할 때 type : submit 으로 바꿔야함 -->
				    </div>
				</div>
			</div>
		</form>
		
		<hr class="horizonLine">
		
		<div id="otherFindText">
			혹시 비밀번호를 찾으시나요? <a href=""><label id="otherFind">비밀번호 찾기</label></a>
		</div>
		
	</div>
	
</div>

<%@ include file="../layout/footer.jsp"%>

