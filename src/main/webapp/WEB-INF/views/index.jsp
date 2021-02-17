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
			.button {
			  background-color: #4CAF50;
			  border: none;
			  color: white;
			  padding: 15px 32px;
			  text-align: center;
			  text-decoration: none;
			  display: inline-block;
			  font-size: 16px;
			  margin: 4px 2px;
			  cursor: pointer;
			}
		</style>
	</head>
	<body>
		<h1>Welcome !</h1>
		<div style="text-align: center; padding-top: 50px">
			<button class="button" id="prd-btn">제품보기</button>
			<button class="button" id="joinPage-btn">회원가입</button>	  
			<button class="button" id="loginPage-btn">로그인</button>	
			<button class="button" id="brdPage-btn">게시판</button>
			<button class="button" id="admPage-btn">관리자</button>
		</div>
		<script src="${cmm}/js/cmm.js"></script>
		<script>
			cmm.init(`${ctx}`)
			cmm.joinPage(`${ctx}`)
			cmm.loginPage(`${ctx}`)
			cmm.brdPage(`${ctx}`)
			cmm.admPage(`${ctx}`)
		</script>
	</body>
</html>