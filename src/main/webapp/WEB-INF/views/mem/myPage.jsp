<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<body>
<form>
<h1>마이페이지</h1>
<button type="button" class="button" id="home-btn">Home</button>
<button type="button" class="button" id="logout-btn">로그아웃</button>

<label for="password"><b>NEW PW</b></label>
<input type="password" placeholder="Enter new pw" id="password" required>
<button type="button" class="button" id="modify-btn">비밀번호 수정</button>
<button type="button" class="button" id="withdrawal-btn">회원 탈퇴</button>
</form>
<script src="${cmm}/js/cmm.js"></script>
<script src="${mem}/js/mem.js"></script>
<script>
cmm.home(`${ctx}`)
mem.info(`${ctx}`)
</script>
</body>
</html>