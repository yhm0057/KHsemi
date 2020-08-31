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

#findPwdFormDiv {
	margin-bottom: 7%;
}

#backColor {
	height: 250px;
    background-color: #2f455c;
}

#findPwdForm {
	width: 800px;
    height: 570px;
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

#findPwdSecondText {
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
       
    margin-top: 70px;
    margin-bottom: 10px;
    
}

#findPwdDiv {
	margin-top: 60px;
	margin-bottom: 65px;
}

#inputName {
    margin-left: 25%;
    width: 450px;
}

#inputId {
    margin-left: 25%;
    width: 450px;
}

#inputPhone {
	margin-left: 25%;
    width: 450px;
}

#findPwdBtnDiv {
	text-align: center;
}

#findPwdBtn {
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

<div id="findPwdFormDiv">
	<div id="backColor"></div>

	<div id="findPwdForm">
		<div id="findPwdTextDiv">
			<div id="findPwdFirstText">
				비밀번호 찾기
			</div>
			<div id="findPwdSecondText">
				비밀번호는 가입시 입력하신 이름, 아이디, 연락처를 통해 찾으실 수 있습니다.
			</div>
		</div>
						
		<form action="" method="post" autocomplete="off" class="form-horizontal" >
			<div id="findPwdDiv">
				<div class="form-group">
					<div class="col-sm-10" >
						<input type="email" class="form-control" id="inputName" name="inputName" placeholder="이름" />
					</div>
				</div>
				
				<div class="form-group">
		 			<div class="col-sm-10" >
						<input type="password" class="form-control" id="inputId" name="inputId" placeholder="아이디" />
					</div>
				</div>
				
				<div class="form-group">
		 			<div class="col-sm-10" >
						<input type="password" class="form-control" id="inputPhone" name="inputPhone" placeholder="연락처" />
					</div>
				</div>
				
				<div class="form-group">
					<div id="findPwdBtnDiv">
						<a href="/login/findPwdResult"><button type="button" id="findPwdBtn">비밀번호 찾기</button></a> <!-- 실제 구현할 때 type : submit 으로 바꿔야함 -->
				    </div>
				</div>
			</div>
		</form>
		
		<hr class="horizonLine">
		
		<div id="otherFindText">
			혹시 아이디를 찾으시나요? <a href=""><label id="otherFind">아이디 찾기</label></a>
		</div>
		
	</div>
	
</div>

<%@ include file="../layout/footer.jsp"%>

