create database liboutcomes;

use liboutcomes;

-- 멤버 테이블
CREATE TABLE `member` (
  `id`			int(11)			NOT NULL AUTO_INCREMENT,
  `email`		varchar(50) 	DEFAULT NULL,
  `password`	varchar(50) 	DEFAULT NULL,
  `name`		varchar(50) 	DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 매뉴얼 테이블
CREATE TABLE `manual` (
  `id`			int(11)			NOT NULL AUTO_INCREMENT,
  `title`		varchar(255)	NOT NULL,
  `writer_id`	int(50)			NOT NULL,
  `writerName`	varchar(50)		NOT NULL,
  `date`		datetime 		NOT NULL,
  `contents`	text			NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 데이터사이언스 테이블
CREATE TABLE `data_science` (
  `id`			int(11)			NOT NULL AUTO_INCREMENT,
  `title`		varchar(255)	NOT NULL, -- 제목
  `contents`	text			NOT NULL, -- 내용
  `filename`	varchar(255)	DEFAULT NULL, -- 파일명
  `writer`		varchar(50)		DEFAULT NULL, -- 글쓴이? 추후 수정
  `date`		datetime		NOT NULL, -- 날짜
  PRIMARY KEY(id)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 메뉴얼 댓글 테이블
CREATE TABLE `manual_comment` (
  `id`			int(11)			NOT NULL AUTO_INCREMENT,
  `board_id`	int(11)			NOT NULL,
  `writerName`	varchar(50)		NOT NULL,
  `date`		datetime 		NOT NULL,
  `comment`		text			NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

insert into manual values(1, '글 제목 테스트', 11, '글쓴이 테스트', '2015-07-03', '글 내용 테스트');

insert into manual_comment values(1, 1, '댓글 글쓴이 테스트', '2015-07-03', '댓글 내용 테스트');
