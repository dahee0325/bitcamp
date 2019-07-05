----------------------------------------- 과제2 ------------------------------------------------------
--EMP 테이블과 DEPT 테이블을 이용해서 풀이해 주세요.
--1. 덧셈연산자를 이용하여 모든 사원에 대해서 $300의 급여 인상을 계산한 후 사원의 이름, 급여, 인상된 급여를 출력하시오.
select ename 사원명, sal 급여, sal+300 인상급여
from emp;

--2. 사원의 이름, 급여, 연간 총 수입을 총 수입이 많은 것부터 작은 순으로 출력하시오, 연간 총수입은 월급에 12를 곱한 후 $100의 상여금을 더해서 계산하시오.
select ename 사원명, sal 급여, sal*12+100 연간총수입 from emp
order by sal*12+100 desc;

--3. 급여가 2000을 넘는 사원의 이름과 급여를 표현, 급여가 많은 것부터 작은 순으로 출력하시오.
select ename 사원명, sal 급여
from emp
where sal > 2000
order by sal desc;

--4. 사원번호가 7788인 사원의 이름과 부서번호를 출력하시오.
select ename 사원명, deptno 부서번호
from emp
where empno = 7788;

--5. 급여가 2000에서 3000 사이에 포함되지 않는 사원의 이름과 급여를 출력하시오.
select ename 사원명, sal 급여
from emp
where sal not between 2000 and 3000;

--6. 1981년 2월 20일 부터 1981년 5월 1일 사이에 입사한 사원의 이름, 담당업무, 입사일을 출력하시오.
select ename 사원명, job 담당업무, hiredate 입사일
from emp
where hiredate between '1981/02/20' and '1987/05/01';

--7. 부서번호가 20 및 30에 속한 사원의 이름과 부서번호를 출력, 이름을 기준(내림차순)으로 영문자순으로 출력하시오/
select ename 사원명, deptno 부서번호
from emp
where deptno in(20,30)
order by ename desc;

--8. 사원의 급여가 2000에서 3000사이에 포함되고 부서번호가 20 또는 30인 사원의 이름, 급여와 부서번호를 출력, 이름순(오름차순)으로 출력하시오.
select ename 사원명, sal 급여, deptno 부서번호
from emp
where sal between 2000 and 3000 and deptno in(20,30)
order by ename;

--9. 1981년도에 입사한 사원의 이름과 입사일을 출력하시오. (like 연산자와 와일드카드 사용)
select ename 사원명, hiredate 입사일
from emp
where hiredate like '81%';

--10. 관리자가 없는 사원의 이름과 담당 업무를 출력하시오.
select ename 사원명, job 담당업무
from emp
where mgr is null;

--11. 커미션을 받을 수 있는 자격이 되는 사원의 이름, 급여, 커미션을 출력하되 급여 및 커미션을 기준으로 내림차순 정렬하여 표시하시오.
select ename 사원명, sal 급여, comm 커미션
from emp
where not(comm is null or comm = 0)
order by sal desc, comm desc;

--12. 이름의 세번째 문자가 R인 사원의 이름을 표시하시오.
select ename 사원명
from emp
where ename like '__R%';

--13. 이름에 A와 E를 모두 포함하고 있는 사원의 이름을 표시하시오.
select ename 사원명
from emp
where ename like '%A%' and ename like '%E%';

--14. 담당업무가 CLERK, 또는 SALESMAN이면서 급여가 $1600, $950 또는 $1300이 아닌 사원의 이름, 담당업무, 급여를 출력하시오.
select ename 사원명, job 담당업무, sal 급여
from emp
where job in('CLERK','SALESMAN') and sal not in(1600,950,1300);

--15. 커미션이 $500 이상인 사원의 이름과 급여 및 커미션을 출력하시오.
select ename 사원명, sal 급여, comm 커미션
from emp
where comm >= 500;


----------------------------------------- 과제2 ------------------------------------------------------

--1 마당서점의고객이요구하는다음질문에대해SQL 문을작성하시오.
--(1) 도서번호가1인도서의이름
select bookname 도서명
from book
where bookid = 1
;
-- 축구포함된 책이름
-- where bookname like '%축구%'

--(2) 가격이20,000원이상인도서의이름
select bookname 도서명
from book
where price>=20000;

--(3) 박지성의총구매액(박지성의고객번호는1번으로놓고작성)
/*select sum(saleprice) 총구매액, count(*) "구매횟수"
from orders
where custid = 1;*/

select sum(saleprice) 총구매액
from orders o, customer c
where o.custid = c.custid and c.name = '박지성'
;

