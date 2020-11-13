select * from emp;

select sum(sal) as total from emp;
select round(avg(sal),2) as total from emp;

select max(sal) from emp;
select min(sal) from emp;

select count(*) as cnt from emp;

select job,count(*) from emp
group by job
having job ='SALESMAN';

--ex1) �л����� ��� ������ ���϶�.
select avg(����) as ��ս��� from �л���ȸ;

--ex2) �ҼӺ��� �л����� ��� ������ ���Ͻÿ�.
select �Ҽ�, round(avg(����)) from �л���ȸ
group by �Ҽ�;

--ex3) �������̺��� �л��� ��ռ����� ������ ��ռ����� ���� ������� �����Ͻÿ�.
select �й�,avg(����) from ������ȸ
group by �й�
order by avg(����) desc;

--ex4) ������ȣ 102�� ������ ������ ������ �����ϴ� �л��� ���� ����϶�.
    --SQL> select count(distinct �й�) from ���� where ��ȣ = ��102�� ;
    --�� dintinct : �ߺ��� Ʃ���� �����ϴ� Ű����.
    select count(*) from ������ȸ where ��ȣ=102;
    select * from ������ȸ
    where ��ȣ=102;
    select distinct(�й�) from ������ȸ;

--ex5) ������ �̻� �����ϴ� �л��� �й��� ���Ͻÿ�.
    --SQL> 
    select * from ������ȸ;

    select �й� from ������ȸ group by �й�
    having count(*) >= 3 ; 
    
    select �̸�,�й� from �л���ȸ
    where �й� = (select �й� from ������ȸ group by �й�
                    having count(*) >= 3);
    
