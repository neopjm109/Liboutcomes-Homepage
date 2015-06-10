create database liboutcomes;

use liboutcomes;

-- 멤버 테이블
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 매뉴얼 테이블
CREATE TABLE `manual` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `writer_id` int(50) NOT NULL,
  `date` datetime NOT NULL,
  `contents` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- 데이터사이언스 테이블
CREATE TABLE `data_science` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL, -- 제목
  `content` text NOT NULL, -- 내용
  `filename` varchar(255) DEFAULT NULL, -- 파일명
  `writer` varchar(50) DEFAULT NULL, -- 글쓴이? 추후 수정
  `date` datetime NOT NULL, -- 날짜
  PRIMARY KEY(id)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;