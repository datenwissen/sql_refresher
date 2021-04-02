--show user;

--select * from tab;

drop table dept;

drop table emp;

 

CREATE TABLE DEPT

(DEPTNO number(10),

DNAME VARCHAR2(14),

LOC VARCHAR2(13) );

 

INSERT INTO DEPT VALUES (10, 'ACCOUNTING', 'NEW YORK');

INSERT INTO DEPT VALUES (20, 'RESEARCH', 'DALLAS');

INSERT INTO DEPT VALUES (30, 'SALES', 'CHICAGO');

INSERT INTO DEPT VALUES (40, 'OPERATIONS', 'BOSTON');

select * from dept;

 

CREATE TABLE EMP (

EMPNO NUMBER(4) NOT NULL,

ENAME VARCHAR2(10),

JOB VARCHAR2(9),

MGR NUMBER(4) ,

HIREDATE DATE,

SAL NUMBER(7,2),

COMM NUMBER(7,2),

DEPTNO NUMBER(2) );

 

rollback;

select * from emp;

--dept???? primary key ??

alter table dept add constraint pk_dept_deptno primary key(deptno);

 

--dept ???? ???? ??? ???? emp?????? ????? ??? fk_deptno

alter table emp add constraint fk_deptno foreign key(deptno) references dept(deptno);

 
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

 

select * from emp;

-- Q1
-- emp ????? ????? 10?? ??? ?? ?
-- ????, ??, ??? ??? ??? ?????. (?, ?? ???? ??) 

SELECT empno,ename,sal
FROM emp
WHERE deptno=10;

-- Q2
DESC emp;

SELECT empno,ename,job,mgr,hiredate,sal,comm,deptno
FROM emp
WHERE ename='ALLEN';

-- Q3
DESC emp;

SELECT empno,ename,job,mgr,hiredate,sal,comm,deptno
FROM emp
WHERE job!='MANAGER';

-- Q4
SELECT ename,job,sal
FROM emp
WHERE sal>1600 AND sal<3000;

--
select ascii('B') from dual;
select ascii('K') from dual;

-- Q5
SELECT empno,ename,job,mgr,hiredate,sal,comm,deptno
FROM emp
WHERE ASCII(substr(ename,1,1)) >= ASCII('B') AND
ASCII(substr(ename,1,1)) <= ASCII('J')
ORDER BY ename;