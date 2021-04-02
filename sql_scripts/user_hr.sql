
-- ###################################
-- DAY 1
-- March 11, 2021
-- ###################################

SHOW USER;

SELECT
    *
FROM
    tab;

SELECT
    *
FROM
    countries;

CREATE TABLE sawon (
    name   VARCHAR2(30),
    grade  VARCHAR(10),
    job    NUMBER
);

SELECT
    *
FROM
    sawon; --comment

DESC sawon;

-- insert data
-- use single quotes
INSERT INTO sawon VALUES (
    'hong',
    'manager',
    10
);

INSERT INTO sawon VALUES (
    'lee',
    'employee',
    10
);

INSERT INTO sawon VALUES (
    'park',
    'ceo',
    20
);

INSERT INTO sawon (
    name,
    grade
) VALUES (
    "kim",
    "sales"
);

--create table: sawon2
CREATE TABLE sawon2 (
    name      VARCHAR2(20),
    grade     VARCHAR2(20),
    ibsadate  DATE DEFAULT sysdate
);

SELECT
    *
FROM
    sawon2;

DESC sawon2;

INSERT INTO sawon2 VALUES (
    'song',
    'mgr',
    sysdate
);

INSERT INTO sawon2 VALUES (
    'lee',
    'sales rep',
    TO_DATE('11/3/2019', 'DD/MM/YYYY')
);

COMMIT;

INSERT INTO sawon2 VALUES (
    'kim',
    'COO',
    TO_DATE('07/01/2015', 'DD/MM/YYYY')
);

INSERT INTO sawon2 (
    name,
    grade
) VALUES (
    'park',
    'accounting'
);

SELECT
    *
FROM
    sawon2;

CREATE TABLE sawon3 (
    empno     NUMBER,
    ename     VARCHAR2(20),
    job       VARCHAR2(20),
    mgr       NUMBER DEFAULT NULL,
    hiredate  DATE,
    sal       NUMBER,
    comm      NUMBER DEFAULT NULL,
    deptno    NUMBER
);

SELECT
    *
FROM
    sawon3;

INSERT INTO sawon3 VALUES (
    7369,
    'Smith',
    'Clerk',
    7902,
    TO_DATE('1980-12-17', 'YYYY-MM-DD'),
    800,
    NULL,
    20
);

-- (empno,ename,job,mgr,hiredate,sal,comm,deptno)
INSERT INTO sawon3 VALUES (7499,'Allen','Salesman',7698,TO_DATE('1981-02-20', 'YYYY-MM-DD'),1600,300,30);
INSERT INTO sawon3 VALUES (7521,'Ward','Salesman',7698,TO_DATE('1981-02-22', 'YYYY-MM-DD'),1250,500,30);
INSERT INTO sawon3 VALUES (7566,'Jones','Manager',7839,TO_DATE('1981-04-02', 'YYYY-MM-DD'),2975,NULL,20);
INSERT INTO sawon3 VALUES (7654,'Martin','Salesman',7698,TO_DATE('1981-09-28', 'YYYY-MM-DD'),1250,1400,30);
INSERT INTO sawon3 VALUES (7698,'Blake','Manager',7839,TO_DATE('1981-05-01', 'YYYY-MM-DD'),2850,NULL,30);
INSERT INTO sawon3 VALUES (7782,'Clark','Manager',7839,TO_DATE('1981-06-09', 'YYYY-MM-DD'),2450,NULL,10);
INSERT INTO sawon3 VALUES (7839,'King','President',NULL,TO_DATE('1981-11-07', 'YYYY-MM-DD'),2850,NULL,10);
INSERT INTO sawon3 VALUES (7844,'Turner','Salesman',7698,TO_DATE('1981-09-08', 'YYYY-MM-DD'),1500,0,30);
INSERT INTO sawon3 VALUES (7900,'James','Clerk',7698,TO_DATE('1981-12-03', 'YYYY-MM-DD'),950,NULL,30);
INSERT INTO sawon3 VALUES (7902,'Ford','Analyst',7566,TO_DATE('1981-12-03', 'YYYY-MM-DD'),3000,NULL,20);
INSERT INTO sawon3 VALUES (7934,'Miller','Clerk',7782,TO_DATE('1982-01-23', 'YYYY-MM-DD'),1300,NULL,10);


select * from sawon;

insert into sawon values('kim','accountant',40);
-- data not actually inserted into db before commit
commit;


-- ###################################
-- DAY 2
-- March 12, 2021
-- ###################################


select * from sawon3;

create table dept (
deptno NUMBER,
dname VARCHAR2(20),
loc VARCHAR2(20)
);

select * from dept;

drop table dept;

drop table sawon purge; -- without sending to Recyclebin

select * from tab;

show recyclebin;

purge recyclebin;

-- Primary Key

drop table sawon purge;

create table sawon (
sano number PRIMARY KEY,
saname VARCHAR2(20) not NULL,
saaddr VARCHAR2(100)
);

insert into sawon values (
10, 'hong1', 'seoul'
);
insert into sawon values (
20, 'hong2', 'busan'
);

commit;
select * from sawon;

insert into sawon values(10,'hong3', 'daejon'); -- 10 is duplicate, sano is PRIMARY KEY
insert into sawon values(20,'hong3', 'daejon'); -- 20 is duplicate, sano is PRIMARY KEY
insert into sawon values(30,NULL, 'daejon'); -- sanme is NOT NULL
insert into sawon values(30,'hong3', 'daejon');
insert into sawon (sano, saaddr) values(40,'incheon'); -- saname is NOT NULL

--
show user;

@c:\Users\Jieun\Downloads\empdept.sql;

select * from emp;
delete * from emp;

INSERT INTO EMP VALUES (7839,'KING','PRESIDENT',NULL,TO_DATE('81-11-17','YY-MM-DD'),5000,NULL,10);
INSERT INTO EMP VALUES (7698,'BLAKE','MANAGER',7839,TO_DATE('81-05-01','YY-MM-DD'),2850,NULL,30);
INSERT INTO EMP VALUES (7782,'CLARK','MANAGER',7839,TO_DATE('81-05-09','YY-MM-DD'),2450,NULL,10);
INSERT INTO EMP VALUES (7566,'JONES','MANAGER',7839,TO_DATE('81-04-01','YY-MM-DD'),2975,NULL,20);
INSERT INTO EMP VALUES (7654,'MARTIN','SALESMAN',7698,TO_DATE('81-09-10','YY-MM-DD'),1250,1400,30);
INSERT INTO EMP VALUES (7499,'ALLEN','SALESMAN',7698,TO_DATE('81-02-11','YY-MM-DD'),1600,300,30);
INSERT INTO EMP VALUES (7844,'TURNER','SALESMAN',7698,TO_DATE('81-08-21','YY-MM-DD'),1500,0,30);
INSERT INTO EMP VALUES (7900,'JAMES','CLERK',7698,TO_DATE('81-12-11','YY-MM-DD'),950,NULL,30);
INSERT INTO EMP VALUES (7521,'WARD','SALESMAN',7698,TO_DATE('81-02-23','YY-MM-DD'),1250,500,30);
INSERT INTO EMP VALUES (7902,'FORD','ANALYST',7566,TO_DATE('81-12-11','YY-MM-DD'),3000,NULL,20);
INSERT INTO EMP VALUES (7369,'SMITH','CLERK',7902,TO_DATE('80-12-09','YY-MM-DD'),800,NULL,20);
INSERT INTO EMP VALUES (7788,'SCOTT','ANALYST',7566,TO_DATE('82-12-22','YY-MM-DD'),3000,NULL,20);
INSERT INTO EMP VALUES (7876,'ADAMS','CLERK',7788,TO_DATE('83-01-15','YY-MM-DD'),1100,NULL,20);
INSERT INTO EMP VALUES (7934,'MILLER','CLERK',7782,TO_DATE('82-01-11','YY-MM-DD'),1300,NULL,10);

TO_DATE(,'YY-MM-DD')

select empno,job,to_char(hiredate,'yyyy-mm-dd') from emp;

select * from dept;
INSERT INTO EMP VALUES (8934,'MILLER','CLERK',7782,TO_DATE('2100-01-11','YYYY-MM-DD'),1300,NULL,10);

-- To run SQL script
@c:\Users\Jieun\Downloads\professor.sql;

select * from professor;

--
desc professor;

select * from professor;

-- print names
select name from professor;

-- print expression
select name,'good morning' "Good Morning" from professor;

-- Alias

select * from professor;

select profno as "Prof No.",
name as "Prof. Name",
id as "Prof. ID",
position as "Prof. Rank",
pay as "Salary",
email as "Email"
from professor;

select * from professor;
select profno Prof_No,name as "Prof. Name" from professor;

-- increase bonus

select profno, name, id, position,pay*1.1 from professor;
select profno, name, id, position,pay*1.1 as "Pay Raise by 10%" from professor;

-- practice aliasing
select profno Prof_No,name as "Prof. Name" from professor;

-- distinct: removes duplicates

select * from emp;

select deptno from emp;
select DISTINCT deptno from emp;

select distinct deptno, (job) from emp;
select deptno, distinct (job) from emp; -- error

-- concatenate

select job,ename from emp;

select ename || ' is ' || job from emp;

-- where

select empno,ename from emp; --prints all entries

select empno,ename from emp where empno= 7900;
select empno,ename from emp where empno< 7900;
select empno,ename from emp where empno> 7900;
select * from emp where lower(ename)= 'miller';

select empno,ename,sal from emp where sal>2000;

select empno,ename,job,sal from emp where empno >= 7500;
select empno,ename,job,sal from emp 
where (empno >= 7500 AND sal > 200);
SELECT empno,ename,job,sal FROM emp WHERE (empno >= 7500 AND sal > 200);

SELECT * FROM emp WHERE lower(ename)='king';

select distinct ename from emp where lower(ename)>'manager';

select empno,ename,sal from emp where TO_DATE(hiredate,'dd-mm-yy')>='10-12-81';

--
-- C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts


-- salary between 2000 and 3000
select * from emp where sal between 2000 and 3000;

-- AND operator
select * from emp where sal >=2850 and sal<=3000;

-- press F5 to see the results of two queries

-- AND operator
select * from emp where sal<=3000 and sal >=2850;

-- order matters for BETWEEN
select * from emp where sal between 3000 and 2000; --error

-- emp TABLE: empno > 7600 and sal < 2000
select * from emp where empno>7600 and sal<2000;

-- emp TABLE: empno > 7600 or sal < 2000
select * from emp where empno>7600 or sal<2000;

-- emp TABLE: (empno >= 7500 and empno<=8000) or (sal>=2000 and sal<=3000)
-- AND operator comes first before OR operator
-- So, parentheses are not needed in this case
select * from emp where (empno >= 7500 and empno<=8000) or (sal>=2000 and sal<=3000);

-- IN operator
-- works like OR
select empno,ename,deptno from emp where deptno in (10,20);

-- IN 
select * from emp where lower(job) in('manager','salesman');

-- retrieve entries where job is president or clerk AND sal is greater than 3000
SELECT * FROM emp WHERE lower(job) IN('president','clerk') AND sal>3000;

-- LIKE operator
-- % means any string character(s)
-- _ means one character

select * from emp where sal like '1%';

-- retrieve entries where employee name starts with 's'
SELECT * FROM emp WHERE lower(ename) LIKE 's%';

