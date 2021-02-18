<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>





<h1>List</h1>
<button class="button" id="home-btn" href="#">Home</button>

<script src="${adm}/js/adm.js"></script>
<script src="${cmm}/js/cmm.js"></script>
<script>
adm.list(`${ctx}`)
cmm.home(`${ctx}`)
</script>