--(4) 박지성이구매한도서의수(박지성의고객번호는1번으로놓고작성)
select count(*) 구매한도서의수
from orders o, customer c
where o.custid = c.custid and c.name = '박지성'
;

--2 마당서점의운영자와경영자가요구하는다음질문에대해SQL 문을작성하시오.
--(1) 마당서점도서의총개수
select count(*) 책의총개수
from book;

--(2) 마당서점에도서를출고하는출판사의총개수
select count(DISTINCT publisher) 출판사개수
from book;

--(3) 모든고객의이름, 주소
select name 고객명, address 주소
from customer;

--(4) 2014년7월4일~7월7일사이에주문받은도서의주문번호
select orderid 주문번호
from orders
where orderdate between '14/07/04' and '14/07/07';

--(5) 2014년7월4일~7월7일사이에주문받은도서를제외한도서의주문번호
select orderid 주문번호
from orders
where orderdate not between '14/07/04' and '14/07/07';

--(6) 성이‘김’씨인고객의이름과주소
select name 고객명,address 주소
from customer where name like '김%';

--(7) 성이‘김’씨이고이름이‘아’로끝나는고객의이름과주소
select name 고객명,address 주소
from customer where name like '김%아';


----------------------------------------- 과제3 ------------------------------------------------------
--16. SUBSTR 함수를 사용하여 사원들의 입사한 년도와 입사한 달만 출력하시오.
select substr(hiredate,1,5) "입사년/달"
from emp
;

--17. SUBSTR 함수를 사용하여 4월에 입사한 사원을 출력하시오.
select ename
from emp
where substr(hiredate,4,2) = 04
;

--18. MOD 함수를 사용하여 사원번호가 짝수인 사람만 출력하시오.
select ename
from emp
where mod(empno, 2) = 0
;

--19. 입사일을 년도는 2자리(YY), 월은 숫자(MON)로 표시하고 요일은 약어 (DY)로 지정하여 출력하시오.
select to_char(hiredate,'YY MON(DY)')
from emp;

--20. 올해 몇 칠이 지났는지 출력하시오. 현재날짜에서 올해 1월 1일을 뺀 결과를 출력하고 TO_DATE 함수를 사용하여 데이터 형을 일치 시키시오.
select trunc(sysdate-to_date('2019/01/01', 'YYYY/MM/DD')) "지난날"
from dual
;

--21. 사원들의 상관 사번을 출력하되 상관이 없는 사원에 대해서는 NULL 값 대신 0으로 출력하시오.
select nvl(mgr, 0) "상관 사번"
from emp
;

--22. DECODE 함수로 직급에 따라 급여를 인상하도록 하시오. 직급이 ‘ANALIST”인 사원은 200, ‘SALESMAN’인 사원은 180, ‘MANAGER’인 사원은 150, ‘CLERK”인 사원은 100을 인상하시오.
select ename "사원명", job "직급", sal "급여", nvl(decode(job, 'ANALYST', sal+200, 'SALESMAN', sal+180, 'MANAGER', sal+150, 'CLERK', sal+100), sal) "인상 급여"
from emp
order by job
;

--23. 모든 사원의 급여 최고액, 최저액, 총액 및 평균 급여를 출력하시오. 평균에 대해서는 정수로 반올림하시오.
select max(sal) 최고급여, min(sal) 최저급여, sum(sal) 총급여, round(avg(sal)) 평균급여
from emp;

--24. 각 담당 업무 유형별로 급여 최고액, 최저액, 총액 및 평균 액을 출력하시오. 평균에 대해서는 정수로 반올림 하시오.
select job "담당 업무", max(sal) "최고 급여", min(sal) "최저 급여", sum(sal)"총 급여", round(avg(sal)) "평균 급여"
from emp
group by job
;

--25. COUNT(*) 함수를 이용하여 담당업무가 동일한 사원 수를 출력하시오.
select job, count(*) "업무별 사원수"
from emp
group by job
;

--26. 관리자 수를 나열하시오.
select nvl(mgr, 0), count(*)
from emp
group by mgr
;

--27. 급여 최고액, 급여 최저액의 차액을 출력하시오.
select max(sal)-min(sal) "차액"
from emp
;

--28. 직급별 사원의 최저 급여를 출력하시오. 관리자를 알 수 없는 사원의 최저 급여가 2000 미만인 그룹은 제외시키고 결과를 급여에 대한 내림차순으로 정렬하여 출력하시오.
select job "직급", min(sal) "최저 급여"
from emp
where mgr>0
--where mgr is not null
group by job
having min(sal) > 2000
order by min(sal) desc
;