-- LIKE on date type
select * from emp where hiredate like '%80';

-- _
select * from emp where ename like '_L%';
select * from emp where ename like '__L%';

-- NULL
select * from emp where comm is null;
select * from emp where comm= null; --error

-- NOT NULL
select * from emp where comm is not null; --useful when NOT NULL entries are few

-- get user input for WHERE condition
select * from emp where empno=&empno;

-- get use input for TABLE name
select * from &table where sal>2000;

-- NULL
select * from emp where comm 

-- run script
@C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts\student.sql;

-- student TABLE
select * from student;

-- QUESTION #1
DESC student;
SELECT name  || '''s ID: ' || id || ', WEIGHT is ' || weight || 'kg' FROM student;
SELECT name || '''s ID: ' || id  || ', WEIGHT is ' || weight  || 'kg' AS "ID AND WEIGHT" FROM student;

-- QUESTION #2
DESC emp;
SELECT ename || '(' || job || ') , ' || ename || '''' || job || '''' AS "NAME AND JOB" FROM emp;

-- QUESTION #3
SELECT ename || '''s sal is $' || sal AS "Name and Sal" FROM emp;

-- ORDER BY
-- asc() abcdef, desc() zyxwvuts
-- asc is the default ordering

select ename,sal,hiredate from emp;
select ename,sal,to_date(hiredate,'DD-MM-YY') from emp order by hiredate;
select ename,sal,to_date(hiredate,'DD-MM-YY') from emp order by hiredate desc;

-- order by name
select ename,sal,hiredate from emp order by ename;
select ename,sal,hiredate from emp order by ename desc;

-- order by sal desc
select ename,sal,job,hiredate from emp order by sal desc;

-- order by multiple fields

select ename,deptno,sal,hiredate from emp order by deptno, sal desc; -- order by deptno first, and then by sal desc
select ename,deptno,job,sal,hiredate from emp order by deptno, job asc, sal desc; -- order by deptno first, and then by sal desc


-- Question #4: Weekend homework
-- create table: myemp
/*
CREATE TABLE sawon (
    name   VARCHAR2(30),
    grade  VARCHAR(10),
    job    NUMBER
);*/
create table myemp (
emp_num number primary key not null,
last_name varchar2(20) not null,
first_name varchar2(20),
job_code char(2),
address varchar2(100)
);

desc myemp;
drop table myemp;

insert into myemp values(10001,'Grant','Linda','PE','34 of 1st Street');
insert into myemp values(10002,'Amy','Jonathan','PS','200 Rose Street');
insert into myemp values(10003,'Hurow','Lily','SS','101 Bear Town');
insert into myemp values(10004,'Adam','Evely','CS','202 Declaration Drive');
insert into myemp values(10005,'Julie','Rose','PE','788 McTyne Street');
insert into myemp values(10006,'Albert','May','SS','320 Elaine Ave');
insert into myemp values(10007,'Amy','Kent','SS','829 Cerritos Ave');

select * from myemp;

-- Practice
select * from tab;
drop table myemp2;
commit;

select * from myemp2;

insert into myemp2 values
(10001,'Grant','Linda','PE','34 of 1st Street');

-- ###################################
-- DAY 3
-- March 15, 2021
-- ###################################


-- task 01
-- order EMP table by job 
desc emp;
SELECT ename,job,hiredate FROM emp ORDER BY job;

-- task 02
-- order first by height desc and then by weight and retrieve studno, name, jumin, birthday, height and weight
desc student;
SELECT studno, name, jumin, birthday, height, weight FROM student ORDER BY height DESC, weight;

-- task 03
-- aliasing
SELECT profno "ordered 1st by profno ",studno AS "ordered 2nd by studno ",name,grade,height,weight
FROM student ORDER BY profno, studno;

-- task 04
-- union, union all
desc student;
select studno,name,deptno1, '1' "1" from student
where deptno1= 101;

desc student;
select studno,name,deptno1, '1' "de facto" from student
where deptno1= 101;

desc professor;
select profno,name,deptno, '2' from professor
where deptno=101;

-- UNION
select studno,name,deptno1, 1 "table" from student
where deptno1= 101
union -- duplicates removed
select profno,name,deptno, 2 "table" from professor
where deptno=101;

-- UNION 2
-- error if the types are different
select studno,name,deptno1, 1 "table" from student
where deptno1= 101
union -- duplicates removed
select profno,name,profno, 2 "table" from professor
where deptno=101;

-- UNION 3
-- error if the number of the columns are different
select studno,name,deptno1, 1 "table" from student
where deptno1= 101
union -- duplicates excluded
select profno,name,profno, 2 "table" from professor
where deptno=101;

-- UNION ALL
select studno,name,deptno1, 1 "table" from student
where deptno1= 101
union all --duplicates included
select profno,name,deptno, 2 "table" from professor
where deptno=101;

-- INTERSECT
select studno,name from student
where deptno1=101
intersect
select studno,name from student
where deptno2=201;

select * from student where name like '%mes%';

-- F5 for multiple views from queries
-- highlight query01 and press F5
-- highlight query02 and pressor F5
-- and you have two views on the Result pane

-- MINUS, aka, DIFFERENCE operator
-- data types and/or number of columns have to match
select empno,ename,sal from emp
MINUS
select empno,ename,sal from emp
where sal>2500;

-- ##############################################

-- DELETE the records from TABLE
select * from tab;
select * from dept;
desc dept;
delete from dept;
delete dept; -- "FROM" can be omitted

-- ROLLBACK
rollback;

-- DROP TABLE
-- tranaction irreversible
-- viz. no rollback

/*
CREATE TABLE DEPT
       (DEPTNO number(10),
        DNAME VARCHAR2(14),
        LOC VARCHAR2(13) );



INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');
*/

delete from dept
where deptno=10;
select * from dept;

-- DELETE multiple records
-- using IN
delete from dept
where deptno in (20,30);

-- DELETE
-- using OR
delete from dept
where deptno=10 OR deptno=20;

rollback;

-- DELETE
-- using LIKE
delete from dept
where deptno like 10;

select * from dept;

delete from dept
where deptno like '%0';

-- emp TABLE
-- DELETE
delete from emp
where lower(job) = 'manager';

select * from emp;
rollback;

-- DELETE where job is salesman and sal <=1500
delete from emp
where lower(job) like '%sales%' and sal<=1500;

select ename,job,sal from emp
order by job;

-- ############################################
-- FUNCTION
-- ############################################

-- initcap()
select initcap(ename),ename from emp;

desc professor;
select lower(name) from professor;
select upper(name) "Uppercase" from professor;

-- FUNCTION
-- length()
select ename, length(ename),
lengthb(ename) "in bytes" from emp;

-- dual TABLE
select '???', length('???'),lengthb('???') from dual;

-- FUNCTION
-- concat() along with ||
SELECT ename,job,
concat(ename || '''s position is ',initcap(job))
AS Description FROM emp;

-- FUNCTION
-- substr()
-- 1-based indexing
select substr('012345',3,2) "3,2" from dual;

select ename,substr(ename,1,3) from emp;

select ename,substr(ename,1,3) "1st three",
substr(ename,-3,3) "last three" from emp;

-- student TABLE
desc student;
select jumin from student;

select name,substr(jumin,1,2)
"Year of Birth" from student;
select name,substr(jumin,7,1)
"Sex" from student;

select name, '19' || substr(jumin,1,2)
"Year of Birth" from student;

select tel,substr(tel,-9,3) from student;

select '???',substrb('???',1,3) "substrb" from student;

-- FUNCTION
-- instr(): returns the start index 
--          of a searched string
select * from student;
select id, instr(id,'true',1,1) from student;

-- FUNCTION
-- instr():
-- returns the index of the third occurance of '-' starting at index 1
select 'a-b-c-d-e', instr('a-b-c-d-e','-',1,3)
from dual;

-- FUNCTION
-- instr():
-- returns the index of the second occurance of '-' starting at index 3
select 'a-b-c-d-e', instr('a-b-c-d-e','-',3,2)
from dual; 

-- FUNCTION
-- instr():
-- returns the index of the third occurance of '-' starting at index -1
select 'a-b-c-d-e', instr('a-b-c-d-e','-',-1,3)
from dual;

-- FUNCTION
-- instr():
-- student TABLE
select tel, instr(tel,')',1,1) from student;
select tel, instr(tel,')') from student;

-- FUNCTION
-- nested
-- substr(instr())

select tel, substr(tel,1,instr(tel,')')) Area_code from student;

-- FUNCTION
-- lpad()
select tel, 
lpad(
    substr(
          tel,1,instr(tel,')')-1
        ),
5,' ') Area_code from student;


-- FUNCTION
desc professor;
select email from professor;

select email, 
substr(email,1,instr(email,'@')-1) Email_ID 
from professor;

select email, 
lpad(
    substr(email,1,instr(email,'@')-1
          )
    ,11,' '
     ) Email_ID from professor;
     
-- question
select name,tel,instr(tel,')'),substr(tel,1,instr(tel,')')-1),substr(tel,-1,instr(tel,')')-1) from student
where deptno1=201;

desc student;
select name,tel,
instr(tel,'3') from student;

desc student;
select name,tel,
    substr(tel,1,instr(tel,')')-1) Area_code,
    substr(tel,instr(tel,')')+1) from student
where deptno1=101;
/*
ORDER of COMPOSITION in statement
1. select
2. from
3. where
4. group by
5. having
6. order by
*/

/*
ORDER of EXECUTION in statement
1. from
2. where
3. group by
4. having
5. select
6. order by
*/

--
select name,id,lpad(id,10,'*') left_pad
from student where deptno1=201;

-- FUNCTION
-- lpad()
select ename,lpad(ename,9,'123456789')
from emp
where deptno=10;

-- FUNCTION
-- rpad()
select ename,rpad(ename,10,'-') right_pad
from emp where deptno=10;

-- QUESTION
-- Right-pad after the name with '-'
select ename,rpad(ename,9,'-')
from emp
where deptno=10;

-- warm-up
select substr('123456789',3) from dual;

-- Right-pad the remaining space 
-- after the name
select ename,
        rpad(ename,9,
                    substr('123456789',
                            length(ename)+1))
from emp
where deptno=10;

--
select name,jumin,replace(jumin,substr(jumin,
7,7),'-/-/-/-') Jumin
from student where deptno1=101;

--
select name,tel
from student where deptno1=201;


-- Question
select name,tel,
replace(tel,
         substr(tel,
                instr(tel,')')+1,
                3),
         '***')
from student where deptno1=201;

select name,tel,
replace(tel,
         substr(tel,
                instr(tel,')')+1,
                instr(tel,'-')-1 - instr(tel,')')),
         '***')
from student where deptno1=201;

/*
-
*/

-- FUNCTION
-- round()

select round(987.12345,2) from dual;
select round(987.12345,4),
round(987.12345,0),
round(987.12345,-1) Round_to_10th from dual;

-- UPDATE TABLE
desc dept;
select * from dept;
insert into dept values(40,'Operations','Seoul');

update dept
set dname='Warehouse' where lower(loc)='seoul';
update dept
set deptno=60 where lower(loc)='seoul';

insert into dept values(50,'Research','Busan');

update dept
set deptno=20 where deptno=50;

update dept
set loc='BOSTON'
where deptno=60 and loc='Seoul';

select * from dept;

select rownum,deptno,loc from dept;

