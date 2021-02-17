<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>





<h1>List</h1>
<button class="button" id="home" href="#">Home</button>
<table class="table table-hover">
	<thead>
		<tr>
			<th scope="col" class="text-center">email</th>
			<th scope="col" class="text-center">password</th>
			<th scope="col" class="text-center">ages</th>
			<th scope="col" class="text-center">level</th>
			<th scope="col" class="text-center">city</th>
			<th scope="col" class="text-center">address</th>
			<th scope="col" class="text-center">gender</th>
			<th scope="col" class="text-center">phone</th>
		</tr>
	</thead>
	<tbody id="tbody">

	</tbody>
</table>

<script src="${adm}/js/adm.js"></script>
<script src="${cmm}/js/cmm.js"></script>
<script>
adm.list(`#{ctx}`)
cmm.home(`#{ctx}`)
</script>