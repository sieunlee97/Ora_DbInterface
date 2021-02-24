<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
	table {
		margin:0 auto; /*가운데 정렬*/
		border-collapse: collapse; /*테이블 경계 없애기*/
		border: 1.5px solid black;	
	}
	tr,th,td {border: 1px solid black; padding:5px;}
	div {text-align:center; margin-bottom:5px;}
	input {width:80px;}
	</style>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<div>
<h3>회원등록</h3>
<form name="form_insert" action="<c:url value='/' />member_insert" method="post">
	<div>
		<label>아이디</label>
		<input name="userid" type="text" required />
		<label>암호</label>
		<input name="userpw" type="text" required />
		<label>이름</label>
		<input name="username" type="text" required />
		<label>이메일</label>
		<input name="email" type="text" required />
		<button type="submit">회원등록</button>
	</div>
</form>
<h3>회원리스트</h3>
<table>
	<th>ID</th><th>암호</th><th>이름</th><th>이메일</th><th>등록일</th><th>수정일</th><th>수정/삭제</th>
	<c:forEach items="${memberList}" var="memberVO" varStatus="cnt">
	<form name="form_action" action="/member_update" method="post">
	<tr>
		<td><input name="userid" value="${memberVO.userid}"></td>
		<td><input name="userpw" value="${memberVO.userpw}"></td>
		<td><input name="username" value="${memberVO.username}"></td>
		<td><input name="email" value="${memberVO.email}"></td>
		<td><input name="regdate" value="<fmt:formatDate pattern='yyyy-MM-dd hh:mm:ss' value='${memberVO.regdate}'/>" readonly></td>
		<td><input name="updatedate" value="<fmt:formatDate pattern='yyyy-MM-dd hh:mm:ss' value='${memberVO.updatedate}'/>" readonly></td>
		<td>
			<button class="btn_update" type="button">수정</button>
			<button class="btn_delete" type="button">삭제</button>
		</td>
	</tr>
	</form>
	</c:forEach>
</table>
</div>
<script>
$(document).ready(function(){
	$(".btn_update").on("click", function() {
		//alert("수정버튼 클릭");
		$(this).parents("form[name='form_action']");
	});
	$(".btn_delete").on("click", function() {
		alert("삭제버튼 클릭");
	});
});
</script>
</body>
</html>
