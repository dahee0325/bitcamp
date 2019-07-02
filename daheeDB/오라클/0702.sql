-- DESC : ���̺��� �÷����� �����μӼ�(�̸�, ������ ��, ���̿� NULL ��� ���� ��)�� ���� Ư�� ���̺��� ������ �˷��ش�.
-- ���̺��� �÷����� ������ �Ӽ��� Ȯ��
-- ������ �Է� ��, ������ ������ Ȯ���ϰ� �����͸� �Է�,���� �ؾ��Ѵ�.
DESC emp;

-- �����͸� �˻��ϴ� ���
-- select(�÷��̵�,...) from ���̺� �̸�
select * from dept;
select deptno from dept;--��� �μ��� �μ���ȣ�� �˻�
select dname from dept;--��� �μ��� �μ��̸��� �˻�
-- dept���̺��� �ʿ��� �÷��� �����ؼ� ���
select dname, loc, deptno from dept;

-- emp ���̺� Ȯ��
desc emp;
select * from emp;
--����� ��ȣ, �̸��� ����Ʈ ���
select empno, ename from emp;

--�÷��� ��Ģ����
select sal, comm from emp;
--null : �ִ°�X, ���°�X - ���Ѵ��� �ǹ�ǥ���� �� : �����Էµ����ʴ� ��
--���������ʴ� ���� null �� �ٸ����� ���ص� null�� ���´�.
select sal + comm from emp;

select ename, sal, sal + 100 from emp;
select ename, sal, sal - 100 from emp;
select ename, sal, sal * 12 from emp;
select ename, sal, sal / 5 from emp;

--nvl �Լ� : Ư�� �÷��� �����Ͱ� null�ΰ�� Ư�� �����ͷ� ġȯ���ִ� �Լ�
--nvl(�÷��̸�, ġȯ��)
select ename, sal, comm, sal*12+comm from emp;
select ename, sal, comm, sal*12+nvl(comm,0) from emp;
select ename, sal, comm, nvl(comm,0), sal*12+nvl(comm,0) from emp;
--�÷��� �̸� �����ֱ� as �Ǵ� ���� �� �̸�����
select ename, sal, comm, nvl(comm,0), sal*12+nvl(comm,0) as ySall from emp;
select ename, sal, comm, nvl(comm,0), sal*12+nvl(comm,0) ySall from emp;

--�÷��� ���ڿ��� �����ϴ� ��� ���, sql ���� ���ڿ� ǥ���� '' �� ���´�.
select ename || ' is a ' || job str from emp;

--distinct : �÷������� �ߺ��Ǵ°��� �����ϰ� �ϳ��� �����͸� ������ش�.
select deptno from emp;
select distinct deptno from emp;
--�ΰ��� �÷����� distinct �� �ϸ� �ΰ��� ���� �ߺ������ʰ� ������ش�.����
select distinct deptno, job from emp;

--select �� ������ : select �÷��� from ���̺�� where ���ǽ�(true/false);
--where �� ������ ��(row)�� ã�´� : ���ǿ� �´� ���� ���
--deptno�� 10�� dname�� ���
select dname from dept where deptno = 10;
select empno, ename,job from emp where deptno = 10;