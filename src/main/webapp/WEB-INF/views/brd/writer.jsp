<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<h1>글쓰기</h1>
<form> 
<body>
<p><label>제목</label><input type="text" id ="title"></p>
<label>내용</label><p>
<textarea rows="15" cols="65" id = "content"></textarea><p>
	<button class="button" id="home-btn">Home</button>
	<button class="button" id="back">Back</button>

	<button type = "button" id="writ" class="button">등록</button>
</form>
</body>


</html>
<script src="${board}/js/brd.js"></script>
<script src="${cmm}/js/cmm.js"></script>
<script>
brd.back(`${ctx}`)
brd.writer(`${ctx}`)
cmm.home(`${ctx}`)
</script>