<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>mini team project</title>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<style>
			h1 { text-align: center; padding-top: 20px; }
		</style>
	</head>
	<body>
		<h1>Welcome !</h1>
		<button type="button" class="joinPage-btn" id="joinPage-btn">회원가입</button>	  
		<button type="button" class="loginPage-btn" id="loginPage-btn">로그인</button>	
		<div style="text-align: center; padding-top: 50px">
			<button id="prd-btn">제품보기</button>
		</div>
		<script src="${cmm}/js/cmm.js"></script>
		<script>
			cmm.init(`${ctx}`)
			cmm.joinPage(`${ctx}`)
			cmm.loginPage(`${ctx}`)
		</script>
	</body>
</html>