update dept set loc='Seoul' where deptno=60;

update dept set loc='seoul'
where rownum=1;

-- ###################################
-- Day 4
-- March 16, 2021
-- ###################################
select name,tel,
replace(tel,
        substr(tel,
                instr(tel,'-',1,1)+1,4),'****')
from student where deptno1=201;

--UPDATE
-- quiz
update emp
set comm=500
where lower(job)='manager';

select ename,job,comm,comm*1.2 "20% raise" from emp;

--UPDATE
-- quiz
update emp
set comm=comm*1.2
where comm<1000 and lower(job)='salesman';

rollback;

-- FUNCTION
-- round()
select trunc(123.4567,2) from dual;

-- FUNCTION
-- mod()
select mod(121,10) from dual;
-- result: 1

-- FUNCTION
-- ceil()
select ceil(123.45) from dual;
-- result: 124

select ceil(-123.45) from dual;
-- result: -123

-- FUNCTION
-- floor()
select floor(123.45) from dual;
-- result: 123

select floor(-123.45) from dual;
-- result: -124

select rownum, ceil(rownum/3) "ceil", ename 
from emp;

-- FUNCTION
-- power()
select power(2,2) from dual; --4
select power(2,3) from dual; --8

-- FUNCTION
-- sysdate()
select sysdate from dual; --16-MAR-21

-- FUNCTION
-- to_char(); sysdate()
select to_char(sysdate,'dd.mm.yyyy') Today from dual; --16.03.2021

-- FUNCTION
-- months_between(): (later date, earlier date)
select 
round(MONTHS_BETWEEN(to_date(sysdate,'dd-mm-yy'),hiredate)/12,0) Years_since
FROM emp;

select to_date(sysdate,'dd-mm-yy'), hiredate from emp;

-- FUNCTION
-- to_char(): (number,'9999.99')
select 1234.453653, to_char(1234.453653,'9999.99') from dual;

-- FUNCTION
-- add_months()
select sysdate,
add_months(sysdate,1) from dual;

-- FUNCTION
-- next_day()
select next_day(sysdate,'tuesday')
from dual;

-- FUNCTION
-- last_day()
-- last day of the current month
select sysdate,last_day(sysdate)
from dual;

select '01-MAR-21',last_day('01-MAR-21')
from dual;

-- FUNCTION
-- type-casting
select 2+'3' from dual;

select 2+to_number('3') from dual;

select 2+ascii('a') from dual;
-- ascii('a'): 97

-- FUNCTION
-- to_char()
-- yyyy, rrrr, yy, rr, year
select sysdate,
to_char(sysdate,'yyyy') yyyy,
to_char(sysdate,'rrrr') rrrr,
to_char(sysdate,'yy') yy,
to_char(sysdate,'rr') rr,
to_char(sysdate,'year') year 
from dual;

-- FUNCTION
-- to_char()
-- mm, mon, month
select sysdate,
to_char(sysdate,'mm') mm, -- digit
to_char(sysdate,'mon') mon, -- char
to_char(sysdate,'month') month
from dual;

-- FUNCTION
-- to_char()
-- for UNIX operating system

-- FUNCTION
-- to_char()
-- 'rrrr-mm-dd hh24:mi:ss'
select sysdate,
to_char(sysdate,'rrrr-mm-dd hh24:mi:ss')
from dual;

-- FUNCTION
-- to_char()
-- 9, 0, $, '.' ','
select 12345,
to_char(12345,'99999') "99999",
to_char(1234,'099999') "099999",
to_char(1234,'$9999') "$9999",
to_char(1234,'9999.99') "9999.99",
to_char(1234567,'999,999,999') "999,999,999"
from dual;

-- FUNCTION
-- to_char()

select ename,sal,comm,
to_char(sal*12+nvl(comm,0),'$999,999') annual
from emp;

-- quiz
-- to_char()
-- nvl():
--       nvl(null,number to change to)
select name,pay,bonus,
to_char(pay*12+nvl(bonus,0),
        '$999,999.99') annual
from professor where deptno=201;

-- quiz
-- to_char(), nvl() 
desc emp;
select empno,ename,hiredate,
to_char(sal*12+nvl(comm,0),'$99,999') annual,
to_char((sal*12+nvl(comm,0))*1.15,'$999,999') "15% raise"
from emp;

-- to_char(field,'yyyy-mm-dd'),
-- to_date(field,'dd-mm-yy')
-- to_char(field,'$999,999')
select empno,ename,
to_char(to_date(hiredate,'dd-mm-yy'),'yyyy-mm-dd') hiredate,
to_char(sal*12+nvl(comm,0),'$99,999') annual,
to_char((sal*12+nvl(comm,0))*1.15,'$999,999') "15% raise"
from emp;

-- FUNCTION
-- to_number()
select to_number('5') from dual;
select (ascii('a')) from dual;

-- VIEW
create view vw_test as
select 
       'a'   a_string,
       ascii('a') ascii_val
from dual;

desc vw_test;

-- FUNCTION
-- nvl(comm,0)
select name,
to_char(pay,'$9,999') month,
to_char(nvl(bonus,0),'$999') bonus,
to_char(pay*12+nvl(bonus,0),'$99,999') annual
from professor;

-- FUNCTION
-- nvl2()
--     :nvl2(field, if-not-null value/expr., if-null value/expr.)
select ename,sal,comm,
to_char(nvl2(comm,sal+comm,sal+0),'$9,999') month
from emp where lower(job)='salesman';

