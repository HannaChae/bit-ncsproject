<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
<form>
<h1>마이페이지</h1><button type="button" class="home-btn" id="home-btn">Home</button>
<button type="button" class="modifyPage-btn" id="modifyPage-btn">비밀번호 수정</button>
<button type="button" class="withdrawal-btn" id="withdrawal-btn">회원 탈퇴</button>
</form>
<script>
console.log(sessionStorage.getItem("memid"))
mem.home()
mem.modifyPage()
mem.withdrawal()
</script>
</body>
</html>