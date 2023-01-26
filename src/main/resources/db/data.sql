insert into user_tb (username, password, email, created_at) values ('ssar', '1234', 'ssar@nate.com', now());
insert into user_tb (username, password, email, created_at) values ('monster', '1234', 'monster@nate.com', now());
insert into user_tb (username, password, email, created_at) values ('super', '1234', 'super@nate.com', now());

insert into board_tb (title, user_id, created_at) values ( '첫번째 글입니다', 1, now());
insert into board_tb (title, user_id, created_at) values ( '두번째 글입니다', 2, now());
insert into board_tb (title, user_id, created_at) values ( '세번째 글입니다', 3, now());
insert into board_tb (title, user_id, created_at) values ( '네번째 글입니다', 1, now());
insert into board_tb (title, user_id, created_at) values ( '다섯번째 글입니다', 2, now());
insert into board_tb (title, user_id, created_at) values ( '여섯번째 글입니다', 3, now());
insert into board_tb (title, user_id, created_at) values ( '일곱번째 글입니다', 2, now());
insert into board_tb (title, user_id, created_at) values ( '여덟번째 글입니다', 3, now());
insert into board_tb (title, user_id, created_at) values ( '아홉번째 글입니다', 1, now());
insert into board_tb (title, user_id, created_at) values ( '열번째 글입니다', 1, now());

commit;