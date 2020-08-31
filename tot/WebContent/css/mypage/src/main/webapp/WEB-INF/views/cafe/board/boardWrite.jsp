<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../../layout/header.jsp"%>

<link href="../../../../resources/css/cafe/board.css" rel="stylesheet"
	type="text/css" media="all" />

<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<!-- 네이버 스마트 에디터2 라이브러리  -->
<script type="text/javascript"
	src="/resources/se2/js/service/HuskyEZCreator.js" charset="utf-8"></script>

<!-- <form>태그의 submit을 수행하면 editor에 작성한 내용을 <textarea>에 반영 -->
<script type="text/javascript">
function submitContents(elClikedObj) {
   
   //에디터의 내용을 #content에 반영
   oEditors.getById["brcontent"].exec("UPDATE_CONTENTS_FIELD", []);
   
   try {
      
      
      elClikedObj.form.submit();
      
      
   } catch(e) {
      
   }
   
   
}
</script>

<script type="text/javascript">
$(document).ready(function() {
   
	console.log("aaa");
	
   //작성버튼 동작
   $("#btnWrite").click(function() {
      
      //스마트에디터의 내용을 <textarea>에 적용하는 함수 호출
      submitContents($("#btnWrite"));
      
      //<form>태그 submit
      $("form").submit();
      
   });
   
   //취소버튼 동작
   $("#btnCancel").click(function() {
      history.go(-1);
   });
   
});

$(document).on("click", ".pic1", function() {
	  var file = $(this)
	    .parent()
	    .parent()
	    .parent()
	    .find("#file1");
	  file.trigger("click");
	})
$(document).on("change", "#file1", function() {
	  $(this)
	    .parent()
	    .find(".fc1")
	    .val(
	      $(this)
	        .val()
	        .replace(/C:\\fakepath\\/i, "")
	);
})



$(document).ready(function(){ 
	var fileTarget = $('.filebox .upload-hidden'); 
	fileTarget.on('change', function(){ // 값이 변경되면 
		if(window.FileReader){ // modern browser 
		var filename = $(this)[0].files[0].name; 
		} else { // old IE 
		var filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출 
		} // 추출한 파일명 삽입 
		$(this).siblings('.upload-name').val(filename); 
		}); 
	});
</script>




<div class="wrap">
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
							<img alt="profile"
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
			<form method="post" action="#"
				enctype="multipart/form-data">
				<table class="table" style="padding: 0px; border: none;">
					<thead>
						<tr>
							<th colspan="3" style="border: none;"><h4 class="board-Title">게시판 글쓰기</h4></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td style="width: 110px; border: none;"><h5>카테고리</h5></td>
							<td style="border: none;">
							<div class="boardradio" style="margin-left: 65px;">
									<input type='radio' id='QnA' name='board' value='QnA' />
									<label for="QnA">QnA</label>
							</div>
							<div class="boardradio">
        							<input type='radio' id='community' name='board' value='community' checked="checked"/>
        							<label for="community">community</label>
        					</div>
        					<div class="boardradio">
        							<input type='radio' id='notice' name='board' value='notice' />
        							<label for="notice">notice</label> 
        					</div>
        					
        					</td>
						</tr>
						<tr>
							<td style="width: 110px;"><h5>제목</h5></td>
							<td style="padding-left: 0px;"><input class="form-control" type="text" maxlength="50"
								name="brtitle" placeholder="제목을 입력하세요."></td>
						</tr>
						
						<tr>
							<td style="width: 110px;"><h5>작성자</h5></td>
							<td style="padding-left: 0px;"><h5>${nick }정통여신</h5>
								<input type="hidden" name="uno"></td>
						</tr>
						
						
						<tr>
						<td style="width: 110px;"><h5>첨부 파일</h5></td>
               			<td colspan="2" style="padding-left: 0px;">
                  		<input type="file" name="file1" class="file" id="file1">
                  		<div class="input-group col-xs-12">
                     	<span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                     	<input type="text" class="form-control input-lg fc1" disabled placeholder="파일을 업로드하세요" id="fileupload">
                     	<span class="input-group-btn">
                        <button class="browse btn btn-primary input-lg pic1" type="button" id="filebnt" ><i class="glyphicon glyphicon-search"></i>첨부파일</button>
                     	</span>
                  		</div>
						</tr>
						<tr>
							<td style="width: 110px; padding: 0px;"><h5>내용</h5></td>
							<td style="padding-left: 0px;padding-right: 5px;"><textarea class="form-control" id="brcontent"
									name="brcontent" placeholder="글 내용을 입력하세요." style="width: 100%;"></textarea></td>
						</tr>
					</tbody>
				</table>
			</form>
			</div>
			<div style="text-align: right;"><br>
			<button type="button" id="btnCancel" class="btn btn-primary">취소</button>
			<button type="button" id="btnWrite" class="btn btn-primary">등록</button>
				
			
	</div>
	<!-- menucontent end -->
<!-- 스마트 에디터 적용하는 코드 -->
<!-- <textarea>에 스마트 에디터의 스킨을 입히는 코드  -->
<script type="text/javascript">
var oEditors = [];
nhn.husky.EZCreator.createInIFrame({
   oAppRef: oEditors,
   elPlaceHolder: "brcontent", //에디터가 적용되는 <textarea>의 id를 입력
   sSkinURI: "/resources/se2/SmartEditor2Skin.html",
   fCreator: "createSEditor2"
})
</script>
</div>
</div>
<!-- wrap end -->

<%@ include file="../../layout/footer.jsp"%>

