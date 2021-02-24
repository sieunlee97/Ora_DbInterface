<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
<form name="form_insert" action="/member_insert">
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
	<form name="form_action" action="/member_update">
	<tr>
		<td><input name="userid" value="user2"></td>
		<td><input name="userpw" value="1234"></td>
		<td><input name="username" value="이시은"></td>
		<td><input name="email" value="user2@abc.com"></td>
		<td><input name="regdate" value="2021-02-24" readonly></td>
		<td><input name="updatedate" value="2021-02-24" readonly></td>
		<td>
			<button class="btn_update" type="button">수정</button>
			<button class="btn_delete" type="button">삭제</button>
		</td>
	</tr>
	</form>
</table>
</div>
<script>
$(document).ready(function(){
	$(".btn_update").on("click", function() {
		alert("수정버튼 클릭");
	});
	$(".btn_delete").on("click", function() {
		alert("삭제버튼 클릭");
	});
});
</script>
</body>
</html>
