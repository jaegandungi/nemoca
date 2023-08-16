<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
<style type="text/css">
.search {
	height: 500px;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
	background-color: cyan;
	background-image: url("/nemoca/images/13.png");
}

.mid {
	display: flex;
	justify-content: space-between;
}

.col {
	display: inline-block;
	text-align: justify;
	margin-top: 30px;
}

.card-body {
	position: absolute;
	/*color: white;*/
	text-align: center;
	top: 40%;
	left: 30%;
	
}

.list_the {
	margin-left: 20px;
}

.the {
	margin-right: 20px;
}

.search_css {
	width: 30%;
	height: 55px;
}

input {
	margin: 0;
	border-radius: 10px;
}

input[type="text"] {
	width: 70%;
	height: 100%;
	border: none;
	font-size: 1em;
	padding-left: 5px;
	font-style: oblique;
	display: inline;
	outline: none;
	box-sizing: border-box;
	color: black;
	box-shadow: 30px;
}

input[type=button] {
	width: 35%;
	height: 100%;
	background-color: lightgray;
	border: none;
	background-color: black;
	font-size: 1em;
	color: #042AaC;
	outline: none;
	display: inline;
	margin-left: -10px;
	box-sizing: border-box;
	right: -1px;
	top: 0;	
	 position: absolute;
	 color:white;
}

input[type=button]:hover {
	background-color: lightgray;
}
.search_css {
	position: relative;
}
</style>
</head>
<body>
	<div class="search">
		<fieldset class="search_css">
			<input type="text" value="검색어를 입력하세요"> <input type="button"
				value="검색">
		</fieldset>
	</div>
	<section class="all">
		<div class="mid">
			<h2 class="list_the">카페리스트</h2>
			<a class="the">더보기</a>
		</div>
		<div class="mycard container-fluid">
			<div class="row row-cols-1 row-cols-md-3 g-4">
				<div class="col">
					<div class="card h-100">
						<img src="/nemoca/images/coffee.PNG" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">디저트가 맛있는 카페 10선</h5>
							<p class="card-text">내용</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="/nemoca/images/coffee.PNG" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">디저트가 맛있는 카페 10선</h5>
							<p class="card-text">내용</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="/nemoca/images/coffee.PNG" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">디저트가 맛있는 카페 10선</h5>
							<p class="card-text">내용</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="/nemoca/images/coffee.PNG" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">디저트가 맛있는 카페 10선</h5>
							<p class="card-text">내용</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="/nemoca/images/coffee.PNG" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">디저트가 맛있는 카페 10선</h5>
							<p class="card-text">내용</p>
						</div>
					</div>
				</div>
				<div class="col">
					<div class="card h-100">
						<img src="/nemoca/images/coffee.PNG" class="card-img-top" alt="...">
						<div class="card-body">
							<h5 class="card-title">디저트가 맛있는 카페 10선</h5>
							<p class="card-text">내용</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>