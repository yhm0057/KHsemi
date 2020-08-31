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
	
	//검색 버틀 클릭
	$("#btnSearch").click(function() {
		location.href="/admin/placelist?search="+$("#search").val();
	});

});
</script>

<script type="text/javascript">
$(document).ready(function() {
	
	$("input[name='checkRow']").change(function(){
		if( $("input[name='checkRow']:checked").length > 5 ) {
			alert('5개 이하만 선택하세요')
			
			$(this).prop("checked", false);
		}
	})
	

	
	// 선택체크 픽하기
	$("#btnPick").click(function() {
		// 선택된 체크박스
		var $checkboxes = $("input:checkbox[name='checkRow']:checked");
		
		//방법2
		// 체크된 대상들을 map으로 만들고 map을 문자열로 만들기
		var map = $checkboxes.map(function() {
			return $(this).val();
		});
		var names = map.get().join(",");
		
if( $("input[name='checkRow']:checked").length > 5 ) {
	alert('nono')
	return false;
}
	
// 			console.log($checkboxes);
// 			console.log( "map:" + map );	// 맵
// 			console.log( "map->array : " + map.get() );	// 맵->배열
// 			console.log( "array tostring : " + map.get().join(",") ); // toString
		
		// 전송 폼
		var $form = $("<form>")
			.attr("action", "/admin/listPick")
			.attr("method", "post")
			.append(
				$("<input>")
					.attr("type", "hidden")
					.attr("name", "names")
					.attr("value", names)
			);
			
		console.log("$form : " + $form);
		
		$(document.body).append($form);
		$form.submit();
	
	});
	
	
	// 선택체크 삭제
	$("#Pickdelect").click(function() {
		// 선택된 체크박스
		var $checkboxes = $("input:checkbox[name='checkRow']:checked");
		

		//방법2
		// 체크된 대상들을 map으로 만들고 map을 문자열로 만들기
		var map = $checkboxes.map(function() {
			return $(this).val();
		});
		var names = map.get().join(",");
	//		console.log("names : " + names);
	
	//		console.log($checkboxes);
	//		console.log( "map:" + map );	// 맵
	//		console.log( "map->array : " + map.get() );	// 맵->배열
	//		console.log( "array tostring : " + map.get().join(",") ); // toString
		
	
		// 전송 폼
		var $form = $("<form>")
			.attr("action", "/admin/listPickdelect")
			.attr("method", "post")
			.append(
				$("<input>")
					.attr("type", "hidden")
					.attr("name", "names")
					.attr("value", names)
			);
		$(document.body).append($form);
		$form.submit();
	
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
	<br>
		
 <ul class="nav nav-tabs">
           <li role="presentation"><a href="/cafe/cafeManage1">메인관리</a></li>
           <li role="presentation" class="active"><a href="/cafe/cafeManage2">회원관리</a></li>
           <li role="presentation"><a href="#">랭킹관리</a></li>
         </ul>
					
						<br><br><br>
						
	<div class="boardmenu"><h4>community</h4></div><br>
	<table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
   <thead>
     
      <tr>
     	 <th style="background-color: #fafafa; color: #000000; width: 50px;"><h5>체크</h5></th>
         <th style="background-color: #fafafa; color: #000000; width: 50px;"><h5>번호</h5></th>
         <th style="background-color: #fafafa; color: #000000; "><h5>제목</h5></th>
         <th style="background-color: #fafafa; color: #000000;width: 100px;"><h5>작성자</h5></th>
         <th style="background-color: #fafafa; color: #000000; width: 100px;"><h5>작성 날짜</h5></th>
         <th style="background-color: #fafafa; color: #000000; width: 60px;"><h5>조회수</h5></th>
         <th style="background-color: #fafafa; color: #000000; width: 55px;"><h5>댓글</h5></th>
         <th style="background-color: #fafafa; color: #000000; width: 60px;"><h5>좋아요</h5></th>
      </tr>
   </thead>
   <tbody>
   	<tr>
     	<td><input type="checkbox" name="checkRow" value="${i.place.pno }"style="margin-top: 10px;" /></td>
         <th style="background-color: #fafafa; color: #000000; "><h5>1</h5></th>
         <th style="background-color: #fafafa; color: #000000;text-align: left;"><h5>test</h5></th>
         <th style="background-color: #fafafa; color: #000000;"><h5>정통여신</h5></th>
         <th style="background-color: #fafafa; color: #000000;"><h5>2020.08.03</h5></th>
         <th style="background-color: #fafafa; color: #000000;"><h5>9</h5></th>
         <th style="background-color: #fafafa; color: #000000; "><h5>2</h5></th>
         <th style="background-color: #fafafa; color: #000000; "><h5>1</h5></th>
     </tr>
     
      
   <c:forEach items="${boardList }" var="board">
      <tr>
         <td>${board.board.brno }</td>
         <td style="text-align: left;">
            <a href="/board/show?brno=${board.board.brno }"><span aria-hidden="true"></span>
               ${board.board.brtitle }
            </a>
         </td>
         <td>${board.user.id}</td>
         <td>${board.board.brdate }</td>
         <td>${board.board.brviewcnt }</td>
         <td>${board.cnt_comment }</td>
         <td>${board.board.brlike }</td>
      </tr>
   </c:forEach>
      <tr>
         <td colspan="8">
            <div class="btn-toolbar form-inline" role="toolbar" aria-label="Toolbar with button groups">
                <div class="input-group" id="searchdiv">
                     <input type="text" id="boardsearch" name="search" class="form-control" placeholder="검색어를 입력">
                     <span class="input-group-btn">
                       <button id="btnSearch" class="btn btn-default" type="button" style="background:white;">검색</button>
                     </span>
                 </div>
               <a href="/cafe/board/boardWrite" class="btn pull-right"  style="background:#6e72da; color:white;" type="sumbit">글쓰기</a>
               <ul class="pagination" style="margin: 0 auto;"></ul>
            </div>
         </td>
      </tr>
   </tbody>
</table>
<br>
<%@ include file="../../layout/paging.jsp"%>
</div><!-- menucontent end -->
</div><!-- wrap end -->


<%@ include file="../../layout/footer.jsp"%>
