-- data dictionary
select * from dictionary;

select * from user_objects;

-- table 조회
select * from user_objects
where object_type = 'TABLE';

-- 현재 접속한 계정정보
select * from user_users;