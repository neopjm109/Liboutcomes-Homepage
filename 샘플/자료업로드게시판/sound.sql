create database sound;
use sound;

CREATE TABLE member (
	id			varchar(20) not null,
	passwd		varchar(20) not null,
	name 		char(6) null,
	birth		char(6) null, 
	e_mail		varchar(30) null,
	phone		varchar(30) null,
	zipcode		char(7) null,
	address		varchar(60) null,
	power		int(2) null,

	CONSTRAINT pk_member PRIMARY KEY ( id )
);

CREATE TABLE board (
	boardNum	int(11) NOT NULL auto_increment ,
	name		varchar(15) NOT NULL,
	subject		varchar(50) NULL,
	content		text,
	fileName 	varchar(100) NOT NULL,
	regdate		date NULL,
	count		smallint(5) NULL,
	ip			varchar(15) NULL,
	mylike		int(11) NULL,
 
	CONSTRAINT pk_board PRIMARY KEY ( boardNum )
);
drop table board;


CREATE TABLE sound_comment (
	commentNum	int(11) NOT NULL auto_increment, 
	boardNum	int(11) NOT NULL,
	name		varchar(15) NULL,
	content		text NULL,
	regdate		date NULL,

	CONSTRAINT pk_comment PRIMARY KEY ( commentNum )
);
drop table sound_comment;


CREATE TABLE sound_like (
	likeNum		int(11) NOT NULL auto_increment,
	id			varchar(20) NOT NULL,
	boardNum	int(11) NOT NULL,

	CONSTRAINT pk_like PRIMARY KEY (likeNum),
	CONSTRAINT fk_like FOREIGN KEY (boardNum) REFERENCES board(boardNum)
);
drop table sound_like;




select * from member;
select * from board;
select * from board where subject like '%123%';
select * from sound_comment;
select * from sound_like;

update board set mylike = mylike+1 where boardNum=15;

insert into member (id, passwd, name, birth, e_mail, phone, zipcode, address, power) 
values ('hansung', '111', '박미현', '931218', 'ymj9312@naver.com', 
'010-123-4567', '123-456', '서울시 은평구', 1);

insert into member (id, passwd, name, birth, e_mail, phone, zipcode, address, power) 
values ('hansung5', '555', '이지아', '931218', 'ymj9312@naver.com', 
'010-123-4567', '123-456', '서울시 은평구', 1);

insert into member (id, passwd, name, birth, e_mail, phone, zipcode, address, power) 
values ('ymj9312', '123', '윤민정', '931218', 'ymj9312@naver.com', 
'010-123-4567', '123-456', '서울시 은평구', 1);

insert into member (id, passwd, name, e_mail, power) 
values ('Admin', 'admin', 'Admin', 'admin@sound.com', 0);

select boardNum from sound_like where id='hansung';
select * from board where boardNum in (select boardNum from sound_like where id='my');

delete from member where id='my';
delete from board where boardNum = 2;
delete from sound_like where boardNum = 13;

update board set mylike = 0 where boardNum=5;

select * from sound_like where id='hansung5' and boardNum=5;

