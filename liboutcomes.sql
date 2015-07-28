create database liboutcomes;

use liboutcomes;

-- 멤버 테이블
CREATE TABLE `member` (
  `id`			int(11)			NOT NULL AUTO_INCREMENT,
  `email`		varchar(50)		DEFAULT NULL,
  `password`	varchar(50)		DEFAULT NULL,
  `name`		varchar(50)		DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 매뉴얼 테이블
CREATE TABLE `manual` (
  `id`			int(11)         NOT NULL AUTO_INCREMENT,
  `title`		varchar(255)	NOT NULL,
  `writer_id`	int(50)         NOT NULL,
  `writerName`	varchar(50)		NOT NULL,
  `date`		datetime		NOT NULL,
  `contents`	text			NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 데이터사이언스 테이블
CREATE TABLE `data_science` (
  `id`			int(11)			NOT NULL AUTO_INCREMENT,
  `title`		varchar(255)	NOT NULL, 
  `contents`	text			NOT NULL, 
  `filename`	varchar(255)	DEFAULT NULL, 
  `writer`		varchar(50)		DEFAULT NULL, 
  `date`		datetime		NOT NULL, 
  PRIMARY KEY(id)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 게시판 테이블
CREATE TABLE `board` (
  `num`			int(11)			NOT NULL AUTO_INCREMENT,
  `category`	varchar(50)		NOT NULL,
  `title`		varchar(255)	NOT NULL,
  `writerId`	int(50)			NOT NULL,
  `writerName`	varchar(50)		NOT NULL,
  `date`		datetime		NOT NULL,
  `contents`	text			NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;

-- 메뉴얼 댓글 테이블
CREATE TABLE `board_comment` (
  `num`			int(11)         NOT NULL AUTO_INCREMENT,
  `boardNum`	int(11)         NOT NULL,
  `writerId`	int(50)			NOT NULL,
  `writerName`	varchar(50)		NOT NULL,
  `date`		datetime		NOT NULL,
  `comment`		text			NOT NULL,
  PRIMARY KEY (`num`)
) ENGINE=MyISAM AUTO_INCREMENT=1 DEFAULT CHARSET=utf8;


-- 샘플 값
insert into board values(1, 'library', '라이브러리 글 제목 테스트', 11, '글쓴이 테스트', '2015-07-03', '글 내용 테스트');
insert into board values(2, 'menual', '메뉴얼 글 제목 테스트', 11, '글쓴이 테스트', '2015-07-03', '글 내용 테스트');
insert into board values(3, 'reference', '적용사례 글 제목 테스트', 11, '글쓴이 테스트', '2015-07-03', '글 내용 테스트');
insert into board_comment values(1, 1, 11, '댓글 글쓴이 테스트', '2015-07-03', '댓글 내용 테스트');
