-- ############################################
-- START
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
        
-- #################################
-- March 18, 2021
-- #################################

-- Q29.
--desc emp;
SELECT empno
FROM emp
WHERE DEPTNO=30
ORDER BY empno;

-- Q30.
SELECT *
FROM emp
ORDER BY sal DESC;

-- Q31.
SELECT *
FROM emp
ORDER BY deptno, sal DESC;

-- Q32.
SELECT *
FROM emp
ORDER BY deptno DESC, ename, sal DESC;

-- Q33.
SELECT ename,sal,comm,sal+comm total_sal
FROM emp
WHERE comm IS NOT NULL
ORDER BY sal+comm DESC;

-- Q34.
SELECT ename,sal,sal*.13 bonus_13pc,deptno
FROM emp
WHERE deptno=10;

-- Q35.
SELECT ename,deptno,sal,(sal*12+sal*1.5) total_sal
FROM emp
WHERE deptno=30;

-- Q36.
-- hourly*5*12 = sal
SELECT ename, sal monthly, ROUND(sal/(5*12),1) hourly
FROM emp
WHERE deptno=20;

-- Q37.
SELECT ename,sal,round(sal*.15,2) fee
FROM emp
WHERE sal BETWEEN 1500 AND 3000;

-- Q38.
SELECT ename,sal, sal*.15 contribution
FROM emp
WHERE sal >= 2000;

-- Q39.
SELECT deptno,ename,hiredate,SYSDATE today,
        TRUNC(to_date(SYSDATE,'dd-mon-rrrr') 
        - TO_DATE(hiredate,'dd-mon-yyyy')) days,
        TRUNC(MONTHS_BETWEEN(SYSDATE, hiredate)/12) years,
        TRUNC(MONTHS_BETWEEN(TO_DATE(sysdate,'dd-mon-rrrr'),
                    TO_DATE(hiredate,'dd-mon-yyyy'))) months,
        TRUNC((TO_DATE(SYSDATE,'dd-mon-rrrr')
        - TO_DATE(hiredate,'dd-mon-yyyy'))/7) weeks
FROM emp;

-- Q40.
SELECT ename,sal,sal*.9 after_tax
FROM emp
ORDER BY sal DESC;


-- ###

-- 41번 입사일로부터 90일이 지난 후의 사원이름, 입사일, 90일 후의 날, 급여를 출력하라.

-- 42번 입사일로 부터 6개월이 지난 후의 입사일, 6개월 후의 날짜, 급여를 출력하라.

-- 43번 입사한 달의 근무일수를 계산하여 부서번호, 이름, 근무일수를 출력하라.

-- 44번 모든 사원의 60일이 지난 후의 MONDAY 는 몇 년 , 몇 월, 몇 일 인가를 구하여
-- 이름, 입사일, MONDAY를 출력하라.

-- 45번 입사일로부터 오늘까지의 일수를 구하여 이름, 입사일, 근무일수를 출력하라.


-- ############################################
-- END
-- ############################################