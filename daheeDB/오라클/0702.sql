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