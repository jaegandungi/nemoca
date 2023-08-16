<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.container_top {
	width: 100%;
	height: 300px;
	overflow: hidden;
	position: relative;
	margin-top: 50px;
	text-align: center;
}

.container_top>img {
	object-fit: cover
}

.container_top .blackBox {
	width: 100%;
	height: 100%;
	position: absolute;
	z-index: 2;
	background: linear-gradient(rgba(0, 0, 0, 0), rgba(0, 0, 0, 0.6));
}
/* 타이틀 */
.container_top>h2 {
	position: absolute;
	bottom: 50px;
	left: 30px;
	color: #fff;
	z-index: 3;
}
/* 닉네임 | 작성날짜 */
.container_top>h5 {
	position: absolute;
	bottom: 30px;
	left: 30px;
	color: #fff;
	font-weight: 400;
	z-index: 4;
}
/* 내용 */
.contents {
	margin-top: 50px;
	text-align: center;
}

.contents pre {
	word-break: keep-all;
	white-space: pre-wrap;
	font-family: inherit;
}

.contents pre img {
	width: 100%;
}
/* 하단 버튼 영역 */
.container_bottom {
	margin-top: 120px;
	border-bottom: 1px solid #e4e4e4;
	padding: 0 0 50px;
}
/* 좋아요, 댓글 수 박스 */
.container_bottom>div>p {
	display: inline-block;
	padding: 3px;
}

.container_bottom>div>p>img {
	width: 26px;
	vertical-align: middle;
}

