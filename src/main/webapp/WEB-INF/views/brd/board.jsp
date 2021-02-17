<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<h1>게시판</h1>
 <button id="home-btn">Home</button>
 <button id="myPage-btn">Back</button>
 <button id="wri">글쓰기</button>
 <button id="wri-list">글 목록</button>
<script src="${board}/js/brd.js"></script>
<script src="${cmm}/js/cmm.js"></script>
<script src="${mem}/js/mem.js"></script>
<script>
cmm.home(`${ctx}`)
mem.myPage(`${ctx}`)
brd.wri(`${ctx}`)
brd.wriList(`${ctx}`)
</script>