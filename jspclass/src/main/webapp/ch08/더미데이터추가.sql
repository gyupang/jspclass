--검색을 위한 데미데이터 추가 입력
insert into board
	values (seq_board_num.nextval, '지금은 봄입니다', '봄의왈츠', 'musthave', sysdate, 0);
insert into board
	values (seq_board_num.nextval, '지금은 여름입니다', '여름향기', 'musthave', sysdate, 0);
insert into board
	values (seq_board_num.nextval, '지금은 가을입니다', '가을동화', 'musthave', sysdate, 0);
insert into board
	values (seq_board_num.nextval, '지금은 겨울입니다', '겨울연가', 'musthave', sysdate, 0);		

commit;

--MYSQL
INSERT INTO board (title, content, id, postdate, visitcount)
VALUES ('지금은 봄입니다', '봄의왈츠', 'musthave', CURRENT_DATE(), 0);

INSERT INTO board (title, content, id, postdate, visitcount)
VALUES ('지금은 여름입니다', '여름향기', 'musthave', CURRENT_DATE(), 0);

INSERT INTO board (title, content, id, postdate, visitcount)
VALUES ('지금은 가을입니다', '가을동화', 'musthave', CURRENT_DATE(), 0);

INSERT INTO board (title, content, id, postdate, visitcount)
VALUES ('지금은 겨울입니다', '겨울연가', 'musthave', CURRENT_DATE(), 0);

COMMIT;