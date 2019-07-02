-- DESC : 테이블의 컬럼들의 도메인속성(이름, 데이터 형, 길이와 NULL 허용 유무 등)과 같은 특정 테이블의 정보를 알려준다.
-- 테이블의 컬럼들의 도메인 속성을 확인
-- 데이터 입력 시, 데이터 수정시 확인하고 데이터를 입력,수정 해야한다.
DESC emp;

-- 데이터를 검색하는 명령
-- select(컬럼이듬,...) from 테이블 이름
select * from dept;
select deptno from dept;--모든 부서의 부서번호를 검색
select dname from dept;--모든 부서의 부서이름을 검색
-- dept테이블에서 필요한 컬럼을 선택해서 출력
select dname, loc, deptno from dept;

-- emp 테이블 확인
desc emp;
select * from emp;
--사원의 번호, 이름의 리스트 출력
select empno, ename from emp;

--컬럼의 사칙연산
select sal, comm from emp;
--null : 있는값X, 없는값X - 무한대의 의미표현도 됨 : 아직입력되지않는 값
--정해지지않는 값인 null 에 다른값을 더해도 null이 나온다.
select sal + comm from emp;

select ename, sal, sal + 100 from emp;
select ename, sal, sal - 100 from emp;
select ename, sal, sal * 12 from emp;
select ename, sal, sal / 5 from emp;

--nvl 함수 : 특정 컬럼의 데이터가 null인경우 특정 데이터로 치환해주는 함수
--nvl(컬럼이름, 치환값)
select ename, sal, comm, sal*12+comm from emp;
select ename, sal, comm, sal*12+nvl(comm,0) from emp;
select ename, sal, comm, nvl(comm,0), sal*12+nvl(comm,0) from emp;
--컬럼의 이름 지어주기 as 또는 띄어쓰기 후 이름지정
select ename, sal, comm, nvl(comm,0), sal*12+nvl(comm,0) as ySall from emp;
select ename, sal, comm, nvl(comm,0), sal*12+nvl(comm,0) ySall from emp;

--컬럼과 문자열을 연결하는 결과 출력, sql 에서 문자열 표현은 '' 로 묶는다.
select ename || ' is a ' || job str from emp;

--distinct : 컬럼값에서 중복되는값을 제거하고 하나의 데이터만 출력해준다.
select deptno from emp;
select distinct deptno from emp;
--두개의 컬럼값을 distinct 로 하면 두개의 값이 중복되지않게 출력해준다.ㅊㅇ
select distinct deptno, job from emp;

--select 의 조건절 : select 컬럼명 from 테이블명 where 조건식(true/false);
--where 의 조건은 행(row)을 찾는다 : 조건에 맞는 행을 출력
--deptno가 10인 dname을 출력
select dname from dept where deptno = 10;
select empno, ename,job from emp where deptno = 10;