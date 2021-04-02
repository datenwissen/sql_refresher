show user;

alter user hr identified by 222222;

alter user hr identified by 123456;

-- ##############################

select * from dba_users;

select username,password from  dba_users;

select * from all_users;


-- ########################################
-- USER MANAGEMENT
-- ########################################

SHOW USER;

-- CREATE USER 'red'
CREATE USER red IDENTIFIED BY 111111;

-- CONNECT to USER 'red'
CONN red;

/*-- error
ORA-01045: user RED lacks 
CREATE SESSION privilege; logon denied
*/

-- GRANT
GRANT CONNECT,RESOURCE TO red;

-- REVOKE
revoke connect from red;

-- DROP USER with CASCADE
drop user red cascade;

-- quiz
create user green identified by 111111;
grant connect, resource to green;


-- 
select * from user_tables;

--
select table_name from user_tables;


-- DROP TABLE many tables
select 'DROP TABLE: "' || table_name 
        || '" cascade constraints' drop_syntax
from user_tables;

drop table "user0" cascade constraints;

-- #######################
-- Day 7
-- GRANT CREATE VIEW TO
-- #######################

show user;
create user nice identified by 111111;
grant connect, resource to nice;
grant create view to nice;

-- on command line
conn /as sysdba;
show user;
grant create view to nice;
