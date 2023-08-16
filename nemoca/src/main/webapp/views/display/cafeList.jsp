<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>nemoca</title>
<!-- <script type="text/javascript" src="/nemoca/js/jquery.js"></script> -->
<script type="text/javascript">
// 	$(document).ready(function() {
// 		location.href="cafeRankingList.Yo;
// 	}) 
</script>
<style>
.rankingTitle1{
	text-align: center;
	font-size: 60px;
	font-weight: 900;
	margin-top: 60px;
}
.rankingTitle2{
	text-align: center;
	font-size: 18px;
	margin-bottom: 60px;
}


.rankingList{
/* 	text-align: center; */
}
.rankingBox{
	margin: auto;
	display: flex;
	justify-content: center;
}

.rankingTop{
	height: 50px;
}
.rankingMiddle{
	height: 30px;
}
.rankingBottom{
	height: 50px;
}


.cafeImage{
	height: 300px;
	width: 300px;
}
.cafeName{
	font-size: 30px;
	font-weight: bold;
	
}
.cafeAddress{
	font-size: 20px;
}
.cafeGrade{

}
.cafeUrl{

}
.moreBox{
	text-align: center;
}


</style>
</head>
<body>
   <div class="rankingTitle">
      <div class="rankingTitle1">네모카 카페 랭킹</div>
      <div class="rankingTitle2">"nemoca 회원이 직접뽑은 순위 TOP 10!!"</div>
   </div>
   <hr>
   
   
   
	<div class="rankingList">
		<div class="rankingTop">&nbsp;</div>
		<c:forEach var="cafe" items="${cafeRankingList}">
			<div class="rankingBox">
				<table border="0">
					<tr>
						<td width="300px"></td>
						<td width="20px"></td>
						<td width="20px"></td>
						<td width="600px"></td>
						<td width="200px"></td>
					</tr1>
					<tr height="50px">
						<td rowspan="4">
							<img class="cafeImage" src="/nemoca/images/am.jpg">
						</td>
						<td>
							&nbsp;
						</td>
						<td colspan="2">
							<span class="cafeName">${cafe.cafe_like_rank}위. ${cafe.c_name}</span> <span>(평점: 4.8)</span>
						</td>
						<td>
							<span class="cafeGrade">★★★★☆</span>
						</td>
					</tr>
					<tr height="50px">
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
						<td vertical-align="top">
							<span class="cafeAddress">${cafe.c_addr}</span>
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr height="150px">
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
					</tr>
					<tr height="50px">
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							&nbsp;
						</td>
						<td>
							<span class="cafeUrl">[:카페 상세보기]</span>
						</td>
					</tr>
				</table>
				<div class="">
				</div>
			</div>
		</c:forEach>
		<div class="rankingMiddle">&nbsp;</div>
		<div class="moreBox">
			[:더보기]
		</div>
		<div class="rankingBottom">&nbsp;</div>
	</div>
</body>
</html>