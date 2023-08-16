-- 회원
drop table member cascade constraints;
select * from member;
CREATE TABLE member
(
 user_id   VARCHAR2(100) constraint member_user_id_PK PRIMARY KEY NOT NULL,
 name   VARCHAR2(100) NOT NULL,
 nickname   VARCHAR2(100) NOT NULL,
 email   VARCHAR2(100) NOT NULL,
 tel   VARCHAR2(100) NOT NULL,
 pass   VARCHAR2(100) NOT NULL,
 user_img   VARCHAR2(200) NULL,
 addr   VARCHAR2(100) NOT NULL,
 join_date   DATE NOT NULL,
 del   CHAR(1) default 'n' NOT NULL,
 del_date   DATE NOT NULL
);
select * from member;
insert into member values ('master', '관리자', '관리자_닉', 'master@master.com', '010-1111-1111', 1234, 'profile.png', 'address', sysdate, 'n', sysdate);
insert into member values ('user', '사용자', '사용자_닉', 'user@user.com', '010-2222-2222', 1234, 'profile.png', 'address', sysdate, 'n', sysdate);

-- 카페
drop table cafe;
CREATE TABLE CAFE
(
 c_no   NUMBER CONSTRAINT cafe_c_no_PK PRIMARY KEY NOT NULL,
 c_name   VARCHAR2(100) NOT NULL,
 c_addr   VARCHAR2(100) NOT NULL,
 c_loc   VARCHAR2(100) NOT NULL,
 c_tel   VARCHAR(100) NOT NULL,
 c_img1   VARCHAR2(200) NOT NULL,
 c_img2   VARCHAR2(200),
 c_img3   VARCHAR2(200),
 c_menu1   VARCHAR2(200) NOT NULL,
 c_menu2   VARCHAR2(200),
 c_menu3   VARCHAR2(200),
 c_join_date   DATE NOT NULL,
 c_del   CHAR(1) default 'n' NOT NULL,
 c_del_date   DATE NOT NULL,
 c_readcount NUMBER NOT NULL,
 user_id   VARCHAR2(100) constraint cafe_user_id_fk references member(user_id) NOT NULL
);
select * from cafe;
insert into CAFE (c_no, c_name, c_addr, c_loc, c_tel, c_img1, c_menu1, c_join_date, c_del, c_del_date, c_readcount, user_id)
 values(1,'스타벅스 야당점','경기도 파주시 야당동 365길 어딘가 1층','파주','010-1111-1111','cafeimg1.jpg','cafemenu1.jpg',sysdate,'N',sysdate,0,'master');

insert into CAFE (c_no, c_name, c_addr, c_loc, c_tel, c_img1, c_menu1, c_join_date, c_del, c_del_date, c_readcount, user_id)
 values(2,'스타벅스 강남점','서울특별시 강남구 어딘가 1층','서울','010-1111-1111','cafeimg1.jpg','cafemenu1.jpg',sysdate,'N',sysdate,0,'master');

insert into CAFE (c_no, c_name, c_addr, c_loc, c_tel, c_img1, c_menu1, c_join_date, c_del, c_del_date, c_readcount, user_id)
 values(3,'스타벅스 잠실점','서울특별시 송파구 어딘가 1층','서울','010-1111-1111','cafeimg1.jpg','cafemenu1.jpg',sysdate,'N',sysdate,0,'master');

--카페 평점
drop table cafe_star;
CREATE TABLE cafe_star
(
 user_id   VARCHAR2(100) constraint cafe_star_user_id_fk references member(user_id) NOT NULL,
 c_no   NUMBER constraint cafe_star_c_no_fk references cafe(c_no) NOT NULL,
 grade   NUMBER NOT NULL,
 primary key(user_id, c_no)
);
select * from cafe_star;

-- 카페 좋아요!
drop table cafe_like;
CREATE TABLE cafe_like
(
 user_id   VARCHAR2(100) constraint cafe_like_user_id_fk references member(user_id) NOT NULL,
 c_no   NUMBER constraint cafe_like_c_no_fk references cafe(c_no) NOT NULL
);
select * from cafe_like;

-- 카페 리뷰
drop table cafe_re;
CREATE TABLE cafe_re
(
 cr_no   NUMBER constraint cafe_re_r_no_PK PRIMARY KEY NOT NULL,
 cr_content   VARCHAR2(500) NOT NULL,
 cr_reg_date   DATE NOT NULL,
 cr_del   CHAR(1) default 'n' NOT NULL,
 cr_del_date   DATE NOT NULL,
 user_id   VARCHAR2(100) constraint cafe_re_user_id_fk references member(user_id) NOT NULL,
 c_no NUMBER constraint cafe_re_c_no_fk references cafe(c_no) NOT NULL
);
select * from cafe_re;

-- 자유게시판
drop table board;
CREATE TABLE board
(
 b_no   NUMBER constraint board_b_no_PK PRIMARY KEY NOT NULL,
 b_writer   VARCHAR2(20) NOT NULL,
 b_subject   VARCHAR2(50) NOT NULL,
 b_img1   VARCHAR2(200) NOT NULL,
 b_img2   VARCHAR2(200),
 b_img3   VARCHAR2(200),
 b_content   VARCHAR2(500) NOT NULL,
 b_pass   VARCHAR2(100) NOT NULL,
 b_reg_date   DATE NOT NULL,
 b_del   CHAR(1) default 'n' NOT NULL,
 b_readcount   NUMBER NOT NULL,
 user_id   VARCHAR2(100) constraint board_User_ID_fk references member(user_id) NOT NULL
);
select * from board;

-- 자유게시판 좋아요!
drop table board_like;
CREATE TABLE board_like
(
 user_id   VARCHAR2(100) constraint board_like_user_id_fk references member(user_id) NOT NULL,
 b_no   NUMBER constraint board_b_no_fk references board(b_no) NOT NULL
);
select board_like;

-- 자유게시판 댓글
drop table board_re;
CREATE TABLE board_re
(
 board_re_no NUMBER constraint board_re_board_re_no_PK PRIMARY KEY NOT NULL,
 user_id   VARCHAR2(100) constraint board_re_user_id_fk references member(user_id) NOT NULL,
 b_no   NUMBER constraint board_re_b_no_fk references board(b_no) NOT NULL,
 br_content   VARCHAR2(300) NOT NULL,
 br_ref   NUMBER NOT NULL,
 br_ref_level   NUMBER NOT NULL,
 br_ref_step   NUMBER NOT NULL,
 br_reg_date   DATE NOT NULL,
 br_del   CHAR(1) default 'n' NOT NULL
);
select * from board_re;
