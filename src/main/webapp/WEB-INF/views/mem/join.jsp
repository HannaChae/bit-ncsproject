<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<body>
<form>
<h1>회원가입</h1><button type="button" class="home-btn" id="home-btn">Home</button>
<label for="memid"><b>ID</b></label>
<input type="text" placeholder="Enter ID" id="memid" required>
<label for="password"><b>PW</b></label>
<input type="password" placeholder="Enter pw" id="password" required>
<button type="button" class="join-btn" id="join-btn">완료</button>
</form>
<script>
$(`#home-btn`).click(function(){
	location.href = `../`
})
$(`#join-btn`).click(function(){
	mem.join
})
</script>
</body>
</html>