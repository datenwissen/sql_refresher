show user;

-- CREATE TABLE country
create table country
(ccode number PRIMARY KEY,
cname varchar2(50),
ccurr varchar2(20));

-- CREATE TABLE user0
create table user0
(id varchar2(20) PRIMARY KEY,
name varchar2(30),
ccode number,
age number,
sex char(1));

-- ADD CONSTRAINT: foreign key to TABLE user0
alter table user0
add constraint fk_ccode foreign key(ccode) 
    references country(ccode);
    
desc user0;

-- To view CONSTRAINTS
select constraint_name,table_name
from all_constraints
where table_name = upper('user0');

show user;

-- 
desc user_tables;

--
select * from user_tables;

--
select table_name from user_tables;

-- DROP TABLE many tables
select 'DROP TABLE: "' || table_name 
        || '" cascade constraints' drop_syntax
from user_tables;

commit;