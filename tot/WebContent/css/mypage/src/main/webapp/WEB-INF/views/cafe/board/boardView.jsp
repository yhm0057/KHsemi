<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>

<link href="../../../../resources/css/cafe/board.css" rel="stylesheet"
	type="text/css" media="all" />

<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	// 댓글 입력
	$("#btnCommInsert").click(function() {
		// 게시글 번호.... ${viewBoard.boardno }
// 			console.log($("#commentWriter").val());
			console.log($("#qna_con_content").val());
		
		$form = $("<form>").attr({
			action: "/admin/replyInsert",
			method: "post"
		}).append(
			$("<input>").attr({
				type:"hidden",
				name:"qnano",
				value:"${list['qna'].qnano }"
			})
		).append(
			$("<input>").attr({
				type:"hidden",
				name:"ano",
				value: 1
			})
		).append(
			$("<textarea>")
				.attr("name", "qna_con_content")
				.css("display", "none")
				.text($("#qna_con_content").val())
		);
		$(document.body).append($form);
		$form.submit();
		
	});
	
});

//댓글 삭제
function deleteComment(qnacmno) {
	console.log("delete");

	var delcheck = confirm("댓글 삭제하시겠습니까?");

	if(delcheck) {
	$.ajax({
		type: "post"
		, url: "/admin/replyDelete"
		, dataType: "json"
		, data: {
			qnacmno: qnacmno
		}
		, success: function(data){
			if(data.success) {
				
				$("[data-qnacmno='"+qnacmno+"']").remove();
				
			} else {
				alert("댓글 삭제 실패");
			}
		}
		, error: function() {
			console.log("error");
		}
	});
	}
}
</script>
<script type="text/javascript">
$(document).ready(function() {
	
	$("#detailheart").click(function() {	
		
		var i = $(this)
		
		if($(this).attr('src') == '../../../images/pl-heart-unpick.png') {

			$.ajax({
				type : 'POST'
				, url : "/addlikeplace" 
				, data : {placename : '${place.pname}'}
				, dataType: "json"
				, success : function(result){
					
					$(i).attr('src', "../../../images/pl-heart-pick.png");
					
				}
				, error: function() {
					console.log('AJAX fail')
				}
				
			})	
			} else if($(this).attr('src') == '../../../images/pl-heart-pick.png') {

				$.ajax({
					type : 'POST'
					, url : "/mypage/deletelikeplace" 
					, data : {placename : '${place.pname}'}
					, dataType: "json"
					, success : function(result){
						
						console.log('AJAX succ')
						$(i).attr('src', "../../../images/pl-heart-unpick.png");
					}
					, error: function() {
						console.log('AJAX fail')
					}
					
				})	
			} 
		
	});
});
</script>
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
   
   var modal = document.querySelector(".cancelmodal"); // 탈퇴 모달
   var mp1button = document.querySelector("#filebnt"); //탈퇴모달버튼

   
   $("#filebnt").click(function() {
      console.log("눌림");
      modal.classList.toggle("show-modal"); 
   });
   
   $("#edtb td").click(function() {
      modal2.classList.toggle("show-modal"); 
   });
   
   $(".close-button").click(function() {
      console.log("zzz")
      modal.classList.toggle("show-modal"); 
   });
   
   $(".close-button2").click(function() {
      modal2.classList.toggle("show-modal"); 
   });
   
   $(window).click(function(e) {
      if(e.target === modal) {
         modal.classList.toggle("show-modal"); 
      }
   })
})

</script>

