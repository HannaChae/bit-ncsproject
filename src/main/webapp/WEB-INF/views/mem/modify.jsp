<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 수정</title>
</head>
<body>
<form>
<h1>비밀번호 수정</h1>
<label for="memid"><b>ID</b></label>
<input type="text" placeholder="Enter ID" id="memid" required>
<label for="password"><b>NEW PW</b></label>
<input type="password" placeholder="Enter new pw" id="password" required>
<button type="button" class="modify-btn" id="modify-btn">확인</button>
<button type="button" class="cancel-btn" id="cancel-btn">취소</button>
</form>
<script>
mem.modify()
mem.cancel()
</script>
</body>
</html>