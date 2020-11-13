select * from emp;

select sum(sal) as total from emp;
select round(avg(sal),2) as total from emp;

select max(sal) from emp;
select min(sal) from emp;

select count(*) as cnt from emp;

select job,count(*) from emp
group by job
having job ='SALESMAN';

--ex1) 학생들의 평균 신장을 구하라.
select avg(신장) as 평균신장 from 학생명회;

--ex2) 소속별로 학생들의 평균 신장을 구하시오.
select 소속, round(avg(신장)) from 학생명회
group by 소속;

--ex3) 수강테이블에서 학생별 평균성적을 구한후 평균성적이 높은 순서대로 정렬하시오.
select 학번,avg(성적) from 수강명회
group by 학번
order by avg(성적) desc;

--ex4) 교수번호 102인 교수가 설강한 과목을 수강하는 학생의 수를 계산하라.
    --SQL> select count(distinct 학번) from 수강 where 번호 = ‘102’ ;
    --※ dintinct : 중복된 튜플을 제거하는 키워드.
    select count(*) from 수강명회 where 번호=102;
    select * from 설강명회
    where 번호=102;
    select distinct(학번) from 수강명회;

--ex5) 세과목 이상 수강하는 학생의 학번을 구하시오.
    --SQL> 
    select * from 수강명회;

    select 학번 from 수강명회 group by 학번
    having count(*) >= 3 ; 
    
    select 이름,학번 from 학생명회
    where 학번 = (select 학번 from 수강명회 group by 학번
                    having count(*) >= 3);
    
