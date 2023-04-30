--계정 생성
CREATE USER 'musthave'@'localhost' IDENTIFIED BY '1234';

--권한 부여
GRANT ALL PRIVILEGES ON *.* TO 'musthave'@'localhost';

--새 계정으로 오라클 접속
conn musthave/1234;

--테이블 목록 조회
select * from tab;

/*
설명 : 먼저 만들어둔 테이블을 삭제하고 새로 생성하려는 경우 실행해주세요.
*/
DROP TABLE member;
DROP TABLE board;
DROP SEQUENCE seq_board_num;



--[예제 5-1] 회원 테이블 생성
CREATE TABLE member (
id VARCHAR(10) NOT NULL,
pass VARCHAR(10) NOT NULL,
name VARCHAR(30) NOT NULL,
regidate DATETIME DEFAULT NOW() NOT NULL,
PRIMARY KEY (id)
);

--[예제 5-2] 모델1 방식의 게시판 테이블 생성
CREATE TABLE board (
num INT PRIMARY KEY AUTO_INCREMENT,
title VARCHAR(200) NOT NULL,
content VARCHAR(2000) NOT NULL,
id VARCHAR(10) NOT NULL,
postdate DATETIME DEFAULT NOW() NOT NULL,
visitcount INT
);

--[예제 5-3] 외래키 설정
ALTER TABLE board 
ADD CONSTRAINT board_mem_fk FOREIGN KEY (id)
REFERENCES member (id);

--[예제 5-4] 시퀀스 생성  오라클만
create sequence seq_board_num 
    increment by 1
    start with 1
    minvalue 1
    nomaxvalue
    nocycle
    nocache;
    

--[예제 5-5] 더미 데이터 입력
INSERT INTO member (id, pass, name) VALUES ('musthave', '1234', '머스트해브');
INSERT INTO board (title, content, id, postdate, visitcount)
VALUES ('제목1입니다', '내용1입니다', 'musthave', NOW(), 0);