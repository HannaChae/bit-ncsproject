<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


   <h1> 글 내용 </h1>
     <tr><th style="width: 10%" >글번호: <span id="boardNum"></span></th></tr>
    <tr><th style="width: 10%" >작성시간: <span id="writtenDate"></span></th></tr>      
    <tr><th style="width: 10%" class="text-center">제목: <span id="boardTitle"></span></th></tr>
     <table class="tab">
        <thead>
             <tr><td colspan="4" style="width: 50%">
             		내용:
                  <div id="boardContent" style="height: 300px">
                      
                  </div>
                
            </tr>
        </thead>

    </table>
	<button class="button" id="home-btn">Home</button>
	<button class="button" id="back">Back</button>
	<button class="button" id="update">수정하기</button>
	<button class="button" id="delete">삭제하기</button>
<script src="${cmm}/js/cmm.js"></script>
<script src="${board}/js/brd.js"></script>
<script>
cmm.home(`${ctx}`)
brd.back(`${ctx}`)
brd.det(`${ctx}`)
</script>