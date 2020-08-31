<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>

<link href="../../../../resources/css/cafe/cafe.css" rel="stylesheet" type="text/css"
   media="all" />
     
<script type="text/javascript">

$(window).load( function(){

       var div_height_right_Area =  $('.menucontent').height();

        //왼쪽 컨텐츠의 높이를 오른쪽 컨텐츠의 높이와 같게 속성 변경
        $('.menu').css("height",div_height_right_Area+"px");

});

</script>

	<div class="wrap">
			<div class="cafename"><img alt="카페 헤더" src="../../../../../resources/image/cafe/카페 헤더.PNG"
			 class="cafename"></div>
			 <br><br>
			<div class="menu">
			<div class="myinfo">
				<div class="info">
					<hr><a href="#" class="nick"> 카페 정보</a> |<a href="#" class="nick"> 나의 활동</a> <hr>
				</div>
				<div class="profile">
					<ul>
						<li><img alt="profile"
							src="../../../../../resources/image/cafe/profile.png" class="profilepng"></li>
						<li><a href="#" class="nick">정통여신</a>
							<div> 가입 2020.07.17</div></li>
						<li><br>카페 매니저<img alt="crown"
							src="../../../../../resources/image/cafe/crown.png" class="crownpng"><br> </li>
						<li><br><div class="board"><img alt="profile"
							src="../../../../../resources/image/cafe/board.png" class="boardpng"> 내가 쓴 글  1개</div></li>
						<li><div class="comment"><img alt="comment"
							src="../../../../../resources/image/cafe/comment.png" class="commentpng"> 내가 쓴 댓글 1개</div></li>
						<li><div class="heart"><img alt="heart"
							src="../../../../../resources/image/cafe/heart.png" class="heartpng"> 내가 누를 좋아요 1개</div></li>
						<li><div class="cafe-write-btn">
							<a href="#" class="joinbnt" onclick="joinCafe();return false;">카페 가입하기</a></div></li>
					</ul>
				</div><!-- profile end -->
				<hr><br>
				</div><!-- myinfo end -->
				
				<div class="sbmenu">
					<div>
						<a href="#" class="nick">카페 모임 일정</a>
					</div><br>
					<div>
						<a href="#" class="nick">조행기</a>
					</div><br>
					<div>
						<a href="#" class="nick">게시판</a>
					</div><br>
					<div>
						<a href="#" class="nick">카페 랭킹</a>
					</div><br>
				</div>
			
			</div><!-- menu end -->
			
			<div class="menucontent">
<br>			
				<img alt="photo" src="../../../../../resources/image/cafe/카페사진.jpg" class="cafephoto"><br><br>
			<br><div class="cafeintroduce">[경기] 카페 소개글</div><br>
			<div class="cafeintroducecontent">
				<span>바다 곳곳 낚시를 사랑하는 분들이 모인 경기카페, 
				모두가 즐기는 낚시인 만큼 열정있는 사람들의 모입입니다.<br>
				1년에 6회 정도 정기 출조를 실시하고 있으며, 매월 지역마다 번개 출조와 번팅을 자주 실시합니다.<br>
				카페 內, 낚시 교실은 낚시를 처음 접하는 입문자에서 중급자까지 다양한 
				기술 자료를 보유하고 있습니다. 
				<br>낚시를 사랑하고 자연을 사랑하시는 분들은 회원이 꼭 되어 주세요. 
				<br>평생을 같은 취미로 여러분들 곁을 지켜 줄 친구와 같은 분들이 많이 계십니다
				</span>
			</div><br><br>
			<div class="cafeintroduce">가입안내</div><br>
			<div class="cafeintroducecontent2">
				<pre>저희 카페는 자동가입이 됩니다. 가입인사는 자유 게시판에 남겨주세요 :)</pre>
			</div><br><br>
			<div class="cafeintroduce">닉네임 안내</div><br>
			<div class="cafeintroducecontent2">
				<pre>정통여신  		* 닉네임 변경은 마이페이지에서 가능합니가. </pre>
			</div><br><br><br>
			<div class="cafeintroduce">꼭 읽어주세요!</div><br>
			<div class="cafeintroducecontent3">
				<pre>가입 신청 후 5개월 이상 활동 내역이 없으면 카페 자동 탈퇴됩니다.
가입 탈퇴 후 개인 정보와 활동 내역이 전부 삭제 됩니다.
욕설과 타인을 비방하는 글은 자동으로 삭제됩니다.</pre></div>
			<div >
				<button class="joinbutton">동의 후 가입하기</button>
			</div>
			
			</div><!-- menucontent end -->
			
			
</div> <!-- wrap end -->

<%@ include file="../../layout/footer.jsp"%>
	
