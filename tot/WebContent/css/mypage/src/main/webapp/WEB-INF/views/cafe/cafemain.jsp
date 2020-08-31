<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../layout/header.jsp"%>

<link href="../../../resources/css/cafe/cafe.css" rel="stylesheet" type="text/css"
   media="all" />

<script type="text/javascript">

$(window).load( function(){

       var div_height_right_Area =  $('.menucontent').height();

        //왼쪽 컨텐츠의 높이를 오른쪽 컨텐츠의 높이와 같게 속성 변경
        $('.menu').css("height",div_height_right_Area+"px");

});

</script>

<!-- 모달 스크립트 -->
<script type="text/javascript">
$(document).ready(function() {
   
   var modal = document.querySelector(".addmodal"); // 탈퇴 모달
   var modal2 = document.querySelector(".OKmodal"); // 탈퇴확인 모달
   var mp1button = document.querySelector("#frombnt"); //탈퇴모달버튼
   var mp2button = document.querySelector("#OKbnt"); //탈퇴확인모달버튼
   
   $("#frombnt").click(function() {
      console.log("눌림");
      modal.classList.toggle("show-modal"); 
   });
   $("#OKbnt").click(function() {
	      console.log("눌림");
	      modal2.classList.toggle("show-modal"); 
	   });
   
   $("#edtb td").click(function() {
      modal2.classList.toggle("show-modal"); 
   });
   
   $(".close-button").click(function() {
      console.log("zzz")
      modal.classList.toggle("show-modal"); 
      
   });
   
   $(".close-button2").click(function() {
	      modal.classList.toggle("show-modal"); 

      modal2.classList.toggle("show-modal"); 
   });
   
   $(window).click(function(e) {
      if(e.target === modal) {
         modal.classList.toggle("show-modal"); 
      }
   })
})

</script>


