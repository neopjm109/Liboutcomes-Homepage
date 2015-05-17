create database liboutcomes;

use liboutcomes;

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

CREATE TABLE `data_science` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL, -- 제목
  `content` text NOT NULL, -- 내용
  `fileName` varchar(255) DEFAULT NULL, -- 파일명
  `name` varchar(50) DEFAULT NULL, -- 글쓴이? 추후 수정
  `date` datetime NOT NULL, -- 날짜
  PRIMARY KEY(`id`)
);

-- 댓글 테이블
CREATE TABLE `comment` (
  `id`	int(11) NOT NULL AUTO_INCREMENT, 
  `board_id`	int(11) NOT NULL,
  `name`		varchar(15) NULL,
  `content`		text NULL,
  `date`		date NULL,
  PRIMARY KEY(id)
);
