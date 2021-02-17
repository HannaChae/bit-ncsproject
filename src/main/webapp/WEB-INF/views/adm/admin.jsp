<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>


<h1>관리자</h1>
<button class="button" id="manage-btn">회원관리</button>
<button class="button" id="regiPage-btn">회원등록</button>
<button class="button" id="delPage-btn">삭제</button>

<script src="${adm}/js/adm.js"></script>
<script>
adm.manage(`${ctx}`)
adm.regiPage(`${ctx}`)
adm.delPage(`${ctx}`)
</script>