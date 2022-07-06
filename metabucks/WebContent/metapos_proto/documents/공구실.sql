create database gonggu;
use gonggu;

drop table notice;
drop table attach;
drop table records;
drop table stock;
drop table products;
drop table account;

create table account
(
 	account_no int primary key auto_increment comment '계정번호',
 	account_level 		VARCHAR(2) 	default 'U' 	 comment '계정권한',
 	account_flag 		VARCHAR(2) 	default 'D' 	 comment '계정활성여부',
 	employee_no 		VARCHAR(10) NOT NULL 		 comment '사원번호',
 	password 			VARCHAR(32) 				 comment '비번',
 	name 				VARCHAR(100) 				 comment '성명',
 	job_rank 			VARCHAR(100) 				 comment '직급',
 	job_title 			VARCHAR(100) 				 comment '직책',
 	div1 				VARCHAR(100) 				 comment '소속1',
 	div2 				VARCHAR(100) 				 comment '소속2',
 	display_name 		VARCHAR(100) 				 comment '표시이름'
);

create table products
(
 	product_id_no 	INTEGER primary key auto_increment comment '제품코드',
 	order_div 		VARCHAR(2)	 comment '발주구분',
 	product_div1 	VARCHAR(100) comment '품목',
 	product_div2 	VARCHAR(100) comment '품명',
 	product_spec1 	VARCHAR(100) comment '규격',
 	product_spec2 	VARCHAR(100) comment '세부규격',
 	unit 			VARCHAR(4) 	 comment '단위',
 	inbox 			INTEGER 	 comment '인입단위',
 	stock_start 	INTEGER 	 comment '시작재고',
 	stock_now 		INTEGER 	 comment '현재고',
 	stock_available INTEGER 	 comment '가용재고',
 	stock_min 		INTEGER 	 comment '최소재고',
 	stock_appro 	INTEGER 	 comment '적정재고',
 	order_min 		INTEGER 	 comment '최소발주수량',
 	order_set 		INTEGER 	 comment '발주단위',
 	order_time 		DATE 		 comment '최소입고소요시간',
 	stock_loc 		VARCHAR(2) 	 comment '보관장소'
);

create table stock
(
 	stock_num 			INTEGER primary key auto_increment comment '재고기록번호',
 	product_id_no 		INTEGER 					 comment '제품코드',
 	stock_date 			DATETIME 	default now()	 comment '작성일',
 	stock_writer_no 	INTEGER 					 comment '작성자',
 	stock_writer_name 	VARCHAR(100) 				 comment '작성자',
 	corrention_reason 	VARCHAR(2) 					 comment '구분',
 	correction_quantity INTEGER 					 comment '수량',
 	comment 			VARCHAR(100) 				 comment '사유',
 	foreign key (product_id_no) 	references products(product_id_no),
 	foreign key (stock_writer_no) 	references account(account_no)
);

create table records
(
 	record_no 		INTEGER primary key auto_increment comment '기록 번호',
 	account_no 		INTEGER 					 comment '계정 번호',
 	display_name 	VARCHAR(100) 				 comment '작성자',
 	record_date 	DATETIME 	default now()	 comment '작성일',
 	group_no 		INTEGER 					 comment '처리 그룹',
 	div_type 		VARCHAR(2) 					 comment '처리 종류',
 	product_id_no 	INTEGER 					 comment '제품코드',
 	time 			DATE 						 comment '시간',
 	quantity 		INTEGER 					 comment '수량',
 	location 		VARCHAR(2) 					 comment '장소',
 	comment 		text 						 comment '내용',
 	flag 			VARCHAR(2) 					 comment '상태',
 	foreign key (account_no) 	references account(account_no),
 	foreign key (product_id_no) references products(product_id_no)
);

create table notice
(
 	notice_no INTEGER primary key auto_increment comment '공지번호(PK)',
 	account_no 		INTEGER 					 comment '계정번호',
 	notice_date 	DATETIME 	default now()	 comment '작성일',
 	display_name 	VARCHAR(100) 				 comment '작성자',
 	notice_title 	VARCHAR(200) 				 comment '제목',
 	notice_comment 	text 						 comment '내용',
 	notice_hit 		INTEGER 					 comment '조회수',
 	foreign key (account_no) references account(account_no)
);


create table attach
(
 	attach_no INTEGER primary key auto_increment comment '첨부파일번호',
 	bbs_name 	VARCHAR(2) 	 comment '게시판 이름',
 	bbs_no 		INTEGER 	 comment '게시물 번호',
 	p_file_name VARCHAR(256) comment '물리이름',
 	l_file_name VARCHAR(256) comment '논리이름'
);

insert into account 
 ( employee_no, account_level, account_flag, password, name, job_rank, job_title, div1, div2, display_name) 
 values
 ( 'S123456', 'A', 'A', md5(1234), '홍길동', '과장', '공구장', '지원반', '공구실' , '공구장 홍길동');

insert into account 
 ( employee_no, account_level, account_flag, password, name, job_rank, job_title, div1, div2, display_name) 
 values
 ( 'S654321', 'A', 'A', md5(1234), '박길동', '부장', '소장', '관리자', '관리자', '소장 박길동');

insert into account 
 ( employee_no, account_level, account_flag, password, name, job_rank, job_title, div1, div2, display_name) 
 values
 ( 'S111111', 'U', 'A', md5(1234), '김길동', '과장', '반장', '자동', '1팀', '반장 김길동');
 
insert into records
 
  	record_no 		INTEGER primary key auto_increment comment '기록 번호',
 	account_no 		INTEGER 					 comment '계정 번호',
 	display_name 	VARCHAR(100) 				 comment '작성자',
 	record_date 	DATETIME 	default now()	 comment '작성일',
 	group_no 		INTEGER 					 comment '처리 그룹',
 	div_type 		VARCHAR(2) 					 comment '처리 종류',
 	product_id_no 	INTEGER 					 comment '제품코드',
 	time 			DATE 						 comment '시간',
 	quantity 		INTEGER 					 comment '수량',
 	location 		VARCHAR(2) 					 comment '장소',
 	comment 		text 						 comment '내용',
 	flag 			VARCHAR(2) 					 comment '상태',