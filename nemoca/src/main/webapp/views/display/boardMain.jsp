<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Diphylleia&display=swap')
	;

.board_title {
	font-family: 'Diphylleia', serif;
	font-size: 60px;
	margin: auto;
	text-align: center;
	align-items: center;
	padding: 100px 0;
}
.steady-seller ul li{    width: 50%;    padding: 10px;}
.steady-seller{    margin-top: 50px;}
.steady-seller .row{    margin: 0 -10px;}
.steady-seller ul li div:first-child img{    border: 1px solid #efefef;}
.steady-seller ul li{    text-align:center;}
.steady-seller ul li .hit{    display:inline-block;}
.steady-seller .row .cell:nth-child(4n + 1){    clear:both;}
b{    color:grey;}
.steady-seller .prod-name{    font-size: 0.85rem;    font-weight: bold;}
.steady-seller .prod-spec{    font-size: 0.8rem;    margin: 4px 0;}
.steady-seller .review {    font-size: 0.7rem;    margin: 4px 0;}
.steady-seller .prod-price{
    font-size: 0.8rem;
    color: #f95959;
}
/* 폰트 적용 */
html {    font-family: "Noto Sans KR", sans-serif;}
body{    height: 1000px;}
/*노말라이즈*/
body, ul, li{    margin: 0;    padding: 0;    list-style:none;}
a{    text-decoration:none;    color:inherit;}
/*라이브러리*/
.clear-both{    clear:both;}
.con{    margin: 0 auto;}
.img-box > img{   width: 600px;  height: 300px; object-fit: cover}
.row::after{    content:"";    display:block;    clear:both;}
.cell{    float: left;    box-sizing:border-box;}
.cell-right{    float: right;    box-sizing: border-box;}
/*커스텀*/
.con{    width: 1152px;}
.con-min-width {    min-width: 1152px;}
</style>
</head>
<body>
	<div class="board_title">
		<img src='/nemoca/images/coffee.PNG' width="80px"> 게 시 판 <img
			src='/nemoca/images/coffee.PNG' width="80px">
	</div>
	
	<nav class="steady-seller con">
		<ul class="row">
			<li class="cell active-on-visible">
				<a href="boardView.Ha">
				<div class="img-box">
					<img src="/nemoca/images/cafe1.jpg" alt="">
				</div>
				<div class="prod-name">OT1696/Check Double Button Warm Lining
					Coat(누빔안감)</div>
			</a></li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe4.jpg" alt="">
				</div>
				<div class="prod-name">T3743/Snowflake Loose Round Knit Top</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe7.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe2.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			
			
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe3.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe5.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe8.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe9.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe1.jpg" alt="">
				</div>
				<div class="prod-name">OT1696/Check Double Button Warm Lining
					Coat(누빔안감)</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe4.jpg" alt="">
				</div>
				<div class="prod-name">T3743/Snowflake Loose Round Knit Top</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe7.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe2.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			
			
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe3.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe5.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe8.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
			<li class="cell active-on-visible">
				<div class="img-box">
					<img src="/nemoca/images/cafe9.jpg" alt="">
				</div>
				<div class="prod-name">SK1695/Knit Pleated Long Skirt</div>
			</li>
		</ul>
	</nav>
	
	
</body>
</html>