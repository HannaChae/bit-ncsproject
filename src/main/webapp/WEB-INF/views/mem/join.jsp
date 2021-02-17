<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<body>
<form>
<h1>회원가입</h1><button type="button" class="home-btn" id="home-btn">Home</button>
<label for="memid"><b>ID</b></label>
<input type="text" placeholder="Enter ID" id="memid" required>
<label for="password"><b>PW</b></label>
<input type="password" placeholder="Enter pw" id="password" required>
<button type="button" class="join-btn" id="join-btn">완료</button>
</form>
<script src="${cmm}/js/cmm.js"></script>
<script src="${mem}/js/mem.js"></script>
<script>
cmm.home(`${ctx}`)
mem.join(`${ctx}`)
</script>
</body>
</html>