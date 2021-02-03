<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>myPage</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>
<h1>마이페이지</h1><button type="button" class="home-btn" id="home-btn">Home</button>
<button type="button" class="update-btn" id="update-btn">비밀번호 수정</button>
<button type="button" class="delete-btn" id="delete-btn">회원 탈퇴</button>
<script src="${mem}/js/myPage.js"></script>
<script>
mem.home()
mem.update()
mem.delete()
</script>
</body>
</html>