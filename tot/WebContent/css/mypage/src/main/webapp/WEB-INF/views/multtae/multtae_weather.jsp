<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../layout/header.jsp"%>

<link href="../../../../resources/css/multtae/multtae_weather.css" rel="stylesheet" type="text/css"
   media="all" />

<div id="multtaeForm">
<p id="pagetitletext">물때와 날씨</p>

<div id="currentlocbox">
	<div id="currentloccontent">
		<img id="currentlocimg" src="../../../../resources/image/ico_01.png" style="width: 36px; margin: 3px 0;" />
		<span id="currentlocname">가덕도</span>
		<span id="otherloc">다른 지역보기</span>
	</div>
</div>

<div id="background">
<div id="wrapper">

	<div id="today">
		<div id="todaytitle">
			<div id="todaytitlecontents">
				<img id="icon" src="../../../../resources/image/wave.svg" />
				<span id="todaylocname">가덕도</span>
				<span id="todaytitlett">오늘의 물때정보</span>
			</div>
		</div>
		<div id="todaycontent">
			<span class="todaycontent123" id="todaycontent1">2020년 07월 29일 수요일
				<span id="todaycontent11">(음) 06.09</span>
				<span id="todaycontent12">예보기준 18:00</span>
			</span>
			<div class="todaycontent123" id="todaycontent2">
				<img id="weathericon" src="../../../../resources/image/weather/weather06.png" />
				<div id="todaycontent2div">
					<span id="todaytemp">24˚C</span> <br>
					<span id="todaytempmin">최저 23.0˚C</span>
					<span style="color: #aaa; font-size: 13px; background: white;"> / </span>
					<span id="todaytempmax">최고 27.0˚C</span>
				</div>
				<div id="todayright">
					<span id="todayright1">파고 0.5m</span><br>
					<span id="todayright2">풍속 남풍2m/s</span>
				</div>
			</div>
			<div class="todaycontent123" id="todaycontent3">
				<img id="moonicon" src="../../../../resources/image/moon/09.png" />
				<span id="todaymulttae">1물</span>
				<div id="today2nd">
					<span id="today2nd1">일출 <strong id="st">05시 32분</strong></span><br>
					<span id="today2nd2">일몰 <strong id="st">19시 31분</strong></span>
				</div>
				<div id="today3rd">
					<span id="today3rd1">현재 예측 조위</span><br>
					<span id="today3rd2" style="color: blue">89cm</span>
				</div>
			</div>
			
			<table>
				<tr>
					<td></td>
					<td>0시</td>
					<td>3시</td>
					<td>6시</td>
					<td>9시</td>
					<td>12시</td>
					<td>15시</td>
					<td>18시</td>
					<td>21시</td>
				</tr>
				<tr>
					<td class="1sttd">만조/간조</td>
					<td></td>
					<td>03:07 145cm</td>
					<td></td>
					<td>09:10 68cm</td>
					<td></td>
					<td>16:33 150cm</td>
					<td></td>
					<td>22:25 80cm</td>
				</tr>
				<tr>
					<td class="1sttd">풍속(m/s)</td>
					<td>남동 1.9</td>
					<td>남동 1.6</td>
					<td>동남동 1.5</td>
					<td>남남동 1.8</td>
					<td>남 2.7</td>
					<td>남남서 3</td>
					<td>남 2.7</td>
					<td>남 2</td>
				</tr>
				<tr>
					<td class="1sttd">파고(m)</td>
					<td>0.5</td>
					<td>0.5</td>
					<td>0.5</td>
					<td>0.5</td>
					<td>0.5</td>
					<td>0.5</td>
					<td>0.5</td>
					<td>0.5</td>
				</tr>
				<tr>
					<td class="1sttd">날씨</td>
					<td>23˚C</td>
					<td>23˚C</td>
					<td>23˚C</td>
					<td>25˚C</td>
					<td>26˚C</td>
					<td>26˚C</td>
					<td>25˚C</td>
					<td>24˚C</td>
				</tr>				
			</table>
			
		</div>
		 
		
	</div>
	

</div>
</div>
</div>

<%@ include file="../layout/footer.jsp"%>