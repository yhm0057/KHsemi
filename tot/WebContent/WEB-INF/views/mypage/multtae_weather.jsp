<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물때와 날씨</title>
<style type="text/css">

html, body {
	padding: 0;
	margin: 0;
}

@font-face {
   font-family: 'NanumSquareRound';
   src:
      url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_two@1.0/NanumSquareRound.woff')
      format('woff');
   font-weight: normal;
   font-style: normal;
}

* {
	font-family: NanumSquareRound;
	background-color: #f4f8fb;
}

#wrapper {
	margin: 0 auto;
	width: 1000px;
	padding: 0;
}

#pagetitletext {
	background-color: white;
    height: 28px;
    text-align: center;
    padding: 12px;
    border-bottom: 1px solid #ddd;
    margin: 0;
    font-size: 14pt;
    font-weight: 600;
}

#currentlocbox {
	background-color: white;
    border-bottom: 1px solid #ddd;
    padding-left: 120px;
    height: 108px;
}

#currentloccontent {
    width: 300px;
    height: 40px;
    padding-top: 32px;
    position: relative;
    background-color: white;
}

#currentlocimg {
	width: 36px;
    margin: 3px 0;
    position: absolute;
    background-color: white;
}

#currentlocname {
	display: inline-block;
    font-size: 23pt;
    font-weight: 600;
    margin: 0;
    color: #393939;
    left: 45px;
    position: absolute;
    background-color: white;
    top: 36px;
}

#otherloc {
    top: 41px;
    border: 1px solid #3ca5df;
    left: 155px;
    padding: 0px 15px;
    color: #3ca5df;
    border-radius: 14px;
    position: absolute;
    background-color: white;
}

p {
	margin: 0;
}

#todaytitle {
	height: 108px;
	position: relative;
}

#todaytitlecontents {
    height: 30px;
    width: 300px;
    position: absolute;
    top: 50px;
    left: 20px;
}

#icon {
	height: 20px;
    width: 20px;
    position: absolute;
    top: 2.5px;
    background-color: #f4f8fb;
}

#todaylocname {
	font-size: 15pt;
    margin-top: 2px;
    font-weight: 600;
    display: inline-block;
    background-color: #f4f8fb;
    margin-left: 25px;
}

#todaycontent {
	font-size: 13pt;
    margin-top: 2px;
    display: inline-block;
    background-color: #f4f8fb;
    position: absolute;
    left: 85px;
    top: -1px;
}


}


</style>
</head>
<body>

<p id="pagetitletext">물때와 날씨</p>

<div id="currentlocbox">
	<div id="currentloccontent">
		<img id="currentlocimg" src="../../../images/ico_01.png" style="width: 36px; margin: 3px 0;" />
		<span id="currentlocname">가덕도</span>
		<span id="otherloc">다른 지역보기</span>
	</div>
</div>

<div id="wrapper">

	<div id="today">
		<div id="todaytitle">
			<div id="todaytitlecontents">
				<img id="icon" src="../../../images/wave.svg" />
				<span id="todaylocname">가덕도</span>
				<span id="todaycontent">오늘의 물때정보</span>
			</div>
		</div>
	</div>
	

</div>

</body>
</html>