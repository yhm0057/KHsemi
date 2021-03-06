<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<c:import url="../layout/favicon.jsp" />

<title>자유게시판 글쓰기</title>
   <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="../../../css/board3/bootstrap.css">
<link rel="stylesheet" href="../../../css/board3/board.css">
   <meta charset="UTF-8">
   
<script src="/js/bootstrap.js"></script>
 
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

$(document).on("click", ".pic2", function() {
	  var file = $(this)
	    .parent()
	    .parent()
	    .parent()
	    .find("#file2");
	  file.trigger("click");
	})
$(document).on("change", "#file2", function() {
	  $(this)
	    .parent()
	    .find(".fc2")
	    .val(
	      $(this)
	        .val()
	        .replace(/C:\\fakepath\\/i, "")
	);
})

$(document).on("click", ".pic3", function() {
	  var file = $(this)
	    .parent()
	    .parent()
	    .parent()
	    .find("#file3");
	  file.trigger("click");
	})
$(document).on("change", "#file3", function() {
	  $(this)
	    .parent()
	    .find(".fc3")
	    .val(
	      $(this)
	        .val()
	        .replace(/C:\\fakepath\\/i, "")
	);
})
</script>

</head>
<body>

<body>
<c:import url="../layout/header.jsp" />
   <div class="container">
      <form method="post" action="/board/write" enctype="multipart/form-data">
         <table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
         <thead>
            <tr>
               <th colspan="3"><h4 class="board-Title">게시물 작성 양식</h4></th>
            </tr>
         </thead>
         <tbody>
            <tr>
               <td style="width: 110px;"><h5>아이디</h5></td>
               <td><h5>${id }</h5><input type="hidden" name="uno">
               </td>
            </tr>
            <tr>
               <td style="width: 110px;"><h5>글 제목</h5></td>
               <td>
                  <input class="form-control" type="text" maxlength="50" name="brtitle" placeholder="글 제목을 입력하세요.">
               </td>
            </tr>
            <tr>
               <td style="width: 110px;"><h5>글 내용</h5></td>
               <td>
                  <textarea class="form-control" id="brcontent" name="brcontent" placeholder="글 내용을 입력하세요."></textarea>
               </td>
            </tr>
            <tr>
               <td style="width: 110px;"><h5>파일 업로드</h5></td>
               <td colspan="2">
                  <input type="file" name="file1" class="file" id="file1">
                  <div class="input-group col-xs-12">
                     <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                     <input type="text" class="form-control input-lg fc1" disabled placeholder="파일을 업로드하세요">
                     <span class="input-group-btn">
                        <button class="browse btn btn-primary input-lg pic1" type="button"><i class="glyphicon glyphicon-search"></i>파일 찾기</button>
                     </span>
                  </div><br>
                  
                  
                  <input type="file" name="file2" class="file" id="file2">
                  <div class="input-group col-xs-12">
                     <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                     <input type="text" class="form-control input-lg fc2" disabled placeholder="파일을 업로드하세요">
                     <span class="input-group-btn">
                        <button class="browse2 btn btn-primary input-lg pic2" type="button"><i class="glyphicon glyphicon-search"></i>파일 찾기</button>
                     </span>
                  </div><br>
                  
				   <input type="file" name="file2" class="file" id="file3">
                  <div class="input-group col-xs-12">
                     <span class="input-group-addon"><i class="glyphicon glyphicon-picture"></i></span>
                     <input type="text" class="form-control input-lg fc3" disabled placeholder="파일을 업로드하세요">
                     <span class="input-group-btn">
                        <button class="browse btn btn-primary input-lg pic3" type="button"><i class="glyphicon glyphicon-search"></i>파일 찾기</button>
                     </span>
                  </div><br>
                  
               </td>
            </tr>         
         </tbody>
      </table>
   </form>
   <div style="text-align: right;">
      <button type="button" id="btnWrite" class="btn btn-primary">등록</button>
      <button type="button" id="btnCancel" class="btn btn-primary">취소</button>
   </div>
</div>

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

<c:import url="../layout/footer.jsp" />
</body>
</html>