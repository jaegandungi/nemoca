<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="deco" uri="http://www.opensymphony.com/sitemesh/decorator" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css2?family=Diphylleia&display=swap');
	/* font-family: 'Diphylleia', serif; */
* {
  box-sizing: border-box;
  margin: 0;
  padding: 0;
}

body {
  font-family: "굴림 보통";
  background: #fff;
  color: #000;
  font-size: 15px;
  line-height: 1.5;
}

a {
  color: #262626;
  text-decoration: none;
}

ul {
  list-style: none;
}


/* Nav */
.main-nav {
  display: flex;
  align-items: center;
  justify-content: space-between;
  height: 60px;
  padding: 20px 0;
  font-size: 13px;
}



.main-nav ul { /* 메인 메뉴 이거 있어야 오른쪾으로 나란히 됨 */
  display: flex;
}

.main-nav ul li { /* 지우지 말자  */
  padding: 0 10px;
}




.main-nav ul.main-menu { /* 여기에 넣으면 메인 글자 바뀜 */
  font-family: 'Diphylleia', serif;
  font-weight:bold;
  flex: 1;
  margin-left: 30px;
  font-size: 20px;
}




@media(max-width: 700px) {
  .main-nav ul.main-menu {
    display: block;
    position: absolute;
    top:0;
    left: 0;
    background: #f2f2f2;
    width: 50%;
    height: 100%;
    border-right: #ccc 1px solid;
    opacity: 0.9;
    padding: 30px;
    transform: translateX(-500px);
    transition: transform 0.5s ease-in-out;
  }
}


</style>
</head>
<body>
<header><br>
<nav class="main-nav">
		<a class="main-nav" href="/nemoca/views/display/main.Ha"> <img
			src='/nemoca/images/home_logo.png'>
		</a>
		<ul class="main-menu">
			<li><a class="head" href="/nemoca/views/display/cafeList.Ha">
			<img src='/nemoca/images/coffee.PNG' width="40px">카페 구경하기</a>
			<li><a class="head" href="/nemoca/views/display/boardMain.Ha">
			<img src='/nemoca/images/coffee.PNG' width="40px">게시판</a></li>
			<li><a class="head" href="twice.jsp">
			<img src='/nemoca/images/coffee.PNG' width="40px">마이페이지</a></li>
		</ul>
		 <ul class="right-menu">
        <li>
          <a href="/nemoca/views/display/loginForm.Ha">
            <i class="fas fa-shopping-cart"><img src='/nemoca/images/login2.PNG' width="40px"></i>
          </a> 
        </li>
      </ul>
      </nav>
	</header> 
	<hr><hr>
</body>
</html>