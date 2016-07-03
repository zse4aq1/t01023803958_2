<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<!-- 라이브러리명 : 폰트어썸 -->
<!-- 아이콘 라이브러리 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

<!-- 라이브러리명 : 노말라이즈 -->
<!-- 다양한 웹 브라우저 간 레이아웃, 디자인 평준화  -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/normalize/4.2.0/normalize.min.css">

<!-- 라이브러리명 : jQuery -->
<!-- 필수라이브러리 -->
<!-- 브라우저 마다 다른 자바스크립트 API 문제를 해결 -->
<!-- 브라우저가 기본적으로 제공하는 라이브러리 보다 훨씬 직관적인 API 제공 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<!-- 라이브러리명 : 부트스트랩  -->
<!-- UI 프레임워크 -->
<!-- 멋진 디자인을 쉽게 만들 수 있도록 도와준다. -->
<!-- 반응형 디자인 웹을 만들어 준다. -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.css">

<!-- 부트스트랩 -->
<!-- 부트스트랩은 js 와 css 파일이 한쌍이다. -->
<!-- 부트스트랩 js는 jQuery를 사용한다. 즉 jQuery 보다 밑에서 로드되어야 한다. -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>

<style>
input[name=todo] {
  background-color : cornflowerblue;
 }
</style>

</head>
<body>

<button class="btn btn-primary">버튼추가</button>
<!--이 버튼은 부트스트랩 -->
<i class="fa fa-floppy-o" aria-hidden="true"></i>
<h1>ToDo 할일리스트</h1>
<input type="text" name="todo">
<button class="btn btn-primary" name="add-btn">할일추가</button>

<ul class="main-list">
</ul>

<script>
var $addBtn = $('button[name=add-btn]');
$addBtn.on('click', function() {
  var $todoInput = $('input[name=todo]');

  $('.main-list').prepend('<li>' + $todoInput.val() + '<button class="btn  btn-danger" onclick="deleteBtnClicked(this);">삭제</button></li>');

  $todoInput.val($.trim($todoInput.val()));
  /* trim은 여백을 제거하는 함수이다. 필터링하듯 todoInput의 좌우여백을 없애며 스페이스만 입력했을 경우 여백이 제거되면 공란이므로 if문이 작동한다. */

  if ($todoInput.val() == '') {
    alert('내용을 입력해 주세요.');
    $todoInput.focus();
    return false;
  }

  $todoInput.val('');

});

function deleteBtnClicked(btn){
  $(btn).parent().remove();
}
</script> 



</body>
</html>