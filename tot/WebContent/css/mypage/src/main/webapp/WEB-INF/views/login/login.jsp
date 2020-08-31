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

#loginForm {
	width: 800px;
    height: 600px;
    background: white;
    border: 1px solid #ddd;
    margin: 0 auto;
    margin-top: 8%;
    margin-bottom: 6%;
}

#logoForm {
	text-align: center;
}

#logoImg {
	width: 160px;
    z-index: 9999;
    margin-top: 50px;
    margin-left: 30px;
}

#inputId {
	margin-top: 50px;
    margin-left: 30%;
    width: 450px;
}

#inputPw {
	margin-left: 30%;
    width: 450px;
}

#loginBtn {
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
    margin-left: 50px;
}

.searchForm {
	margin: 20px;
	font-size: 12px;
	color: #808080;
}

.searchWidth {
	width: 50px;
}

.btnWidth {
	width: 30px;
}

#orText {
	color: #808080;
	font-size: 11px;
    text-align: center;
    font-weight: 800;
    margin-bottom: 10px;
}

a:link {text-decoration: none; color: #808080;}
a:visited {text-decoration: none; color: #808080;}
a:active {text-decoration: none; color: #808080}
a:hover {text-decoration: underline; color: #808080;}

#joinBtn {
	width:200px;
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

#kakaoBtn {
	width:200px;
    background-color: #ffd400;
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
}

*:focus { outline:none; }

</style>

<div id="loginForm">
	<div id="logoForm">
		<img src="/resources/image/logo/logo.png" id="logoImg" alt="logo image">
	</div>
	
	<form autocomplete="off" action="#" method="post" class="form-horizontal" style="text-align: center;">
		<div class="form-group">
			<div class="col-sm-10" >
				<input type="email" class="form-control" id="inputId" name="inputId" placeholder="아이디" />
			</div>
		</div>
		
		<div class="form-group">
 			<div class="col-sm-10" >
				<input type="password" class="form-control" id="inputPw" name="inputPw" placeholder="비밀번호" />
			</div>
		</div>
		
		<div class="form-group">
			<div class="loginBtn">
				<button type="submit" id="loginBtn">로그인</button>
		    </div>
		</div>
		
		<div class="form-group">
			<div class="searchForm">
				<a href="/login/findId">아이디 찾기</a> <label class="searchWidth"></label> | <label class="searchWidth"></label> <a href="/login/findPwd">비밀번호 찾기</a>
			</div>
		</div>
		
		<div class="form-group">
			<div id="orText">
				OR
			</div>
		</div>
		
		<div class="form-group">
			<div>
				<a href="/login/join"><button type="button" id="joinBtn">이메일로 가입하기</button></a>
				<label class="btnWidth"></label>
				<button type="button" id="kakaoBtn">카카오로 시작하기</button>
		    </div>
		</div>
		
	</form>
</div>

<%@ include file="../layout/footer.jsp"%>