.container_bottom>div>p:first-child>img {
	cursor: pointer; . container_bottom >div>p>span { display : inline-block;
	font-size: 16px;
	vertical-align: middle;
	padding-right: 5px;
}

.container_bottom_left {
	float: left;
}

.container_bottom_right {
	float: right;
}
/* btn_small 재설정 */
.btn_small {
	display: inline-block;
	width: 60px;
	height: 34px;
	text-align: center;
	padding: 7px 0;
	margin-bottom: 0;
}
/* 게시글 끝 댓글 시작 ******************************************* */
/* 댓글 타이틀 */
.sub_title {
	font-size: 18px;
	font-weight: 700;
	padding: 25px 0;
}
/* 댓글 폼 */
textarea {
	display: block;
	width: 100%;
	height: 90px;
	border: 1px solid #000;
	outline: 0;
	font-size: 15px;
	padding: 10px 12px;
	line-height: 22px;
	font-family: 'Apple SD Gothic Neo', 'AppleSDGothicNeo';
	resize: none;
}

textarea::placeholder {
	color: #aaa;
}
/* submit 버튼 div */
.submit_box {
	text-align: center;
}
/* 댓글 입력 폼 제출 버튼 */
.reply_insert_frm .submit_box input {
	width: 50%;
	margin-top: 24px;
}
/* 댓글 목록 전체 div */
.reply {
	clear: both;
	border-top: 1px solid #e4e4e4;
}
/* 1개의 댓글 div */
.reply_list {
	border-bottom: 1px solid #e4e4e4;
}
/* 답글일 때 배경색 */
.bgcolorAdd {
	background: #fffdf9;
}

.re_reply_list_inner {
	display: inline-block;
	width: calc(100% - 45px);
	height: 148px;
	padding: 20px 0;
	position: relative;
}
/* 답글이 아닐 때 */
.reply_list_inner {
	display: inline-block;
	width: 100%;
	height: 148px;
	padding: 20px 0;
	position: relative;
}
/* 목록 상단 - 프로필, 닉네임, 버튼 */
.re_top {
	font-weight: 600;
}

.re_top img {
	width: 30px;
	border-radius: 50%;
	vertical-align: middle;
}
/* 수정/삭제 더보기 버튼 */
.updatebtn_area {
	display: inline-block;
	float: right;
	position: relative;
}

.updatebtn_area .more_btn {
	display: inline-block;
	width: 20px;
	cursor: pointer;
	padding-left: 9px;
}

.updatebtn_area .more_btn .dot {
	display: block;
	width: 2px;
	height: 2px;
	background-color: #333;
	border-radius: 50%;
	margin-bottom: 3px;
}

.updatebtn_area .more_area {
	display: none;
	position: absolute;
	top: 18px;
	right: 7px;
	width: 50px;
	font-size: 14px;
	font-weight: 500;
	text-align: center;
	border: 1px solid #e4e4e4;
	background: #fff;
}

.more_area_txt {
	display: block;
	line-height: 24px;
	cursor: pointer;
}

.more_area_txt:first-child {
	border-bottom: 1px solid #e4e4e4;
}

.re_con {
	clear: both;
	width: 90%;
	font-family: inherit;
	white-space: pre-wrap;
	margin: 8px 0 2px;
}

.re_date {
	font-size: 13px;
	color: #444;
	margin-bottom: 5px;
}
/* 답글, 좋아요 버튼 영역 */
.reply_btn_area {
	height: 30px;
}

.reply_btn_area>p {
	display: inline-block;
	height: 30px;
	line-height: 30px;
	cursor: pointer;
}
/* 답글 버튼 */
.re_reply_btn {
	border: 1px solid #e4e4e4;
	float: left;
	width: 45px;
	text-align: center;
	background: #fff;
}
/* 좋아요 버튼 */
.like_btn {
	float: right;
	padding: 0 5px;
}

.like_btn img {
	width: 28px;
	vertical-align: top;
}
/* 댓글 수정 폼 */
.reply_update_frm {
	display: none;
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 148px;
	background: #fff;
	padding: 10px;
}

.re_reply_list_inner .reply_update_frm {
	background: #fffdf9;
}

form .submit_box .btn_small {
	margin-top: 6px;
}
/* 답글 */
.re_reply {
	display: none;
	clear: both;
	height: 148px;
	padding: 10px;
	background: #fffdf9;
	border-top: 1px solid #e4e4e4;
}
/* └ 표시 */
.re {
	float: left;
	display: inline-block;
	border-left: 1px solid #aaa;
	border-bottom: 1px solid #aaa;
	width: 11px;
	height: 11px;
	margin: 17px;
}

.re_form {
	display: inline-block;
	width: calc(100% - 55px);
}
</style>
</head>
<body>
	<div class="container_middle">
		<!-- 상단 내용(썸네일, 타이틀, 닉네임, 날짜) -->
		<div class="container_top">
			<img alt="썸네일" src="/nemoca/images/cafe1.jpg">
			<p class="blackBox"></p>
			<h2>게시판 제목이야</h2>
		</div>

		<!-- 메인(textarea 내용) -->
		<div class="contents">
			<pre>게시글 내용이야@@@@@@@</pre>
			<!-- pre 태그 안에 있는 css 요소 삭제 -->

		</div>

		<!-- 하단 버튼 -->
		<div class="container_bottom">
			<div class="container_bottom_left">
				<p>
					<!-- 좋아요 -->
					<img onclick="sessionChk('like')" alt="하트"
						src="/nemoca/images/heart.png"> <span class="likes_cnt">딸러보드.라이크</span>
				</p>
				<p>
					<!-- 댓글 수 -->
					<img alt="댓글" src="/nemoca/images/comment.png"> <span>딸러리플조회수</span>
				</p>
			</div>

			<c:if test="${mno == board.mno}">
				<div class="container_bottom_right">
					<a href="boardUpdateForm.wo?bno=${board.bno}"
						class="btn btn_stroke btn_small">수정</a> <a onclick="delBoard()"
						class="btn btn_stroke btn_small">삭제</a>
				</div>
			</c:if>
		</div>

		<!-- 댓글 시작 -->
		<h4 class="sub_title">댓글 ${reply_cnt}</h4>

		<!-- 댓글 입력 폼 -->
		<form
			action="boardReplyWrite.wo?bno=${board.bno}&re_no=0&ref=0&ref_level=0&ref_step=0"
			method="post" class="reply_insert_frm">
			<pre>
				<textarea name="content" required onclick="sessionChk()"></textarea>
			</pre>
			<div class="submit_box">
				<input type="submit" class="btn" value="등록하기">
			</div>
		</form>
</body>
</html>