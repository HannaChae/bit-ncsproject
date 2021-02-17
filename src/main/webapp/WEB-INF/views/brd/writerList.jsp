<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



   <h1>글 목록</h1>
 
    <li><a id="home-btn" href="#">Home</a></li>
    <li><a id="back" href="#">Back</a></li>
    <table id="tab" >
        <thead>
            <tr>
                <th style="width:20%" class="text-center">글번호</th>
                <th style="width:20%" class="text-center">제목</th>
                <th style="width:20%" class="text-center">조회수</th>
    </table>
    <script src="${cmm}/js/cmm.js"></script>
    <script src="${board}/js/brd.js"></script>
    <script>
    cmm.home(`${ctx}`)
    brd.back(`${ctx}`)
	brd.list(`${ctx}`)
    </script>