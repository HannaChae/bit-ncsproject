<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>



   <h1>글 목록</h1>
    <table id="tab" >
        <thead>
            <tr>
                <th style="width:20%" class="text-center">글번호</th>
                <th style="width:20%" class="text-center">제목</th>
                <th class="text-center">등록 시간</th>
    </table>
    <button class="button" id="home-btn">Home</button>
    <button class="button" id="back">Back</button>
    <script src="${cmm}/js/cmm.js"></script>
    <script src="${board}/js/brd.js"></script>
    <script>
    cmm.home(`${ctx}`)
    brd.back(`${ctx}`)
	brd.list(`${ctx}`)
    </script>