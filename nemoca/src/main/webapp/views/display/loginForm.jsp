<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		background-color: rgb(255, 255, 255);
	}
	#grid {
		background-color: rgb(0, 0, 0);
		display: flex;
		justify-content: center;
		align-items: center;
		height: 100vh;
	}
	.box1 {
		width: 600px;
		height: 100vh;
		display: flex;
		justify-content: center;
		align-items: center;
	}
	.login {
		text-align: center;
		font-size: 28px;
		font-weight: bold;
	}
	.id {
		margin-top: 10px;
		padding-top: 5px;
		zoom: 1.8;
		font-size: 0.3em;
	}
	.loginb {
		margin-top: 10px;
		display: block;
		text-align: center;
	}
	button {
		width: 190px;
		height: 35px;
		background-color: black;
		color: white;
		font-weight: bold;
		margin: 0 auto;
	}
	.search {
		font-size: 5px;
		text-align: right;
		margin-top: 6px;
		text-align: center;
	}
	input::placeholder {
		font-size: 0.1em;
	}
</style>
</head>
<body>
	<div id="grid">
		<div class="box1">
		<div class="box2">
		<div class="login">로그인</div>
		<div class="id"><input type="text" name="id" required autofocus placeholder="아이디"></div>
		<div class="id"><input type="password" name="password" required autofocus placeholder="비밀번호"></div>
		<div class="loginb"><button type="submit">로그인</button></div>
		<div class="search"><a>아이디 찾기</a>&nbsp;|&nbsp;<a>비밀번호 찾기</a></div>
		</div>
		</div>
	</div>
</body>
</html>