-- 모든 사용자 확인
select * from dba_users;

-- 현재 접속한 계정정보
select * from user_users;

select * from all_users;

-- 계정 생성
create user abc identified by "abc";

-- 권한 부여 (접속 권한)
grant create session to abc;

-- 권한 회수
revoke create session from abc;

-- role 제거
drop role reviewer;

-- role 생성(reviewer라는 role 생성)
create role reviewer;

-- 모든 테이블을 select 할 수 있는 권한을 role(reviewer)에 부여
grant select any table to reviewer;

-- role(reviewer)에 role(connect)을 추가
grant connect to reviewer;

-- 사용자 계정(abc)에 role을 부여
grant reviewer to abc;