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