--29. 각 부서에 대해 부서번호, 사원 수, 부서 내의 모든 사원의 평균 급여를 출력하시오. 평균 급여는 소수점 둘째 자리로 반올림 하시오.
select deptno "부서번호", count(*) "사원 수", round(avg(sal),1) "평균 급여"
from emp
group by deptno
;

--30. 각 부서에 대해 부서번호 이름, 지역 명, 사원 수, 부서내의 모든 사원의 평균 급여를 출력하시오. 평균 급여는 정수로 반올림 하시오. DECODE 사용.
select decode(deptno, 10,'ACCOUNTING',20,'RESEARCH',30,'SALES',40,'OPERATIONS') "부서명",
       decode(deptno,10,'NEW YORK', 20, 'DALLAS', 30, 'CHICAGO', 40,'BOSTON') "지역명" ,
       count(*) "사원 수", round(avg(sal),1) "평균 급여"
from emp
group by deptno
;

--31. 업무를 표시한 다음 해당 업무에 대해 부서 번호별 급여 및 부서 10, 20, 30의 급여 총액을 각각 출력하시오. 별칭은 각 job, dno, 부서 10, 부서 20, 부서 30, 총액으로 지정하시오.( hint. Decode, group by )
select job "JOB",deptno "DNO",decode(deptno,10,sum(sal)) "부서10", decode(deptno,20,sum(sal)) "부서20", decode(deptno,30,sum(sal)) "부서30", sum(sal) "총액"
from emp
group by deptno, job
order by deptno
;


----------------------------------------- 과제4 ------------------------------------------------------
--32. EQUI 조인을 사용하여 SCOTT 사원의 부서번호와 부서 이름을 출력하시오.
select d.deptno "부서번호", d.dname "부서이름"
from emp e, dept d
where e.deptno=d.deptno and e.ename='SCOTT'
;

--33. INNER JOIN과 ON 연산자를 사용하여 사원 이름과 함께 그 사원이 소속된 부서이름과 지역 명을 출력하시오.
select e.ename "사원이름", d.dname "부서이름", d.loc "지역명"
from emp e inner join dept d
on e.deptno = d.deptno
;

--36. 조인과 WildCARD를 사용하여 이름에 ‘A’가 포함된 모든 사원의 이름과 부서명을 출력하시오.
select e.ename "사원이름", d.dname "부서이름"
from emp e, dept d
where e.deptno=d.deptno and e.ename like '%A%'
;

--37. JOIN을 이용하여 NEW YORK에 근무하는 모든 사원의 이름, 업무, 부서번호 및 부서명을 출력하시오.
select e.ename "사원이름",e.job "업무", d.deptno "부서번호", d.dname "부서이름"
from emp e, dept d
where e.deptno=d.deptno and d.loc = 'NEW YORK'
;

--38. SELF JOIN을 사용하여 사원의 이름 및 사원번호, 관리자 이름을 출력하시오.
select m.ename "사원이름", m.empno "사원번호", e.ename "관리자 이름"
from emp e, emp m
where e.empno = m.mgr
;

--39. OUTER JOIN, SELF JOIN을 사용하여 관리자가 없는 사원을 포함하여 사원번호를 기준으로 내림차순 정렬하여 출력하시오.
select m.ename "사원이름", m.empno "사원번호", e.ename "관리자 이름"
from emp e, emp m
where e.empno(+) = m.mgr
order by e.empno desc
;

--40. SELF JOIN을 사용하여 지정한 사원의 이름, 부서번호, 지정한 사원과 동일한 부서에서 근무하는 사원을 출력하시오. ( SCOTT )
select e.ename "지정한사원이름", e.deptno "부서번호", m.ename "사원이름"
from emp e, emp m
where e.deptno = m.deptno and e.ename = 'SCOTT'
;

--41. SELF JOIN을 사용하여 WARD 사원보다 늦게 입사한 사원의 이름과 입사일을 출력하시오.
select m.ename "사원이름", m.hiredate "입사일"
from emp e, emp m
where e.ename = 'WARD' and e.hiredate < m.hiredate
;

--42. SELF JOIN 을 사용하여 관리자보다 먼저 입사한 모든 사원의 이름 및 입사일을 관리자의 이름 및 입사일과 함께 출력하시오.
select m.ename "사원이름" , m.hiredate "사원 입사일", e.ename "관리자이름", e.hiredate "관리자 입사일"
from emp e, emp m
where e.empno = m.mgr and e.hiredate > m.hiredate
;
