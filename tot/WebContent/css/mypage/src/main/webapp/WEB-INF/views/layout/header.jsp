<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>바다속으로</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- JSTL taglib -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!-- 부트스트랩 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 구글 웹폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">

<style type="text/css">
@font-face {
   font-family: 'NanumSquareRound';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

/* 폰트 적용 */
body {
   font-family: "NanumSquareRound", "Nanum Gothic", sans-serif;
   
}
.collapse.navbar-collapse {
  background-color: #fff;
}

.container-fluid {
  background-color: #fff;
}

.navbar {
   background-color: #fff;
   border-color: #fff;
   border-radius: 0px 0px 0px 0px;
   border-bottom: 1px solid #ddd;
   z-index: 999;
   position: relative;
}
.navbar .navbar-brand {
  color: #7b7f80;
}
.navbar .navbar-brand:hover,
.navbar .navbar-brand:focus {
  color: #fefeff;
}
.navbar .navbar-text {
  color: #7b7f80;
}

/* 메뉴 글자색 */
.navbar .navbar-nav > li > a {
  color: #5c5c5c;
}

/* 메뉴에 마우스 가져다댔을때 */
.navbar-nav > li > a:hover,
.navbar-nav > li > a:focus {
  color: #f15b2a;
  background-color: #fff;
}

/* 프사 클릭하면 나오는 드롭다운 메뉴 */
.navbar-nav > li > .dropdown-menu {
  background-color: #fff;
}

.dropdown-menu > li > a {
  color: #7b7f80;
}

.dropdown-menu > li > a:hover,
.dropdown-menu > li > a:focus {
  color: #f15b2a;
  background-color: #fff;
}

/* 드롭다운 메뉴 선 */
.dropdown-menu > li.divider {
  background-color: #fff;
}
.navbar-nav > .active > a,
.navbar-nav > .active > a:hover,
.navbar-nav > .active > a:focus {
  color: #fefeff;
  background-color: #fff;
}

/* 프사 뒷배경 */
.navbar-nav > .open > a,
.navbar-nav > .open > a:hover,
.navbar-nav > .open > a:focus {
  color: #fefeff;
  background-color: #fff;
}

.navbar-toggle {
  border-color: #fff;
}
.navbar-toggle:hover,
.navbar-toggle:focus {
  background-color: #fff;
}
.navbar .navbar-toggle .icon-bar {
  background-color: #fff;
}
.navbar .navbar-collapse,
.navbar .navbar-form {
  border-color: #fff;
}
.navbar .navbar-link {
  color: #7b7f80;
}
.navbar .navbar-link:hover {
  color: #fefeff;
}

/* 상단바 로고 이미지 */
.navbarLogoImg {
	width: 130px;
    /* position: absolute; */
    /* top: 3px; */
    left: 2%;
    margin-top: -7px;;
}

/* 검색폼 크기 조절 */
.navbar-form.pull-left {
    padding-left: 80px;
    width: 400px;
    
}

/* 검색창 여백 */
.input-group {
    width: 300px;
    padding-left: 30%;
}

/* 프로필사진 */
.navbarProfileImg {
   margin-top: -13px;
    margin-bottom: -8px;
    width: 40px;
    
    border-radius: 70%;
    overflow: hidden;
/*     box-shadow: 0 1px 2px 0 rgba(0, 0, 0, 0.2), 0 1px 5px 0 rgba(0, 0, 0, 0.19); */
}

/* 이름 텍스트 */
.nameText {
   margin-top: 13px;
   margin-left: -6px;
}

header {
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  z-index: 999;
}

#search {
	border-color: rgb(241, 91, 42);
	border-radius: 5px;
}

#searchicon {
	position: absolute;
    right: 10px;
    z-index: 2;
    width: 25px;
    top: 4px;
}

.btn-default {
	background-image: none;
	background-color: rgb(241, 91, 42);
}

input.img-button {
    z-index: 2;
    background: url(../../../../resources/image/searchicon.png) no-repeat;
    border: none;
    width: 25px;
    height: 25px;
    position: absolute;
    right: 5px;
    top: 4px;
    background-size: contain;
}

</style>

</head>
<body>

<header>
   <nav class="navbar">
     <div class="container-fluid" style="width: 1200px;">
       <!-- Brand and toggle get grouped for better mobile display -->
       <div class="navbar-header">
         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
           <span class="sr-only">Toggle navigation</span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
           <span class="icon-bar"></span>
         </button>
         <a class="navbar-brand" href="/main">
            <img alt="Brand" src="../../../../resources/image/logo/navbarLogo2.png" class="navbarLogoImg">
         </a>
       </div>
   
       <!-- Collect the nav links, forms, and other content for toggling -->
       <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
         <ul class="nav navbar-nav">
   <!--         <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li> -->
           <li><a href="/refrigerator">나의 냉장고</a></li>
           <li><a href="/recipe/list">RECIPE</a></li>
         </ul>
         <form autocomplete="off" action="/recipe/list" method="get" class="navbar-form pull-left" role="search">
             <div class="input-group">
                <input type="text" id="search" class="form-control" name="search" placeholder="검색어를 입력해주세요" value="${param.search }">
                <input type="button" class="img-button">
             </div>
         </form>
         <div class="rightMenu">
            <ul class="nav navbar-nav navbar-right">
              <li><a href="/recipe/suggest">레시피 추천</a></li>
              <li><a href="/recipe/add">레시피 작성</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                   <img alt="Brand" src="../../../../resources/image/default_profile.png" class="navbarProfileImg">
                </a>
                <ul class="dropdown-menu" role="menu">
                  <li><a href="#">마이페이지</a></li>
                  <li class="divider"></li>
                  <li><a href="#">정보수정</a></li>
                  <li class="divider"></li>
                  <li><a href="#">자주하는 질문</a></li>
                  <li class="divider"></li>
                  <li><a href="#">로그아웃</a></li>
                </ul>
                <li class="nameText"><b>배승연</b>님</li>
            </ul>
         </div>
       </div><!-- /.navbar-collapse -->
     </div><!-- /.container-fluid -->
   </nav>
</header>