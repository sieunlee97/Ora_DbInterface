<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
	<style>
	table {border:1.5px solid black;}
	tr, th, td {border: 1px solid black;}
	div {text-align:center; margin-bottom:5px;}
	button {margin-top:5px;}
	</style>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<div>
<h3>회원등록</h3>
<form action="/memberInsert">
	<div>
		<label>아이디</label>
		<input name="userid" type="text" required />
		<label>암호</label>
		<input name="userpw" type="text" required />
	</div>
	<div>
		<label>이름</label>
		<input name="username" type="text" required />
		<label>이메일</label>
		<input name="email" type="text" required />
	</div>
	<div>
		<button type="submit">회원등록</button>
	</div>
</form>
<h3>회원리스트</h3>
<table>
	
</table>
</div>
</body>
</html>