<div class="wrap1">
	<div class="cafename">
		<img alt="카페 헤더" src="../../../../../resources/image/cafe/카페 헤더.PNG"
			class="cafename">
	</div>
	<br>
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
						src="../../../../../resources/image/cafe/profile.png"
						class="profilepng"></li>
					<li><a href="#" class="nick">정통여신</a>
						<div>가입 2020.07.17</div></li>
					<li><br>카페 매니저<img alt="crown"
						src="../../../../../resources/image/cafe/crown.png"
						class="crownpng"><br></li>
					<li><br>
						<div class="board">
							<img alt="board"
								src="../../../../../resources/image/cafe/board.png"
								class="boardpng"> 내가 쓴 글 1개
						</div></li>
					<li><div class="comment">
							<img alt="comment"
								src="../../../../../resources/image/cafe/comment.png"
								class="commentpng"> 내가 쓴 댓글 1개
						</div></li>
					<li><div class="heart">
							<img alt="heart"
								src="../../../../../resources/image/cafe/heart.png"
								class="heartpng"> 내가 누를 좋아요 1개
						</div></li>
					<li><div class="cafe-write-btn">
							<a href="#" class="joinbnt">게시판 글쓰기</a>
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
		</div>

	</div>
	<!-- menu end -->




	<div class="menucontent">
		
		<div class="con">


			<div class="ArticleContentBox" style=" padding: 29px 29px 5px;">
				<div class="article_header">
					<div class="ArticleTitle">
						<a href="#" class="link_board" >자유게시판 ></a>
						<div class="title_area" style="margin-top: 7px;">
							<h3 class="title_text" >{list['qna'].title }제목이지롱</h3>
						</div>
					</div>
					<div class="WriterInfo">
						<a href="#" class="thumb"> <img
							src="../../../../../resources/image/cafe/profile.png"
							alt="프로필 사진" width="36" height="36">
						</a>
						<div class="profile_area">
							<div class="profile_info" style="    margin-bottom: 6px;">
								<div class="nick_box">
									<a id="writerInfo" href="#" role="button" class="nickname">
										${comment.user.id }정통여신 </a>
									<!---->
								</div>
								<!---->
								<!---->
							</div>
							<div class="article_info">
								<span class="date">2020.07.17. 13:57</span> <span class="count">조회
									0</span>
							</div>
						</div>
					</div>
				</div>
				<div class="article_file">
					<table style="border-bottom: 1px solid #ccc;">
					<%-- 	<tr>
							<td><h5>첨부 파일</h5></td>
							<td><c:forEach items="${data.flist}" var="file">
									<button type="button"
										onclick="downloadFile('${file.originFileName}','${file.renameFileName}')">
										${file.originFileName}</button>
								</c:forEach>
						</tr> --%>
					</table>
				</div>
				<div class="article_container">
					<h1>${list['qna'].qcontent }안녕하새용<br>
						<br>낚시카페 사랑입니당~~~
					</h1>
					<img id="noticeimg" style="width: 600px; height: 400px;"
						src="<%=request.getContextPath() %>/upload/${list['p_imgview'].storedName }"
						alt="" style="cursor:pointer;" /> <img alt="게시글 사진"
						src="../../../../../resources/image/cafe/카페사진.jpg"
						style="width: 600px; height: 400px;">
				</div>
			</div>


			<%-- <table class="table" style="padding: 0px; border: none;">
					<tbody>
						
						
						<tr>
							<td style="width: 110px;"><h5>첨부 파일</h5></td>
               				<td colspan="2" style="padding-left: 0px;">
      							<c:forEach items="${data.flist}" var="file">
        	 						<button style="margin-left:1%;" type="button" 
               							onclick="downloadFile('${file.originFileName}','${file.renameFileName}')">
         								${file.originFileName}
         							</button>
     							</c:forEach>

						</tr>
						<tr>
							<td style="width: 110px; padding: 0px; vertical-align: middle;"><h5>내용</h5></td>
							<td style="padding-left: 0px;padding-right: 5px;"><h5>${list['qna'].qcontent }안녕하새용<br><br>dkdbfdsfsdfs</h5>
							<img id="noticeimg" style="width:600px; height:400px;" 
								src="<%=request.getContextPath() %>/upload/${list['p_imgview'].storedName }" alt="" style="cursor:pointer;"/>
							<img alt="게시글 사진" src="../../../../../resources/image/cafe/카페사진.jpg"style="width:600px; height:400px;" > 
							</td>
						</tr>
					</tbody>
				</table> --%>
		</div>
		<!-- 좋아요 목록삭제수정 버튼  -->
		<div style="text-align: right;">
			<br> <br>
			<div class="like">
				<c:if test="${likeplacebl eq false}">
					<img id="detailheart"
						src="../../../../resources/image/cafe/unlikeheart.png" alt="" />
				</c:if>
				<c:if test="${likeplacebl eq true}">
					<img id="detailheart" src="../../../images/likeheart.png" alt="" />
				</c:if>
				<img id="detailheart"
					src="../../../../resources/image/cafe/unlikeheart.png" alt="" />
				<!-- 임시 -->
				<span class="lname">좋아요</span> <span class="likecount">0 </span>
			</div>
			<div class="commentcnt">
				<span> 댓글</span> <span class="likecount">0</span>
			</div>

			<c:if test="${uno eq showBoard.uno }">
				<a href="/board/update?brno=${showBoard.brno }"
					class="btn pull-right"
					style="background: #6e72da; color: white; margin-left: 5px; margin-rigth: 5px;">수정</a>
				<a href="#" <%-- "/board/delete?brno=${showBoard.brno }" --%>
					class="btn pull-right" id="filebnt">삭제</a>
			</c:if>
			<a href="/cafe/board/boardList" class="btn pull-right"
				style="background: #6e72da; color: white; margin-right: 5px;">목록</a>

		</div>

		<br>
		<hr>
		<div class="comment_option">
			<h3 class="comment_title">댓글</h3>
		</div>


		<!-- 댓글 입력 폼 -->
		<div class="commentbox">
			<div class="commentconte">
				<em class="commentid">아이디</em> <input type="hidden" name="uno"
					value="uno"> <input type="hidden" name="brcmno"
					value="brcmno">

				<textarea data-v-79bd409c="" placeholder="댓글을 남겨보세요" rows="2"
					class="commentbox1"
					style="overflow: hidden; overflow-wrap: break-word; height: 35px;"></textarea>
			</div>
			<div class="commentwrite">
				<button id="btnCommInsert" type="submit" class="btn pull-right">등록</button>
			</div>
		</div>
		<br>

		<!-- 댓글 조회 -->
		<div style="padding-left: 20px; width: 750px;">
			<table style="text-align: center;">
				<tbody>
					<%-- <c:forEach items="${commentList }" var="comment"> 나중에 구현할때 주석풀기--%>
					<tr class="reply_detail" data-brcmno="${comment.comment.brcmno }">
						<td style="text-align: center;">
							<div style="width: 60px; height: 60px;">
								<img alt="profile"
									src="../../../../../resources/image/cafe/profile.png"
									id="profilepng">
							</div>
							<div>
								<h5 style="width: 110px; text-align: left;">${comment.user.id }정통여신</h5>
							</div>
						</td>
						<td><span style="padding-left: 550px;">${comment.comment.brdate }2020.08.04</span><br>
							<h5 style="display: inline-block;">${comment.comment.brcontent }안녕하세요</h5>
							<c:if test="${id eq comment.user.id }">
								<button type="button" class="btn pull-right"
									style="margin-top: 20px;"
									onclick="deleteComment(${comment.comment.brcmno});">&times</button>
							</c:if></td>
					</tr>


					<%-- </c:forEach> --%>
				</tbody>
			</table>
		</div>

	</div><!-- menucontent end -->
</div><!-- wrap end -->

<%@ include file="../../layout/footer.jsp"%>
<!-- 모달  -->
   <div class="cancelmodal">
         <div class="cmodal-content">
            <span class="close-button" style="float: right;">X</span>
            <br><br>
            <div style="border: 1px solid #ccc;">
               <h3> 게시판 삭제</h3>
            </div>
          <br>
            <h5 style="margin-top: 20px;">
            	정말로 삭제하시겠습니까?<br>
				(삭제된 페이지는 복원할 수 없습니다.)
				</h5>
				<div style="border-bottom: 1px solid #ccc;margin-top: 20px;"></div><br>
				<button id="OKbnt">OK</button>
            <button id="cancelbnt"class="close-button">Cancel</button>
            
         </div>
      </div>
