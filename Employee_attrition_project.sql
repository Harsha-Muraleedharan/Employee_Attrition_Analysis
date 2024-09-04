create database Employee_attrition;
use Employee_attrition;
select * from employee_attirtion_new;
select count(*)from employee_attirtion_new where gender='feMale' ;
select avg(age) from employee_attirtion_new;
select department,count(*) from employee_attirtion_new group by department;

alter table employee_attirtion_new add column age_category varchar(50);
update employee_attirtion_new  set age_category=case when age between 50 and 60 then 'Older Adults'
when age between 30 and 50 then 'Middle Aged Adults' 
else 'Young Adults' end ;
select age_category,count(*) from employee_attirtion_new group by age_category;

select avg(distancefromhome) from employee_attirtion_new;
select distancefromhome,count(*) from employee_attirtion_new where distancefromhome>= 20 group by distancefromhome;

select age_category,count(*) from employee_attirtion_new where attrition='yes' group by age_category;

select businesstravel,count(*) from employee_attirtion_new where attrition='yes' group by businesstravel;

select distancefromhome,count(*) from employee_attirtion_new where attrition='yes' group by distancefromhome;

select educationfield,count(*) from employee_attirtion_new group by educationfield order by count(*);
select educationfield,count(*) from employee_attirtion_new where attrition='yes' group by educationfield;

select EnvironmentSatisfaction,count(*) from employee_attirtion_new  group by EnvironmentSatisfaction;

select JobSatisfaction,count(*) from employee_attirtion_new  group by JobSatisfaction;
select JobSatisfaction,count(*) from employee_attirtion_new where attrition='yes' group by JobSatisfaction;

select avg(HourlyRate) from employee_attirtion_new;

select JobRole,count(*) from employee_attirtion_new group by JobRole;
select JobRole,count(*) from employee_attirtion_new where attrition='yes' group by JobRole;

select MaritalStatus,count(*) from employee_attirtion_new group by MaritalStatus;

select avg(MonthlyIncome) from employee_attirtion_new;
alter table employee_attirtion_new add column month_rate varchar(20);
update employee_attirtion_new set month_rate = case when MonthlyIncome<=20000 and MonthlyIncome>=10000 then 'High'
when MonthlyIncome<=9999 and MonthlyIncome>=6000 then 'Medium'
else 'Low' end;
select month_rate,count(*) from employee_attirtion_new group by month_rate;



set sql_safe_updates=0;