-- FUNCTION
-- nvl2(); to_char()
-- CONCATENATE ||
select ename ||
'''s ' || nvl2(comm,'commission exists:',
                'commission is undefined:') commission,
        to_char(comm,'$9,999') amount
from emp where deptno=30;

-- FUNCTION
-- decode()
--        (field,value,'some string')
select deptno,name,
decode(deptno,101,'Comp. Eng.') dept_name
from professor;

-- FUNCTION
-- decode()
--       (field,if-value,yes-string,no-string)
select deptno,name,
decode(deptno,101,'Comp. Eng.','Other') dept_name
from professor;

-- FUNCTION
-- decode()
--        (field,code,string,code2,string2,...)
select name,deptno,
decode(deptno,101,'CE101',
	102,'CE102',
	103,'CE103',
	201,'STA01',
	202,'STA02',
	203,'STA03',
	301,'CS01',
	302,'CS02',
	303,'CS03') dept_name
from professor;

-- FUNCTION
-- decode()
--       (a,b,decode(c,d,'1',null))
--        if a b,
--          then, if c d,
--                 then, '1' nested
--                else, null
select name,deptno,
decode(deptno,101,decode(lower(name),'jessica lange','Best')) best
from professor;

select name,deptno,
decode(deptno,101,decode(lower(name),'jessica lange','Best','Good')) best
from professor;

select name,deptno,
decode(deptno,101,decode(lower(name),'jessica lange','Best','Good'),'--') best
from professor;

-- substr(field,start index, number of char)
select name,tel,
substr(tel,1,instr(tel,')')-1) tel
from student;

-- CASE
-- when then else
select name,tel,
    case (substr(tel,1,instr(tel,')')-1)) 
        when '02' then 'Seoul' 
        else '--'
    end "case",
substr(tel,1,instr(tel,')')-1) tel
from student;

-- CASE
-- when then else
select name,tel,
    case (substr(tel,1,instr(tel,')')-1))
        when '02' then 'Seoul'
        when '031' then 'Gyong-gi'
        when '051' then 'Busan'
        when '053' then 'Daegu'
        when '055' then 'Gyong-nam'
        else '--'
    end "case",
substr(tel,1,instr(tel,')')-1) tel
from student;

desc student;
select * from student;
select 
to_char(to_date('01-MAR-21','dd-mm-yy'),'mm') from dual;

-- quiz
-- CASE
--
select name,
    lpad(
        to_char(to_date(birthday,'dd-mm-yy'),'mm'),3,' '
        ) mob,
case to_char(to_date(birthday,'dd-mm-yy'),'mm') -- '03'
    when '01'  then '1/4'
    when '02'  then '1/4'
    when '03'  then '1/4'
    when '04'  then '2/4'
    when '05'  then '2/4'
    when '06'  then '2/4'
    when '07'  then '3/4'
    when '08'  then '3/4'
    when '09'  then '3/4'
    else '4/4'
end quarter
from student;


desc student;
select name,
    lpad(
        substr(jumin,3,2),3,' '
        ) mob,
case
    when substr(jumin,3,2) between '01' and '03' then lpad('1/4',5,' ')
    when substr(jumin,3,2) between '04' and '06' then lpad('2/4',5,' ')
    when substr(jumin,3,2) between '07' and '09' then lpad('3/4',5,' ')
    else lpad('4/4',5,' ')
end quarter
from student;

select 3,decode('03','03','1/4') quarter from dual;


-- ###################################
-- ERD Entity-Relationship Diagram
-- ###################################

--https://www.erdcloud.com/d/YbsW52LyzCCgAbssa

--non-identifying relationships



-- ROWNUM
update dept
set loc='dddde'
where deptno in(
            select deptno
            from (select deptno,loc
                   from dept order by loc)
            where rownum=3);

select * from dept;

-- ######################################
-- Day 5
-- March 17, 2021
-- ######################################

desc student;
select grade from student;

-- QUIZ
-- decode()
select name,grade,
decode(grade,1,'Grade 1',2, 'Grade 2',3, 'Grade 3',4, 'Grade 4') Year
from student;

-- ##########################
-- identifying relationships
-- ##########################

create table one(
onenum number,
name varchar2(10));

create table two(
twonum number,
addr varchar2(30));
select * from one;

insert into two values
(10,'Seoul');
select * from two;

delete from two
where tweno=10;

drop table one;
drop table two;

-- ERROR
alter table two add constraint fk_num 
foreign key(twonum) references one(onenum);

-- PRIMARY KEY
alter table one add constraint pk_onenum
primary key(onenum);

desc one;

-- Identifiy ER
-- FOREIGN KEY
alter table two add constraint fk_num 
foreign key(twonum) references one(onenum);

desc two;

-- Try addining entry into TABLE two
/*
ERROR
integrity constraint (HR.FK_NUM) violated
- parent key not found
*/
insert into two values(10,'Seoul');

select table_name from user_constraints
where r_constraint_name in
  (select constraint_name 
     from user_constraints
     where constraint_type in ('P','U')
     and table_name = upper('&two')
  );
  
-- add entry into TABLE one first
insert into one values(10,'Blue');
insert into two values(10,'sea');

select * from one;
select * from two;

-- To view CONSTRAINTS
select * from all_constraints
where table_name=upper('two');

-- To delete CONSTRAINTS
alter table two
drop constraint fk_num;

-- no constraints on the table two
insert into two values(30,'busan')

--
alter table one drop column twonum 

;

-- To view CONSTRAINTS
select * from all_constraints
where table_name=upper('one');

-- DROP CONSTRAINT {constr.name} CASCADE
alter table one 
drop constraint pk_onenum cascade;

alter table one drop column onenum;

--
delete from one
where onenum=10 cascade;

--
show user;
select * from tab;
select * from one;

drop table dept;
drop table emp;

CREATE TABLE DEPT
       (DEPTNO number(10),
        DNAME VARCHAR2(14),
        LOC VARCHAR2(13) );

CREATE TABLE EMP (
 EMPNO               NUMBER(4) NOT NULL,
 ENAME               VARCHAR2(10),
 JOB                 VARCHAR2(9),
 MGR                 NUMBER(4) ,
 HIREDATE            DATE,
 SAL                 NUMBER(7,2),
 COMM                NUMBER(7,2),
 DEPTNO              NUMBER(2) );

-- Add PRIMARY KEY
alter table dept add constraint pk_dept_deptno primary key(deptno);
desc dept;

-- Add FOREIGN KEY
desc emp;

alter table emp 
add constraint fk_deptno foreign key(deptno)
references dept(deptno);

-- To view CONSTRAINTS
select * from all_constraints
where table_name=upper('dept');

-- To view CONSTRAINTS
select * from all_constraints
where table_name=upper('emp');

-- Populate TABLE dept
INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');
INSERT INTO DEPT VALUES (20, 'RESEARCH',   'DALLAS');
INSERT INTO DEPT VALUES (30, 'SALES',      'CHICAGO');
INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

select * from dept;

-- Populate TABLE emp
INSERT INTO EMP VALUES (7839,'KING','PRESIDENT',NULL,TO_DATE('1981-11-17','YYYY-MM-DD'),5000,NULL,10);
INSERT INTO EMP VALUES (7698,'BLAKE','MANAGER',7839,TO_DATE('1981-05-01','YYYY-MM-DD'),2850,NULL,30);
INSERT INTO EMP VALUES (7782,'CLARK','MANAGER',7839,TO_DATE('1981-05-09','YYYY-MM-DD'),2450,NULL,10);
INSERT INTO EMP VALUES (7566,'JONES','MANAGER',7839,TO_DATE('1981-04-01','YYYY-MM-DD'),2975,NULL,20);
INSERT INTO EMP VALUES (7654,'MARTIN','SALESMAN',7698,TO_DATE('1981-09-10','YYYY-MM-DD'),1250,1400,30);
INSERT INTO EMP VALUES (7499,'ALLEN','SALESMAN',7698,TO_DATE('1981-02-11','YYYY-MM-DD'),1600,300,30);
INSERT INTO EMP VALUES (7844,'TURNER','SALESMAN',7698,TO_DATE('1981-08-21','YYYY-MM-DD'),1500,0,30);
INSERT INTO EMP VALUES (7900,'JAMES','CLERK',7698,TO_DATE('1981-12-11','YYYY-MM-DD'),950,NULL,30);
INSERT INTO EMP VALUES (7521,'WARD','SALESMAN',7698,TO_DATE('1981-02-23','YY-MM-DD'),1250,500,30);
INSERT INTO EMP VALUES (7902,'FORD','ANALYST',7566,TO_DATE('1981-12-11','YY-MM-DD'),3000,NULL,20);
INSERT INTO EMP VALUES (7369,'SMITH','CLERK',7902,TO_DATE('1980-12-09','YYYY-MM-DD'),800,NULL,20);
INSERT INTO EMP VALUES (7788,'SCOTT','ANALYST',7566,TO_DATE('1982-12-22','YYYY-MM-DD'),3000,NULL,20);
INSERT INTO EMP VALUES (7876,'ADAMS','CLERK',7788,TO_DATE('1983-01-15','YYYY-MM-DD'),1100,NULL,20);
INSERT INTO EMP VALUES (7934,'MILLER','CLERK',7782,TO_DATE('1982-01-11','YYYY-MM-DD'),1300,NULL,10);

commit;
--
select * from emp;
select * from dept;

--
create table rental
(hakbun number,
name varchar2(20),
city varchar2(20),
locker number);

alter table rental
add constraint pk_hakbun primary key(hakbun);

-- To view CONSTRAINTS
select * from all_constraints
where table_name=upper('rental');

drop table lockerroom;

create table lockerroom
(locknum number primary key,
name varchar2(20));

-- Add FOREIGN KEY on rental.locker
alter table rental 
add constraint fk_locknum foreign key(locker)
references lockerroom(locknum);

-- To view CONSTRAINTS
select * from all_constraints
where table_name=upper('lockerroom');

-- Try inserting into TABLE rental
insert into rental values
('1111','Woman','Seoul',1);

--
insert into lockerroom
values(1,'Locker 1');

ALTER TABLE lockerroom
MODIFY name varchar2(30);

desc lockerroom;

-- ####################
-- Group FUNCTION
-- ####################

-- count()
select count(comm), count(mgr), count(*) from emp;

-- sum()
select count(*) num_emp ,sum(sal) Sal_total from emp;

--avg()
select count(*) || ' employees get on average' || to_char(round(avg(sal),0),'$99,999') avg_sal from emp;

select count(comm) num_comm, count(*) total_emp,
sum(comm) total_comm, avg(comm) avg_comm
from emp;

-- Using ||

-- avg()
-- excludes NULL fields
select count(comm) || ' out of ' || count(*) || 
' employees get the total commission of $' ||
sum(comm) || ' and an average of $' || avg(comm)
|| ' among those ' || count(comm) || ' people.'
total_and_avg_commission
from emp;

-- nvl2()
select count(comm), count(*), sum(comm),
round(avg(nvl2(comm,comm,0)),2) avg_comm
from emp;

-- max()
select max(sal) from emp;
select max(hiredate) from emp;

-- min()
select min(sal) from emp;
select min(hiredate) from emp;

-- stddev()
-- variance()
select round(stddev(sal),2),
round(variance(sal),2)
from emp;

-- ####################
-- GROUP BY
-- ####################

desc emp;

-- Order of execution
-- FROM > GROUP BY > SELECT
select deptno, sal from emp
order by deptno;

select deptno,round(avg(sal),0) avg_sal
from emp
group by deptno;

-- ####################
-- Nested GROUP BY
-- ####################

select deptno,job,avg(sal)
from emp
group by deptno,job
order by 1,2;

select deptno,job, sal from emp
order by deptno, job;

desc dept;

-- Must include in the GROUP BY:
-- the fields mentioned in SELECT clause

select e.job,d.deptno,d.dname,
        round(avg(e.sal),0) avg_sal
from emp e
inner join dept d on e.deptno=d.deptno
-- GROUP BY: match the fields in SELECT
group by e.job,d.deptno,d.dname -- match the fields in SELECT
order by 3,2; -- job, dname

-- #####################
-- HAVING
-- #####################

-- error
select deptno,round(avg(nvl(sal,0)),0)
from emp
where avg(nvl(sal,0))>2000;

-- Order of EXECUTION:
-- FROM > HAVING > GROUP BY > SELECT
select deptno,round(avg(nvl(sal,0)),0) avg_sal
from emp
group by deptno
having avg(nvl(sal,0))>2000;

-- TABLE professor
-- count(),sum()
desc professor;

select d.deptno,p.position,
        count(*),sum(p.pay) pay_sum
from professor p
inner join dept d on p.deptno=d.deptno
group by d.deptno, p.position
order by pay_sum desc; -- alias
--order by sum(pay) desc; --pay_sum

-- group by: 
select p.deptno,count(*), sum(pay)
from professor p
group by p.deptno;

-- group by: professor.position
-- execution: FROM > GROUP BY > SELECT
select position,count(*), sum(pay)
from professor
group by position;

-- group by
select '2021' year, deptno,count(*) num_staff
from emp
group by deptno;

-- group by
select deptno,count(*) num_staff,round(avg(nvl(sal,0)),0) avg_sal,round(sum(nvl(sal,0)),0) sum_sal
from emp
group by deptno;


-- group by
-- INNER JOIN
select e.deptno,d.dname,
        count(*) staff,
        to_char(round(avg(nvl(sal,0)),0),'$9,999') avg_sal,
        to_char(round(sum(nvl(sal,0)),0),'$99,999') sum_sal
from emp e
inner join dept d on e.deptno=d.deptno
group by e.deptno,d.dname;


-- coefficient of variation CV
-- i.e., sd/mean
-- For non-negative sales and costs where 
-- spread might tend to be proportional 
-- to the mean, it's often sensible
-- to look at CV
select job,count(*),
        to_char(round(avg(nvl(sal,0)),0),'$9,999') avg_sal,
        round(stddev(nvl(sal,0))/avg(nvl(sal,0)),2) sd_norm,
        to_char(max(sal),'$9,999') max_sal,
        to_char(min(sal),'$9,999') min_sal,
        to_char(round(sum(nvl(sal,0)),0),'$9,999') sum_sal
from emp e
inner join dept d on e.deptno=d.deptno
group by job;

-- GROUP BY
-- HAVING
select e.deptno,d.dname,count(*) staff
from emp e
inner join dept d on e.deptno=d.deptno
group by e.deptno,d.dname
having count(*) > 5;

-- GROUP BY
-- HAVING
-- ORDER BY
select job,count(*),
        round(sum(sal),0) total_sal
from emp
group by job
having sum(sal) >5000
and lower(job) not like '%sales%';

-- alternative 2
-- FROM > WHERE > HAVING > GROUP BY > ORDER BY
select job,count(*),
        round(sum(sal),0) total_sal
from emp
where lower(job) not like '%sales%' 
group by job
having sum(sal) >5000
order by sum(sal) desc;

-- ############################################
-- USER MANAGEMENT
-- ############################################



-- ####################
-- DELETE using ROWNUM
-- ####################

select * from dept;
delete dept where rownum=4; -- not working

select rownum rn, rowid ri from dept;

--To make it work
select * from dept;
delete from dept 
where rowid=(select rid from 
        (select rownum rn, rowid rid from dept)
        where rn=4);
select * from dept;


-- ############################################
-- START OF HOMEWORK
-- ############################################

-- Q1.
--DESC emp;
SELECT empno,ename,sal
FROM emp
WHERE deptno=10;

-- Q2.
SELECT empno,ename,hiredate,deptno
FROM emp
WHERE empno=7369;

-- Q3.
SELECT * FROM emp
WHERE lower(ename) = 'allen';

-- Q4.
-- compare dates
--SELECT to_date('83-JAN-12','yy-mon-dd') from dual;
SELECT ename,deptno,sal 
FROM emp
WHERE hiredate = '15-JAN-83';
    
-- Q5.
SELECT * FROM emp
WHERE lower(job) != 'manager';

-- Q6.
--DESC emp;
SELECT * FROM emp
WHERE hiredate 
        > to_date('02-APR-1981','DD-MON-YYYY')
ORDER BY hiredate;

-- Q7.
SELECT ename,sal,deptno FROM emp
WHERE sal >= 800;

-- Q8.
SELECT * FROM emp
WHERE deptno >= 20;

-- Q9.
-- ascii(),substr()
SELECT * FROM emp
WHERE ascii(substr(ename,1,1)) > ascii('K')
ORDER BY ename;

-- Q10.
-- compare dates
SELECT * FROM emp
WHERE hiredate 
        < to_date('09-DEC-1981','dd-mon-yyyy')
ORDER BY hiredate;

-- Q11.
SELECT empno,ename FROM emp
WHERE empno <= 7698;

-- Q12.
-- compare dates
SELECT ename,hiredate,sal,deptno FROM emp
WHERE hiredate > to_date('02-APR-1981','DD-MON-YYYY') 
       AND hiredate < to_date('09-DEC-1982','DD-MON-YYYY')
ORDER BY hiredate;

-- Q13.
SELECT ename,job,sal FROM emp
WHERE sal > 1600 AND sal < 3000;

-- Q14.
SELECT * FROM emp
WHERE empno NOT BETWEEN 7654 AND 7782;

-- Q15.
-- ascii()
SELECT * FROM emp
WHERE ascii(substr(ename,1,1)) 
        BETWEEN ascii('B') AND ascii('J')
ORDER BY ename;

-- Q16.
-- compare dates
-- select substr('01-MAY-81',-2,2) from dual;
-- select substr(hiredate,-2,2) from emp;
SELECT * FROM emp
WHERE substr(hiredate,-2,2) != '81';

-- Q17.
SELECT * FROM emp
WHERE lower(job) IN('manager','salesman');

-- Q18.
SELECT ename,empno,deptno FROM emp
WHERE deptno not in (20,30);

-- Q19.
-- ascii(), substr(),
-- select ascii('S') from dual;
SELECT empno,ename,hiredate,deptno FROM emp
WHERE substr(ename,1,1)='S'
ORDER BY ename;

-- Q20.
-- substr()
SELECT * FROM emp
WHERE substr(hiredate,-2,2) = '81'
ORDER BY hiredate;

-- Q21.
-- select instr('abc','d') from dual;
SELECT * FROM emp
WHERE instr(ename,'S') !=0
ORDER BY ename;

-- Q22.
SELECT * FROM emp
WHERE substr(ename,1,1)='S' 
       AND substr(ename,-1,1)='T'
       AND length(ename)=5;

-- Q23.
SELECT * FROM emp
WHERE substr(ename,2,1)='A'
ORDER BY ename;

-- Q24.
-- where comm IS NULL
SELECT * FROM emp
WHERE comm IS NULL;

-- Q25.
-- IS NOT NULL
SELECT * FROM emp
WHERE comm IS NOT NULL;

-- Q26.
SELECT ename,deptno,sal FROM emp
WHERE deptno=30 AND sal>=1500;

-- Q27.
SELECT empno,ename,deptno FROM emp
WHERE substr(ename,1,1)='K'
       OR deptno=30
ORDER BY ename;

-- Q28.
SELECT * FROM emp
WHERE sal>=1500 
        AND deptno=30
        AND lower(job)='manager';

-- ############################################
-- END OF HOMEWORK
-- ############################################

-- ###################################
-- Day 6
-- March 18, 2021
-- ###################################

-- HAVING (if any)
-- goes hand in hand with GROUP BY

-- SYSTEM USER
conn system;

-- remove user green
Revoke connect, resource from green; 
drop user green cascade;

-- create user soldesk
create user soldesk identified by 222222;

grant connect, resource to soldesk;

-- NEW USER: soldesk

conn soldesk/222222; --not working

show user;

create table hobbs
(subjectno varchar2(6) primary key,
hobby varchar2(25));

create table training
(subjectno varchar2(6),
traindate date);

alter table training
add constraint fk_subjectno
foreign key(subjectno) references hobbs(subjectno);

-- SHOW CONSTRAINTS
select table_name from user_constraints
where r_constraint_name in ;

select * from all_constraints
where table_name=upper('training');

-- #############
-- JOIN
-- #############

show user; --hr

create table tbl1
(id int,
name varchar2(10));

insert into tbl1 values(1,'aaa');
insert into tbl1 values(2,'bbb');
insert into tbl1 values(3,'ccc');
insert into tbl1 values(4,'ddd');
insert into tbl1 values(5,'eee');

-- table 2

create table tbl2
(id int,
car varchar2(10));

insert into tbl2 values(2,'Avante');
insert into tbl2 values(3,'Sonata');
insert into tbl2 values(2,'Mini');
insert into tbl2 values(6,'Pony');

select * from tbl2;

-- INNER JOIN
-- aka intersection
select *
from tbl1 a
    inner join tbl2 b
on a.id = b.id;

select a.id,a.name,b.car
from tbl1 a
    inner join tbl2 b
on a.id = b.id;

-- ERROR
-- column ambiguously defined
select id
from tbl1 a
    inner join tbl2 b
on a.id = b.id;

-- ANSI style
select a.id
from tbl1 a
    inner join tbl2 b
on a.id = b.id;

-- Oracle style
select a.id,a.name,b.car
from tbl1 a, tbl2 b
where a.id=b.id;

-- LEFT OUTER JOIN
-- everything in a
-- intersection in b

select a.id,a.name,b.car
from tbl1 a
left outer join tbl2 b
on a.id=b.id
order by a.id;
/*
1	aaa	
2	bbb	Avante
2	bbb	Mini
3	ccc	Sonata
4	ddd	
5	eee	
*/
-- LEFT OUTER JOIN
select a.id,a.name,b.car
from tbl2 b
left outer join tbl1 a
on a.id=b.id
order by b.id;
/*
2	bbb	Mini
2	bbb	Avante
3	ccc	Sonata
		Pony
*/
-- LEFT OUTER JOIN
select b.car,a.id,a.name
from tbl2 b
left outer join tbl1 a
on b.id=a.id
order by b.id;
/*
Mini	2	bbb
Avante	2	bbb
Sonata	3	ccc
Pony		
*/

-- LEFT OUTER JOIN
-- ORACLE
select a.id,a.name,b.car
from tbl1 a,tbl2 b
where a.id=b.id(+);
/*
2	bbb	Avante
3	ccc	Sonata
2	bbb	Mini
5	eee	
4	ddd	
1	aaa	
*/

commit;

-- RIGHT OUTER JOIN
select a.id,a.name,b.car
from tbl1 a right outer join tbl2 b
on a.id=b.id
order by b.id;
/*
2	bbb	Mini
2	bbb	Avante
3	ccc	Sonata
		Pony
*/

-- RIGHT OUTER JOIN
-- oracle style
select a.id,a.name,b.car
from tbl1 a, tbl2 b
where a.id(+)=b.id
order by b.id;
/*
2	bbb	Mini
2	bbb	Avante
3	ccc	Sonata
		Pony
*/

-- #################
-- Day 6, quiz
-- #################

create table stu
(sno number,
sname varchar2(20));

create table lecture
(sno number,
lec varchar2(50));

-- insert into TABLE stu
insert into stu values (100,'Tom');
insert into stu values (101,'Smith');
insert into stu values (102,'Brown');
insert into stu values (103,'Bell');
insert into stu values (104,'Clark');
insert into stu values (105,'Evans');

-- insert into TABLE lecture
insert into lecture values (100,'Comp. Sci.');
insert into lecture values (102,'Programming');
insert into lecture values (107,'Graphics');
insert into lecture values (102,'Networks');

-- INNER JOIN
select *
from stu s inner join lecture l
on s.sno=l.sno
order by s.sname;

-- INNER JOIN
-- oracle style
select *
from stu s, lecture l
where s.sno=l.sno
order by s.sname;

-- LEFT OUTER JOIN
select *
from stu s
left outer join lecture l
on s.sno=l.sno
order by s.sno;

-- LEFT OUTER JOIN
-- Oracle style
select *
from stu s, lecture l
where s.sno=l.sno(+)
order by s.sno;

-- RIGHT OUTER JOIN
select *
from stu s
right outer join lecture l
on s.sno=l.sno
order by l.sno;

-- right outer join
-- oracle style
select *
from stu s, lecture l
where s.sno(+)=l.sno
order by l.sno;

-- use LEFT OUTER JOIN
-- to get inner join results
select *
from tbl1 a left outer join tbl2 b
on a.id=b.id
-- from tbl1 a,tbl2 b
-- where a.id=b.id(+)
where b.id is not null;
/*
2	bbb	2	Mini
2	bbb	2	Avante
3	ccc	3	Sonata
*/


-- use RIGHT OUTER JOIN
-- to get inner join results
select *
from tbl1 a right outer join tbl2 b
on a.id=b.id
where a.id is not null
order by b.id;

-- #################
-- JOIN II
-- #################

create table cat_a
(num number,
name varchar2(1));

insert into cat_a values(1,'A');
insert into cat_a values(2,'B');

commit;

--

create table cat_b
(num  number,
name varchar2(1));

delete from cat_b;

insert into cat_b values(1,'C');
insert into cat_b values(2,'D');

create table cat_c
(num  number,
name varchar2(1));

delete from cat_c;

insert into cat_c values(1,'E');
insert into cat_c values(2,'F');

select * from user_tables;

-- CARTESIAN PRODUCT
-- TBL1 X TBL2 X TBL3
select *
from cat_a,cat_b,cat_c;

-- equijoin
select a.name,b.name,c.name
from cat_a a,cat_b b,cat_c c
where a.num=b.num and b.num=c.num;


-- equijoin and cartesian product
select a.name,b.name,c.name
from cat_a a,cat_b b,cat_c c
where a.num=b.num;

-- EQUIJOIN
-- with OPERATOR =
-- TABLE emp
select e.empno,e.ename,dname
from emp e join dept d
on e.deptno=d.deptno;

-- EQUIJOIN
-- with OPERATOR =
-- TABLE emp
-- Oracle style
select e.empno,e.ename,dname
from emp e,dept d
where e.deptno=d.deptno;

-- ##########
-- Day 6, quiz
-- ##########
desc student;
desc professor;

select s.name student,
        s.profno,
        p.name advisor
from student s join professor p
on s.profno=p.profno;

-- add GROUP BY
select s.profno,
        p.name advisor,
        s.name student
from student s join professor p
on s.profno=p.profno
group by s.profno, p.name, s.name
order by p.name;

-- quiz
select s.name student,
        p.name advisor,
        s.deptno1 major_code
from student s join professor p
on s.profno=p.profno
where s.deptno1=101
order by s.name;

--
commit;

show user;

-- To run SQL script
@"C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts\customer.sql";

-- To run SQL script
@"C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts\gift.sql";

-- non-equijoin
-- 
desc customer;
desc gift;

-- Oracle style
select c.gname,
        to_char(c.point,'999,999'),
        g.gname
from customer c, gift g
where c.point between g.g_start and g.g_end;

select * from customer;
select * from gift;

-- JOIN ON
-- ANSI style
select c.gname,
        to_char(c.point,'999,999'),
        g.gname
from customer c join gift g
on c.point between g.g_start and g.g_end;

-- Comparison operators
-- (= > < >= <= <>)
-- more efficient than
-- bitwise operators (& | ^)
-- logical operators
-- (all, and, any, between, exists, in,
-- like, not, or, some)
select c.gname,
        to_char(c.point,'999,999'),
        g.gname
from customer c join gift g
on c.point >= g.g_start 
    and c.point <= g.g_end;

-- #####################################
-- TABLE score
-- #####################################

-- To run sql script
@"C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts\score.sql";

-- To run sql script
@"C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts\hakjum.sql";

desc score;
select * from score;

-- Oracle style
-- JOIN
SELECT st.name,sc.total,h.grade
FROM student st, score sc, hakjum h
WHERE st.studno=sc.studno 
    AND sc.total>=h.min_point
    AND sc.total<=h.max_point;

desc student;
desc hakjum;
select * from hakjum;

-- ANSI style
SELECT st.name,sc.total,h.grade
FROM student st 
JOIN score sc
ON st.studno=sc.studno 
JOIN hakjum h
ON sc.total>=h.min_point 
    AND sc.total<=h.max_point
ORDER BY h.grade;


-- functions in WHERE clause
-- avoid using them
select s.name ,sc.total,h.grade
from student s, score sc, hakjum h
where decode(s.studno,sc.studno,sc.total)>=h.min_point
and decode(s.studno,sc.studno,sc.total)<=h.max_point;

-- ######################
-- self join
-- ######################

-- ANSI
-- from a join b
-- on 
select e1.job, e1.ename ||' is managed by ' || e2.ename ||', '|| e2.job
from emp e1 join emp e2
on e1.mgr=e2.empno
order by e1.job;

-- Oracle style
-- from a,b
-- where
select e1.job, e1.ename ||' is managed by ' || e2.ename ||', '|| e2.job
from emp e1, emp e2
where e1.mgr=e2.empno
order by e1.job;

-- ####################
-- subquery
-- ####################

select sal
from emp
where lower(ename)='allen';

select ename,sal from emp
where sal >
    (
    select sal
    from emp
    where lower(ename)='allen'
    )
order by sal;
    
update emp
set sal=1600
where lower(ename)='allen';

-- ##############
-- quiz: subquery
-- ##############
-- get people whose commission is lower than Ward's.

select ename,comm
from emp
where lower(ename)='ward';

select ename,comm
from emp
where comm <
        (select comm
        from emp
        where lower(ename)='ward'
        )
order by comm;

/* #######################################
-- Beware:
- Wrap around the RHS of WHERE with ()
- No ORDER BY in subquery
- Distinguish single-line, comparison operators
                vs multiple-line operators
  #######################################
*/

-- subquery 
-- with single-line (= > < >= <= <>) operators

-- run sql script
@"C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts\department.sql";

select * from student;
select deptno1
from student
where lower(name)
='anthony hopkins';

-- Get student name, major name
-- of those studying the same subj.
-- as 'anthony hopkins'
select s.name,d.dname
from student s
join department d
on s.deptno1=d.deptno
where s.deptno1 = (
    select deptno1
from student
where lower(name)
='anthony hopkins'
    );

desc department;
desc student;
-- 
select avg(weight)
from student
where deptno1=201;

select name,weight, (select avg(weight)
        from student
        where deptno1=201) avg_weight
from student
where weight > 
        (select avg(weight)
        from student
        where deptno1=201);

-- using alias
select name,
        weight, 
        (select avg(weight)
        from student
        where deptno1=201) avg_weight
from student
where weight > 
        (select avg(weight)
        from student
        where deptno1=201);

-- ##############################
-- HOMEWORK
-- Q29 - Q40
-- ##############################
       
-- Q29.
desc emp;
select empno
from emp
where deptno=30
order by empno;

-- Q30.
select *
from emp
order by sal desc;

-- Q31.
select *
from emp
order by deptno, sal desc;

-- Q32.
select *
from emp
order by deptno desc, ename, sal desc;

-- Q33.
select ename,sal,comm,sal+comm total_sal
from emp
where comm is not null
order by sal+comm desc;

-- Q34.
select ename,sal,sal*.13 bonus_13pc,deptno
from emp
where deptno=10;

-- Q35.
select ename,deptno,sal,(sal*12+sal*1.5) total_sal
from emp
where deptno=30;

-- Q36.
-- hourly*5*12 = sal
select ename, sal monthly, round(sal/(5*12),1) hourly
from emp
where deptno=20;

-- Q37.
select ename,sal,round(sal*.15,2) fee
from emp
where sal between 1500 and 3000;

-- Q38.
select ename,sal, sal*.15 contribution
from emp
where sal >= 2000;

-- Q39.
select deptno,ename,hiredate,sysdate today,
        trunc(to_date(sysdate,'dd-mon-rrrr') 
        - to_date(hiredate,'dd-mon-yyyy')) days,
        TRUNC(MONTHS_BETWEEN(sysdate, hiredate)/12) years,
        TRUNC(MONTHS_BETWEEN(to_date(sysdate,'dd-mon-rrrr'),
                    to_date(hiredate,'dd-mon-yyyy'))) months,
        trunc((to_date(sysdate,'dd-mon-rrrr')
        - to_date(hiredate,'dd-mon-yyyy'))/7) weeks
from emp;

/*
select trunc(to_date(sysdate,'dd-mon-rrrr')) 
        - to_date(hiredate,'dd-mon-yyyy')
from emp;
*/

-- Q40.
select ename,sal,sal*.9 after_tax
from emp
order by sal desc;

-- ##############################
-- END OF HOMEWORK
-- Q29 - Q40
-- ##############################

-- ######################################
-- Day 7
-- March 19, 2021
-- ######################################


-- ###########################
-- quiz 2
-- use subquery
-- ###########################
select job from emp
where lower(ename)='allen';
select empno,ename,job
from emp
where job= 
        (select job from emp
        where lower(ename)='allen'
        );


-- ###########################
-- quiz 3
-- use subquery
-- get ename, deptno
-- of those with loc='DALLAS'
-- ###########################
select * from dept;
select deptno from dept
where lower(loc)='dallas';

select ename,deptno
from emp
where deptno= 
        (select deptno from dept
        where lower(loc)='dallas'
        );

-- ###########################
-- quiz 4
-- use subquery
-- those with sal equal to or 
-- greater than Allen's
-- ###########################

select sal from emp
where lower(ename)='allen';

select ename,sal from emp
where sal>= 
    (select sal from emp
    where lower(ename)='allen'
     )
order by sal;

-- ###########################
-- quiz 5
-- join
-- ###########################

select empno,ename,sal,d.dname
from emp e
join dept d
on e.deptno=d.deptno
where e.sal>=2000
order by e.sal desc;

-- Oracle-style JOIN
select empno,ename,sal,d.dname
from emp e, dept d
where e.deptno=d.deptno
and e.sal>=2000
order by e.sal desc;

-- ###################################
/*
IN

*/

-- run sql script
@"C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts\dept2.sql";

@"C:\Users\Jieun\OneDrive - tum.de\_lecture notes\scripts\emp2.sql";

desc emp2;
desc dept2;
select * from dept2;
select * from emp2;
select dcode from dept2
where area='Pohang Main Office';

-- ###########################
-- subquery using IN
-- ###########################
select empno,name,deptno
from emp2
where deptno in(
            select dcode from dept2
            where area='Pohang Main Office'
);

-- ###########################
-- subquery using EXISTS
-- ###########################
select * from dept
where exists(
            select deptno from dept
            where deptno=20
);

-- ###########################
-- subquery using EXISTS
-- with user input: &
-- ###########################
select * from dept
where exists(
            select deptno from dept
            where deptno=&num
);
/*
10	ACCOUNTING	NEW YORK
20	RESEARCH	DALLAS
30	SALES	CHICAGO
40	OPERATIONS	BOSTON
*/

-- ###########################
-- IN and & (user input)
-- ###########################
select * from dept
where deptno in(
            select deptno from dept
            where deptno=&num
);
-- 10	ACCOUNTING	NEW YORK

-- ###########################
-- quiz 6
-- ###########################
/* 
WHERE COLUMN_NAME comparison_op ANY (subquery)
where operator stands for a comparison operator
and query is an inner query.
The ANY operator must come 
after a comparison operator >, >=, <, <=, =, <>
and be followed by a subquery.
The keyword SOME is the synonym for ANY.
*/
desc emp2;
select pay from emp2
        where lower(position)='section head';

select name,position,
to_char(pay,'$999,999,999') from emp2
where pay >any
(
        select pay from emp2
        where lower(position)='section head'
);
select pay from emp2
        where lower(position)='section head';

-- ###########################        
-- quiz 7
-- ###########################
desc student;
select weight from student
where grade=2;

select name,grade,weight from student
where weight < any 
            (select weight from student
            where grade=2
            );

-- ###########################
-- quiz 8
-- ###########################

desc dept2;
select dname,avg(pay) avg_sal
from dept2
group by dcode,dname;

select * from emp2;
select * from dept2;

select e.deptno,
        substr(d.dname,1,8) dept,
         substr(e.name,1,8) name,
        to_char(e.pay,'$999,999,999') annual
from emp2 e join dept2 d
on e.deptno=d.dcode
where e.pay < all 
            (select avg(pay)
            from emp2
            group by deptno
            )
order by 4; -- e.pay

-- ###########################
-- subquery
-- returning multiple fieds
-- ###########################

select grade,max(weight)
from student
group by grade;

select grade,name,weight 
from student
where (grade,weight) in 
(
select grade,max(weight)
from student
group by grade
-- returns two fields
)
order by 1; -- grade

-- #########################
-- quiz 
-- #########################
-- min(hiredate):
-- oldest working  professor

select * from department;
select * from professor;

select deptno,
        max(TRUNC(to_date(SYSDATE,'dd-mon-rrrr') 
        - TO_DATE(hiredate,'dd-mon-yyyy'))) days
from professor
group by deptno
order by 1;

select p.profno,p.name,d.dname
from professor p
join department d
on p.deptno=d.deptno
where (p.deptno,
        TRUNC(to_date(SYSDATE,'dd-mon-rrrr') 
        - TO_DATE(hiredate,'dd-mon-yyyy'))
        ) 
        in (
        select deptno,
        max(TRUNC(to_date(SYSDATE,'dd-mon-rrrr') 
        - TO_DATE(hiredate,'dd-mon-yyyy'))) days
        from professor
        group by deptno
        )
order by 1;

-- alternative
-- using MIN(hiredate)
select p.profno,p.hiredate,p.name,d.dname
from professor p
join department d
on p.deptno=d.deptno
where (p.deptno,hiredate) 
        in (
            select deptno,
            min(hiredate)
            from professor
            group by deptno
        )
order by 2; -- p.hiredate

-- ################################
-- 
-- ################################
select position,max(pay)
from emp2
group by position;

select name, '$' || pay/1000000 || 'K' total_sal
from emp2
where (position,pay) in
(select position,max(pay)
from emp2
group by position
);

commit;

-- ####################################
-- Normalization
-- ####################################
/*
 entails organizing the columns and tables
 of a database to ensure that
 their dependencies are properly enforced
 by database integrity constraints
 */
 
 /*
 divides larger tables
 into smaller tables and links them
 using relationships.
 
  eliminates redundant (repetitive) data
  and stores the remaining data logically.
 */
 
/* 
    1nf (First Normal Form)
    2nf (Second Normal Form)
    3nf (Third Normal Form)
    BCNF (Boyce-Codd Normal Form)
    4nf (Fourth Normal Form)
    5nf (Fifth Normal Form)
    6nf (Sixth Normal Form)
*/

-- first nf:
-- identifiy primary key
-- can be a single column or multiple
/*
    Each table cell should contain a single value.
    Each record needs to be unique.
*/

create table orders
(orderdate date,
ordertime timestamp,
prodnum number,
prodname varchar2(100),
quant number,
unitprice number);

desc orders;    

insert into orders values
(''

alter table orders
add constraints pk_order primary key
;
select TO_TIMESTAMP(now) from dual;

-- #########################
-- VIEW
-- aka virtual TABLE
-- 1. simple
-- 2. complex
-- 3. inline
-- 4. materialized
-- #########################

-- Mainly to retreive data
-- Need VIEW privilege
-- system> grant create view to hr

show user;

-- VIEW V_EMP1
create or replace view v_emp1
as select empno,ename,hiredate from emp;

select * from v_emp1;

-- drop, not delete, because
-- there is no data,
-- so NO INSERT,NO MODITY,NO DELETE
drop view v_emp1;

-- #########################
-- INDEX
-- #########################

-- VIEW
-- cannot add constraints nor index
create index idx_v_emp_ename
on v_emp1(ename); -- error

create table o_table
(a number,
b number);

create view view1 
as
select a,b from o_table;

insert into view1 values(1,2);
select * from view1;
select * from o_table;
rollback;

create view view2
as
select a,b from o_table
with read only;

--no DML operation
-- on read-only view
insert into view2 values(1,2); --error

insert into view1 values(3,4);
insert into view1 values(5,6);

select * from view2;
select * from o_table;

-- ##################
-- VIEW
-- WITH CHECK OPTION
-- ##################

create view view3 as
select a,b
from o_table
where a=3
with check option;

select * from view3;

update view1
set a=3
where b=4;

-- WHERE-clause violated
-- error
update view3
set a=5
where b=4;

-- set b=6 where a=3
update view3
set b=6 where a=3;

-- ###################
-- VIEW
-- 

-- V_EMP_DEPT
create view v_emp_dept as
select empno,ename,dname
from emp e join dept d
on e.deptno=d.deptno;

select * from v_emp_dept;

-- #####################
-- 
-- #####################

-- system>
create user nice identified by 111111;
grant connect, resource to nice;
grant create view to nice;

-- ##########################################
-- Day 8
-- March 22, 2021
-- ##########################################

-- quiz

create or replace view v_stu
as
select studno, name,jumin,tel,profno
from student;

drop view v_stu;

-- ################
-- quiz
-- SUBQUERY
-- max pay by hobby
-- get name,position,sal
-- pay asc
-- ################

desc emp2;

select name,substr(position,1,10) job,hobby,pay
from emp2
where (pay,hobby) in(
                    select max(pay), hobby
                    from emp2
                    group by hobby)
order by pay;

select distinct(hobby),name
from emp2;

select count(*) from emp2;

-- ##########################
-- VIEW cont'd
-- ##########################

-- Complex VIEW
-- n.b.
-- complex views involving join
-- can decrease performance
create or replace view v_emp
as
select e.ename,d.dname
from emp e join dept d
on e.deptno=d.deptno;

desc v_emp;
select * 
from v_emp
order by dname;

-- INLINE VIEW
-- one-off, disposable

create or replace view v_emp
as
select e.deptno,max(e.sal) sal,d.dname
from emp e join dept d
on e.deptno=d.deptno
group by e.deptno,d.dname;

-- use UPPERCASE with double quotes
-- else, use lowercase without quotes
-- or e."max_sal"
select e.deptno,e.max_sal,d.dname
from 
      (select deptno,max(sal) max_sal
      from emp
      group by deptno) e
join dept d
on e.deptno=d.deptno
order by deptno;

select * from v_emp;

-- #######################
-- lag, inline view
-- #######################

-- lag
-- you can access the row at a given offset
-- prior to the current row 
-- without using a self-join

select deptno,
        lag(deptno) over(order by deptno)
from professor;

-- to get the diff. 
-- between prev. row and curr.

select deptno,
        lag(deptno,1,0) over(order by deptno) lag,
        deptno -         
        lag(deptno,1,0) over(order by deptno) diff
from professor;

-- print inline view
select lag(deptno) over(order by deptno)
        ndeptno,
        deptno,profno,name
from professor;

--
select decode(deptno,ndeptno,null,deptno) ndeptno,
profno,name
from (
	select lag(deptno) over(order by deptno) ndeptno, deptno, profno,name
from professor
);

-- to check VIEWs
select view_name,text,read_only from user_views;

drop view v_emp;

-- ######################
-- ALTER TABLE
-- ######################

create table aaa
(id number,
name varchar2(10));

-- RENAME TO
alter table aaa
rename to bbb;

-- ADD
-- (fields)

alter table aaa
ADD
(addr varchar2(50));

-- drop column

alter table aaa
DROP COLUMN
addr;

-- insert into
insert into aaa values
(1,'hong','seoul');

-- RENAME COLUMN TO

alter table aaa
RENAME COLUMN addr
TO memo;

-- MODIFY
-- (field data_type)

alter table aaa
MODIFY
(memo char(6));

select * from dept;

alter table dept
rename column depcode
to deptno;


-- ####################
-- SEQUENCE
-- ####################

-- is used to generate a number sequence.
-- This can be useful when you need to create
-- a unique number to act as a primary key.

CREATE SEQUENCE jno_seq
increment by 1
start with 100
maxvalue 110
minvalue 90
cycle
cache 2;

ALTER SEQUENCE jno_seq
minvalue 97;

create table s_order
(ord_no number(4),
ord_name varchar2(10),
p_name varchar2(20),
p_qty number);

select jno_seq.nextval from dual;

insert into s_order values
(jno_seq.nextval,'james','apple',5);

select * from s_order;

insert into s_order values
(jno_seq.currval,'james','apple',5);

-- ##################
-- PROCEDURE
-- ##################

BEGIN
for i in 1..10 loop
    insert into s_order values
    (jno_seq.nextval,'andrew','orange',3);
end loop
commit;
END;
/
select * from s_order;

-- #####################
-- count-down SEQUENCE 
-- #####################

create sequence jno_seq_rev
increment by -2
minvalue 0
maxvalue 20
start with 10;

-- create TABLE
CREATE TABLE s_rev1
(no number);

insert into s_rev1 values
(jno_seq_rev.nextval);
select * from s_rev1;

-- #####################
-- alter sequence
-- #####################

-- CYCLE
alter sequence jno_seq_rev
cycle; -- error

alter sequence jno_seq_rev
cache 2
cycle;

-- CYCLE
-- CACHE 2
alter sequence jno_seq_rev
cache 2
cycle;

-- NO CYCLE
-- CACHE 2
alter sequence jno_seq_rev
cache 2
nocycle;

select * from s_rev1;

-- #####################
-- Initialize SEQUENCE
-- #####################

create table board
(num number primary key,
title varchar2(100),
content varchar2(100),
author varchar2(30),
wday date);

create sequence board_seq
start with 0
minvalue 0;

drop sequence board_seq;

create sequence board_seq;


insert into board values
(2,'title1','body1','John1',sysdate);
select * from board;

-- #########################
-- PROCEDURE re_seq
-- #########################

CREATE OR REPLACE PROCEDURE re_seq
(
	SNAME IN VARCHAR2
)
IS
	VAL NUMBER;
BEGIN
	EXECUTE IMMEDIATE 'SELECT ' || SNAME || '.NEXTVAL FROM DUAL ' INTO  VAL;
	EXECUTE IMMEDIATE 'ALTER SEQUENCE ' || SNAME || ' INCREMENT BY -' || VAL || ' MINVALUE 0';
	EXECUTE IMMEDIATE 'SELECT ' || SNAME || '.NEXTVAL FROM DUAL ' INTO VAL;
	EXECUTE IMMEDIATE 'ALTER SEQUENCE ' || SNAME || ' INCREMENT BY 1 MINVALUE 0';
END;
--

/

exec re_seq('BOARD_SEQ');

--
select board_seq.currval from dual;


-- #####################
-- View USER_SEQUENCES
-- #####################

select * from user_sequences
where sequence_name='BOARD_SEQ';

-- DROP SEQUENCE
drop sequence board_seq;

-- #########################
-- PL/SQL
-- procedural language
-- #########################

-- in order to store procedures in DB
-- and use them multiple times

-- how to compose
/*
DECLARE
--
BEGIN
--body
EXCEPTION
--handle exception
END;
*/

set serveroutput on;
/
begin
    dbms_output.put_line('Hello SQL');
end;
/

-- #####################
-- assign to variable
-- #####################
create or replace procedure hello_sql
is
    i_message varchar2(100):= 'Hello SQL';
begin
    dbms_output.put_line(i_message);
end;
/

exec hello_sql;

-- quiz
-- assign to var_hello
create or replace procedure hello_soldesk
(p1 in varchar2,p2 in varchar2)
is
    i_message varchar2(100):= p1 || p2;
begin
    dbms_output.put_line(i_message);
    dbms_output.put_line('p1 = ' || p1);
    dbms_output.put_line('p2 = ' || p2);
end;
/

exec hello_soldesk('Your course is ','data analysis');

-- ###########
SHOW ERROR;
-- ###########

-- ########################################
-- GRANT EXECUTE ON PROCEDURE p TO george 
-- SET SERVEROUTPUT ON;
-- ########################################

-- #################
-- pass argument
-- into PRODUCEDURE
-- #################

create or replace procedure hello_pl
(p_msg in varchar2)
is
begin
    dbms_output.put_line(p_msg);
end;
/

exec hello_pl('7th hour');

-- ###############################
-- PROCEDURE
-- Pass DEFAULT VALUE to ARGUMENT
-- ###############################
create or replace procedure hello_pl2
(p_msg in varchar2:='default message')
is
begin
    dbms_output.put_line(p_msg);
end;
/

exec hello_pl2('User input');

-- #####################
-- View PROCEDURE
-- #####################

select * from user_objects
where object_name='HELLO_PL2';

-- #####################
-- View PROCEDURE content
-- from USER_SOURCE
-- #####################

--
select * from user_source
where name like '%HELLO%';
/*
HELLO_PL	PROCEDURE	1	"procedure hello_pl"
HELLO_PL	PROCEDURE	2	"(p_msg in varchar2)"
HELLO_PL	PROCEDURE	3	"is"
HELLO_PL	PROCEDURE	4	"begin"
HELLO_PL	PROCEDURE	5	"    dbms_output.put_line(p_msg);"
HELLO_PL	PROCEDURE	6	"end;"
*/

desc departments;
select * from departments;
create or replace inse;

insert into departments values
(280,'Overseas',100,2700);

insert into departments values
(290,'New Insert',null,2700);

--

select object_name,object_type,created
from user_objects
where object_type= 'SEQUENCE';

select departments_seq.currval from dual;
select departments_seq.nextval from dual;

select * from departments;

create or replace procedure add_dept
(p_dept varchar2,mgr_id number,loc_id number)
is
begin
    insert into departments values
    (departments_seq.nextval,
    p_dept,mgr_id,loc_id);
end;
/

exec add_dept('Seoul',200,1700);

show error;

select * from departments;

commit;

-- ############################################
-- START of DAY 9
-- March 23, 2021
-- ############################################

select * from professor;

-- #########################################
-- SELF JOIN
-- LEFT OUTER JOIN
-- ON p1.hiredate < p2.hiredate
-- (Oracle) ON p1.hiredate < p2.hiredate(+)
-- #########################################

-- find the number of people who were hired
-- before the person in a given record
select p1.profno,p1.name,p1.hiredate,
count(p2.hiredate) senior
from professor p1 left outer join professor p2
on p1.hiredate > p2.hiredate
group by p1.profno,p1.name,p1.hiredate
order by 4;

-- ############
-- SUBQUERY
-- ############

-- smallest sal from each dept group
-- get name,sal,deptno
select deptno,min(sal)
from emp
group by deptno;

select ename,sal,deptno
from emp
where (deptno,sal) in (
            select deptno,min(sal)
            from emp
            group by deptno
            );

-- ########################
-- PROCEDURE part 2
-- ########################

create table board2
(bid number,
btitle varchar2(30),
bbody varchar2(100),
bauthor varchar2(20),
bstep number);
desc board2;

-- sequence: board2_seq
-- increment by 1
-- procedure: brd2_insert_p
-- insert into board2

create sequence board2_seq
increment by 1;

select board2_seq.nextval from dual;

-- #####################
-- CREATE PROCEDURE
-- SET serveroutput ON;
-- #####################
/
create or replace procedure brd2_insert_p
(p_title varchar2,
p_body varchar2,
p_author varchar2,
p_step number)
is
begin
    insert into board2 values(board2_seq.nextval,
    p_title,p_body,p_author,p_step);
    dbms_output.put_line('Inserted: '
    ||board2_seq.currval||', '||p_title);
end;
/
show error;

exec brd2_insert_p('Random title','Some text efficitur.','Anon',8);

-- initialize the sequence
exec re_seq('BOARD2_SEQ');

set serveroutput on;

select * from board2;
select board2_seq.nextval from dual;
/


-- ########################
-- CREATE PROCEDURE part 3
-- SET serveroutput ON;
-- ########################

create or replace procedure sumprint_p
(num1 number)
is
    --num1 number:=0;
    --sum1 number:=0; -- 
num1 number :=0;
sum1 :=0; -- 
begin
    num1:=num1+1;
    sum1:=sum1+num1;
    dbms_output.put_line('num1: '||num1||', sum: '||sum1);
end;
/

exec sumprint_p(0,1);

--
create or replace procedure sum2_p
is
    num1 number := 0;
    sum1 number := 0;
begin
    loop
        num1 := num1+1;
        sum1 := sum1 + num1;
        dbms_output.put_line(num1||', '||sum1);
        exit when num1=10;
    end loop;
    dbms_output.put_line('Summing 1 to 10: '||sum1);
end;
/

exec sum2_p;

commit;

-- #######
-- quiz
-- #######

-- insert five records
-- using procedure
-- using loop

create or replace procedure board3_p
    (title varchar2,
    body varchar2,
    author varchar2,
    step number)
is
    num1 number:=0;
begin
    loop        
        num1:=num1+1;
        insert into board2 values
        (board2_seq.nextval,title||num1,body||num1,author||num1,step||num1);
        exit when num1=5;
    end loop;
    dbms_output.put_line(board2_seq.currval||', '||title||', '||num1);
end;
/
set serveroutput on;
exec board3_p('Test title','lorem ipsum text','anon',323);


--
-- procedure
-- update
-- get bid,title,content

select * from board2;

create or replace procedure brd2_update_p
    (id number,title varchar2,body varchar2)
is
begin
    update board2
    set btitle=title, bbody=body
    where bid= id;
    dbms_output.put_line('Post '||id||' changed.');
end;
/

exec brd2_update_p(22,'New title 22','New body 22');
select * from board2
where bid > 20;

-- ##########################
-- PROCEDURE part 4
-- ##########################

desc employees;
select extract(year from hire_date) from employees;

select employee_id,last_name,hire_date
from employees
where extract(year from hire_date) = yr;


-- #################################
-- PROCEDURE
-- open cursor_name;
-- loop
--   fetch cursor_name;
--   exit when cursor_name%notfound;
-- end loop;
-- ##################################

CREATE OR REPLACE PROCEDURE getyear_p
(pyear number)
is
--DECLARE
--  r_emp employees%ROWTYPE;  
--  r_emp employees%ROWTYPE;
  cnt number:=0;
--  l_contact_first_name contacts.first_name%TYPE;
--  l_contact_last_name contacts.last_name%TYPE;

--    id employees.employee_id%TYPE;
--    name employees.last_name%TYPE;
--    hdate employees.hire_date%TYPE;
    cursor r_emp_cur 
    is 
        select *
        from employees
        where extract(year from hire_date)=pyear;
begin
    --open r_emp_cur;
    for emp in r_emp_cur
    loop
        --cnt:=cnt+1;
--        fetch r_emp_cur 
--        into r_emp.employee_id,
--             r_emp.last_name,
--             r_emp.hire_date;
--        exit when r_emp_cur%NOTFOUND;
        dbms_output.put_line('########################################');
        dbms_output.put_line('Row'||cnt||' EMP_ID: '
        ||emp.employee_id||        
        ', Name: '||emp.first_name||
        ' '||emp.last_name||', hdate: '||
        upper(to_char(emp.hire_date,'DD-MON-RRRR')));
        --dbms_output.put_line('########################################');
    end loop;
    --close r_emp_cur;
end;
/

-- EXECUTE PROCEDURE
EXEC getyear_p(2002);

select * from employees
where extract(year from hire_date)=2002;

-- ################################
-- quiz
-- CREATE PROCEDURE
-- get deptno1
-- and print studno,name,deptno1
-- stu_select_p
-- ################################
drop procedure stu_p;

create or replace procedure stu_select_p
(p_deptno number)
is
    cnt number;
    cursor stu_cur
    is
        select *
        from student
        where deptno1=p_deptno;
begin
    cnt :=0;
    for stu in stu_cur 
    loop
        cnt:=cnt+1;
        dbms_output.put_line('##########################');
        dbms_output.put_line('Result '||
        to_char(cnt)||
        ': '||stu.studno||', '||stu.name||', '||stu.deptno1);
    end loop;
end;
/
exec stu_select_p(201);

commit;

-- #########################
-- TRIGGER
-- create trigger ___
--   after insert on ___
--   for each row
-- declare
-- begin ___ end;
-- #########################

create table test01
(num number not null,
name varchar2(10),
a number,
b number);

insert into test01 values
(1,'aaa',10,20);

--delete from test01;

-- ##########################
-- CREATE TABLE AS
-- includes existing records
-- ##########################
create table test02
as
    select * from test01;
    
drop table test02;

-- ################################
-- CREATE TABLE AS 
-- with the table schema
-- without the records
-- SELECT .. FROM .. WHERE ..
-- ################################

create table test02
as
    select * from test01 where 1=2;

select * from test02;

-- ##########################
-- CREATE TRIGGER
-- ##########################

CREATE OR REPLACE TRIGGER in_test02
-- triggered when
    after insert on test01
    for each row
 declare
begin
        insert into test02 values
        (:new.num,:new.name,:new.a,:new.b);
end;
/

insert into test01 values
(1,'aaa',10,20);
insert into test01 values
(2,'bbb',10,20);
select * from test01;

-- ######################
-- DROP TRIGGER
-- ######################
drop trigger in_test02;

insert into test01 values
(3,'ccc',10,20);

select * from test02;

----

create or replace procedure test_p(
deptno number
)
is
    stu student%rowtype;
    cursor stu_cursor is select studno,name,deptno1 from student where deptno1=deptno;
begin
    open stu_cursor;
    
    loop
        fetch stu_cursor into stu.studno,stu.name,stu.deptno1;
        exit when stu_cursor%notfound;
        dbms_output.put_line(concat(stu.studno,concat(',',concat(stu.name,concat(',',stu.deptno1)))));
    end loop;
    close stu_cursor;
end;
/
set serveroutput on;
exec test_p(101);

commit;

-- ######################################
-- END OF DAY 9
-- ######################################


-- ######################################
-- START OF DAY 10
-- March 24, 2021
-- ######################################

-- Q41.
-- You can use the plus operator 
-- to add days to a date.
desc emp;
select ename,hiredate,
(hiredate+90) after90days, sal
from emp;

-- Q42.
-- ADD_MONTHS

--SELECT TO_CHAR(
--     ADD_MONTHS(hire_date,1),
--     'DD-MON-YYYY') "Next month"
--     FROM employees 
--     WHERE last_name = 'Baer';

select 
;
-- ###################################
-- INDEX
-- special lookup tables that 
-- the database search engine can use
-- to speed up data retrieval. 
-- Simply put, an index is a pointer
-- to data in a table.
-- ###################################


select rowid,length(rowid),empno,ename
from emp
where empno=7902;
-- AAAE9TAAEAAAAHsAAJ	18	7902	FORD

-- ##########################
--          ROW ID
-- AAAE9TAAEAAAAHsAAJ
-- ##########################
-- AAAE9T: data object code
-- AAE: file code
-- AAAAHs: block code
-- AAJ: row code
-- ##########################

-- ##########################
-- WHERE TO USE INDEX
-- give index on columns 
-- you use on WHERE clause
-- ##########################

-- ##########################
-- INDEX fragmentation
-- when rows are deleted
-- ##########################
-- Index Fragmentation percentage varies
-- when the logical page orders don’t 
-- coordinate with the physical page order
-- in the page allocation of an index. 
-- ######################################

-- ###################
-- IMPORT DATA
-- bigEmployees.csv
-- ###################
desc bigemp;
select count(*) from bigemp;

-- ################
-- CREATE INDEX
-- ____ ON _____
-- ################

create index emp_idx
on emp(empno);

-- ######################
-- 
-- ######################
select * from user_indexes
where table_name='EMP';

-- ######################
-- index performance
-- ######################
create table emp10
as
select * from bigemp
order by dbms_random.value;

create table emp_idx
as
select * from bigemp
order by dbms_random.value;

select * FROM emp10
where rownum<=5;


select * FROM emp_idx
where rownum<=5;

-- ######################
-- 
select * from user_indexes
where table_name='EMP10';
-- 
select * from user_indexes
where table_name='EMP_IDX';

-- ######################
--
create index idx_empidx_empno
on emp_idx(emp_no);

-- ######################
select index_name,index_type,
blevel,leaf_blocks,distinct_keys,
num_rows
from user_indexes
where table_name='EMP_IDX';

-- EMP10
-- performance: .007 seconds
-- .051 seconds
select * from emp10
--where emp_no<10100;
where emp_no=20100; -- .1 second

-- EMP_IDX
-- performance: .005 seconds
-- .031 seconds
select * from emp_idx
--where emp_no<10100;
where emp_no=20100; -- .016 second

-- ######################
-- SYSTEM USER
--
-- ######################
alter system flush buffer_cache;
alter system flush shared_pool;

show user;

-- ####################
-- rebuild INDEX
-- fragmentation ratio
-- ####################

create table inx_test
(no number);

-- ######################
-- insert into
-- ######################
/
begin
for i in 1..10000 loop
    insert into inx_test values
    (i);
end loop;
end;
/

select count(*) from inx_test;

-- create index
create index idx_inxtest_no
on inx_test(no);

-- ######################
-- analyze
-- ######################
analyze index idx_inxtest_no
validate structure;

-- ######################
-- view fragmentation ratio
-- ######################
select (del_lf_rows_len/lf_rows_len) ratio
from index_stats
where name='IDX_INXTEST_NO';

-- delete from 
delete from inx_test
where no between 1 and 4000;

-- ######################
-- rebuild/adjust INDEX
-- ######################

alter index idx_inxtest_no rebuild;

commit;

-- #######################
-- BACKUP
-- #######################

-- #######################
-- SYSTEM USER
-- #######################
conn system

-- ############################
-- create directory for backup
-- ############################
create or replace directory mdBackup 
as 'C:\Users\Jieun\OneDrive - tum.de\_lecture notes\db_backup';

-- #######################
-- grant ____ on directory ____ to ____
-- #######################
grant read,write on directory mdBackup to hr;

-- #######################
-- run cmd
-- #######################
cd C:\Users\Jieun\OneDrive - tum.de\_lecture notes\db_backup

-- #######################
-- backup as dumpfile
-- #######################
expdp hr/123456 directory=mdBackup dumpfile=hr.dump

-- #######################
-- restore db from dumpfile
-- #######################
impdp hr/123456 directory=mdBackup dumpfile=hr.dump

commit;

