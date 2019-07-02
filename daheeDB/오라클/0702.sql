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