<div class="wrap">
   <div class="cafename">
      <img alt="카페 헤더" src="../../../../../resources/image/cafe/카페 헤더.PNG"
         class="cafename">
   </div>

   <div class="menu">
      <div class="myinfo">
         <div class="info">
            <hr>
            <a href="#" class="nick"> 카페 정보</a> |<a href="#" class="nick">
               나의 활동</a>
            <hr>
         </div>
         <div class="profile">
            <ul>
               <li><img alt="profile"
                  src="../../../../resources/image/cafe/profile.png"
                  class="profilepng"></li>
               <li><a href="#" class="nick">정통여신</a>
                  <div>가입 2020.07.17</div></li>
               <li><br>카페 매니저<img alt="crown"
                  src="../../../../resources/image/cafe/crown.png" class="crownpng"><br>
               </li>
               <li><br>
                  <div class="board">
                     <img alt="profile"
                        src="../../../../resources/image/cafe/board.png"
                        class="boardpng"> 내가 쓴 글 1개
                  </div></li>
               <li><div class="comment">
                     <img alt="comment"
                        src="../../../../resources/image/cafe/comment.png"
                        class="commentpng"> 내가 쓴 댓글 1개
                  </div></li>
               <li><div class="heart">
                     <img alt="heart" src="../../../../resources/image/cafe/heart.png"
                        class="heartpng"> 내가 누를 좋아요 1개
                  </div></li>
               <li><div class="cafe-write-btn">
                     <a href="#" class="joinbnt" onclick="joinCafe();return false;">카페
                        가입하기</a>
                  </div></li>
            </ul>
         </div>
         <!-- profile end -->
         <hr>
         <br>
      </div>
      <!-- myinfo end -->

      <div class="sbmenu">
         <div>
            <a href="#" class="nick">카페 모임 일정</a>
         </div>
         <br>
         <div>
            <a href="#" class="nick">조행기</a>
         </div>
         <br>
         <div>
            <a href="#" class="nick">게시판</a>
         </div>
         <br>
         <div>
            <a href="#" class="nick">카페 랭킹</a>
         </div>
         <br>
         <div class="cafe-write-btn">
            <a href="#" id="frombnt">카페 탈퇴하기</a>
         </div>
      </div>
      <!--sbmenu  -->
   </div>
   <!-- menu end -->

   <div class="menucontent">
      <br>
      <div id="intro">
         <img alt="photo" src="../../../../resources/image/cafe/카페사진.jpg"
            class="cafephoto"><br>
         <br> <br>
         <div id="cafeintroduce">[경기] 카페 소개글</div>
         <br>
         <div id="cafeintroducecontent">
            <span>바다 곳곳 낚시를 사랑하는 분들이 모인 경기카페, 모두가 즐기는 낚시인 만큼 열정있는 사람들의
               모입입니다.<br> 1년에 6회 정도 정기 출조를 실시하고 있으며, 매월 지역마다 번개 출조와 번팅을 자주
               실시합니다.<br> 카페 內, 낚시 교실은 낚시를 처음 접하는 입문자에서 중급자까지 다양한 기술 자료를 보유하고
               있습니다. <br>낚시를 사랑하고 자연을 사랑하시는 분들은 회원이 꼭 되어 주세요. <br>평생을 같은
               취미로 여러분들 곁을 지켜 줄 친구와 같은 분들이 많이 계십니다
            </span>
         </div>
      </div>
      <br>

      <div id="contents">
         <div id="content1">
            <div id="cafeintroduce" style="display: block;">
               게시판 모아보기 <span
                  style="float: right; font-size: 15px; vertical-align: bottom;">
                  <a href="#"> 더보기 > </a>
               </span>
            </div>
            <br>

            <table class="boardtable">
               <tbody class="boardtbody">
                  <tr>
                     <td style="border-top: 2px solid darkred;">공지</td>
                     <td style="border-top: 2px solid darkred;">신입회원[필독]</td>
                     <td style="border-top: 2px solid darkred;">1,000</td>
                  </tr>
                  <tr>
                     <td>공지</td>
                     <td>신입회원[필독]</td>
                     <td>1,000</td>
                  </tr>
                  <tr>
                     <td>공지</td>
                     <td>신입회원[필독]</td>
                     <td>1,000</td>
                  </tr>
                  <tr>
                     <td>공지</td>
                     <td>신입회원[필독]</td>
                     <td>1,000</td>
                  </tr>
                  <tr>
                     <td>공지</td>
                     <td>신입회원[필독]</td>
                     <td>1,000</td>
                  </tr>
                  <tr>
                     <td>공지</td>
                     <td>신입회원[필독]</td>
                     <td>1,000</td>
                  </tr>
                  <tr>
                     <td>공지</td>
                     <td>신입회원[필독]</td>
                     <td>1,000</td>
                  </tr>
               </tbody>
            </table>
         </div>

         <div id="content2">
            <div id="cafeintroduce" style="display: block;">
               조행기 모아보기 <span style="float: right; font-size: 15px"> <a
                  href="#"> 더보기 > </a>
               </span>
            </div>
            <br>

            <div id="one">
               <div id="one2">
                  <img id="img" src="../../../../resources/image/cafe/카페사진.jpg">
               </div>
               <div id="one3">
                  <div id="one31">제목 재밌다</div>
                  <div id="one32">닉네임 별거없잖아?</div>
                  <div id="one33">2020년 7월 5일</div>
               </div>
            </div>
            <div id="one">
               <div id="one2">
                  <img id="img" src="../../../../resources/image/cafe/카페사진.jpg">
               </div>
               <div id="one3">
                  <div id="one31">제목 재밌다</div>
                  <div id="one32">닉네임 별거없잖아?</div>
                  <div id="one33">2020년 7월 5일</div>
               </div>
            </div>
            <div id="one">
               <div id="one2">
                  <img id="img" src="../../../../resources/image/cafe/카페사진.jpg">
               </div>
               <div id="one3">
                  <div id="one31">제목 재밌다</div>
                  <div id="one32">닉네임 별거없잖아?</div>
                  <div id="one33">2020년 7월 5일</div>
               </div>
            </div>
            <div id="one">
               <div id="one2">
                  <img id="img" src="../../../../resources/image/cafe/카페사진.jpg">
               </div>
               <div id="one3">
                  <div id="one31">제목 재밌다</div>
                  <div id="one32">닉네임 별거없잖아?</div>
                  <div id="one33">2020년 7월 5일</div>
               </div>
            </div>
         </div>
      </div>

   </div>

</div>
<!-- wrap end -->

<%@ include file="../layout/footer.jsp"%>
<!-- 모달  -->
   <div class="addmodal">
         <div class="cmodal-content">
            <span class="close-button" style="float: right;">X</span>
            <br><br>
            <div style="border: 1px solid #ccc;">
               <h3> 카페명 : "[카페 이름] "</h3>
            </div>
          <br>
            <h5 style="margin-top: 20px;">
            	카페에서 탈퇴하시겠습니까?<br>
 				* 카페탈퇴시 작성된 게시글은 자동으로 삭제되지 않습니다.<Br>
				탈퇴시 재가입은 불가능 합니다 </h5>
				<div style="border-bottom: 1px solid #ccc;margin-top: 20px;"></div><br>
            <button id="cancelbnt">Cancel</button>
            <button id="OKbnt">OK</button>
         </div>
      </div>
      
      
      
      <div class="OKmodal">
         <div class="cmodal-content">
            <span class="close-button2" style="float: right;">X</span>
            <br><br>
            <div style="border: 1px solid #ccc;">
               <h3> 카페명 : "[카페 이름] "</h3>
            </div>
          <br>
            <h5 style="margin-top: 20px;">
            	탈퇴되었습니다<br>
 				지금까지 이용해주셔서 감사힙니다 </h5>
				<div style="border-bottom: 1px solid #ccc;margin-top: 20px;"></div><br>
           
            <button id="OKbnt">OK</button>
         </div>
      </div>