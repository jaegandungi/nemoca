<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="container_middle">
		<!-- 상단 내용(썸네일, 타이틀, 닉네임, 날짜) -->
		<div class="container_top">
			<img alt="썸네일" src="../../upload/${board.thumbnail}">
			<p class="blackBox"></p>
			<h2>${board.title }</h2>
			<h5>${nick_nm} | ${board.reg_date }</h5>
		</div>

		<!-- 메인(textarea 내용) -->
		<div class="contents">
			<pre>${board.content }</pre>
			<!-- pre 태그 안에 있는 css 요소 삭제 -->
			<script type="text/javascript">
				$(".contents").find("*").css({
					"font-family" : "'Apple SD Gothic Neo', 'AppleSDGothicNeo'",
					"line-height" : "1.5em"
				});
				$(".contents").find("img").css("width", "100%");
			</script>
		</div>

		<!-- 하단 버튼 -->
		<div class="container_bottom">
			<div class="container_bottom_left">
				<p> <!-- 좋아요 -->
					<img onclick="sessionChk('like')" alt="하트" src="${imgSrc}">
					<span class="likes_cnt">${board.likes}</span>
				</p>
				<p> <!-- 댓글 수 -->
					<img alt="댓글" src="../../images/icons/comment.png">
					<span>${reply_cnt}</span>
				</p>
			</div>
			
			<c:if test="${mno == board.mno}">
				<div class="container_bottom_right">
					<a href="boardUpdateForm.wo?bno=${board.bno}" class="btn btn_stroke btn_small">수정</a>
					<a onclick="delBoard()" class="btn btn_stroke btn_small">삭제</a>
				</div>
			</c:if>
		</div>

		<!-- 댓글 시작 -->
		<h4 class="sub_title">댓글 ${reply_cnt}</h4>
		
		<!-- 댓글 입력 폼 -->
		<form action="boardReplyWrite.wo?bno=${board.bno}&re_no=0&ref=0&ref_level=0&ref_step=0" method="post" class="reply_insert_frm">
			<pre><textarea name="content" required onclick="sessionChk()"></textarea></pre>
			<div class="submit_box">
				<input type="submit" class="btn" value="등록하기">
			</div>
		</form>	
			
		<!-- 댓글 전체 목록 -->
		<div class="reply">
			<c:forEach var="reply" items="${list}">
				<!-- 1개의 댓글 -->			
				<c:if test="${reply.ref_level != 0 }"> <!-- 답글일 때 -->
					<div class="reply_list bgcolorAdd">
						<div class="re"></div>
						<div class="re_reply_list_inner">
				</c:if>
				<c:if test="${reply.ref_level == 0 }"> <!-- 답글이 아닐 때(그냥 댓글) -->
					<div class="reply_list">
						<div class="reply_list_inner">
				</c:if>
							<p class="re_top">
								<img alt="프로필" src="/semojeon/upload/${reply.profile}">
								<span>${reply.nick_nm}</span>
								<!-- 댓글의 mno와 세션의 mno가 같으면 수정/삭제 가능 -->
								<c:if test="${reply.mno == mno}">
									<span class="updatebtn_area">
										<span class="more_btn"> <!-- 더보기 버튼 -->
											<span class="dot"></span><span class="dot"></span><span class="dot"></span>
										</span>
										<span class="more_area">
											<span class="more_area_txt update_frm_show">수정</span>
											<span class="more_area_txt" onclick="delReply(${reply.re_no})">삭제</span>
										</span>
									</span><!-- updatebtn_area 끝 -->
								</c:if>
							</p><!-- re_top -->
							<!-- 내용, 날짜 -->	
							<pre class="re_con">${reply.content}</pre>
							<p class="re_date">${reply.reg_date}</p>
							
							<!-- 답글 버튼과 좋아요 버튼 영역 -->
							<div class="reply_btn_area">
								<p class="re_reply_btn">답글</p>
								<p class="like_btn like_btn${reply.re_no}">
									<img alt="좋아요" src="../../images/icons/heart.png" onclick="reLikes(${reply.re_no})">
									<span>${reply.likes}</span>
								
									<c:forEach var="rplikes" items="${list2}">
										<%-- 댓글번호 == 좋아요누른댓글번호 --%>
										<c:if test="${mno == rplikes.mno}">
											<%-- 세션회원번호 == 좋아요누른회원번호 --%>
											<c:if test="${reply.re_no == rplikes.re_no}">
												<script type="text/javascript">
													$(".like_btn" + ${reply.re_no} + " img").attr("src", "../../images/icons/heart-fill.png");
												</script>
											</c:if>
										</c:if>
									</c:forEach>
								</p>
							</div> <!-- reply_btn_area -->
							
							<!-- 댓글 수정 폼 -->
							<form action="boardReplyUpdate.wo?bno=${board.bno}&re_no=${reply.re_no}" method="post" class="reply_update_frm">
								<pre><textarea name="content" required onclick="sessionChk()">${reply.content}</textarea></pre>
								<div class="submit_box">
									<input type="submit" class="btn btn_small" value="수정">
									<p class="btn btn_small update_frm_hide" >취소</p>
								</div>
							</form>
						</div><!-- reply_list_inner 끝 -->
						
						<!-- 답글 입력 폼 -->
						<div class="re_reply">
							<div class="re"></div>
							
							<div class="re_form">
								<form  action="boardReplyWrite.wo?bno=${board.bno}&re_no=${reply.re_no}&ref=${reply.ref}&ref_level=${reply.ref_level}&ref_step=${reply.ref_step}" method="post" class="re_reply_insert_frm">
									<pre><textarea name="content" required onclick="sessionChk()"></textarea></pre>
									<div class="submit_box">
										<input type="submit" class="btn btn_small" value="입력">
										<p class="btn btn_small re_reply_frm_hide" >취소</p>
									</div>
								</form>
							</div><!-- re_form 끝 -->
						</div><!-- re_reply 끝 -->
					
					</div><!-- reply_list 끝 -->
			</c:forEach>
		</div><!-- reply 끝 -->
	</div>
	<div class="scroll_top"><div class="arrow"></div></div>
</body>
</html>