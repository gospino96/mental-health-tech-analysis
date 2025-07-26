use  world_layoffs;
select*from mental_heath_analysis;
ALTER TABLE mental_heath_analysis rename mha;

#Explore data
select*from mha;
select distinct age from mha order by 1;
select distinct gender from mha;
select*from mha;

#Demographic analysis

select  case 
when age >=28 and age <36 then '28-35'
WHEN age >35 and age<41 then '36-41'
else '42-50'
end as Age_category,work_mode,
round(AVG (productivity_score),1) AS productivity_avg, round (AVG(Hours_worked_Per_Week),1) as work_hours from mha
group by case when age>=28 and age <36 then '28-35'
when age >35 and age < 41 then '36-41'
else '42-50' END,work_mode ORDER BY 1,3 DESC;

#Analysis of work performance
select gender, work_mode, round(avg(Hours_worked_Per_Week),1) from mha group by gender,work_mode order by 1;

select country, round(avg(Hours_worked_Per_Week),1),round(avg(productivity_score),2) from mha group by country order by 3;

select work_mode ,round(avg(Hours_worked_Per_Week),1) ,round(avg(productivity_score),1) from mha group by work_mode order by 3;

select work_mode, round(avg(team_communication_effectiveness),1) as communication_effectivity, round(AVG(productivity_score),1) as productivity from mha
group by work_mode
order by 2 DESC;

select country, count(*) as employees_lower_productivity, (select count(*) from mha mha2 where mha.country=mha2.country) as total_employees from mha
where productivity_score < (select avg(productivity_score) from mha mha2 where mha.country=mha2.country)
group by country order by 2;

#Show the work mode with most employees per country
select mha2.country, mha2.work_mode,mha2.total_employees from (select country,work_mode, count(*) as total_employees from mha group by country,work_mode) as mha2
where mha2.total_employees = (select max(total_employees) from (select country,work_mode,count(*) as total_employees from mha group by country,work_mode) as mh3 where mha2.country=mh3.country) order by 1;


#Analysis of mental_health/habits
select country, round(avg(sleep_hours_per_day),2),round(Avg(burnout_score),2) from mha group by 1 order by 3 DESC;

select mha2.work_mode,mha2.exercise_frequency from (select work_mode, exercise_frequency ,count(*) as total_employees from mha group by work_mode,exercise_frequency) as mha2
where mha2.total_employees= (select max(total_employees) from (select work_mode,exercise_frequency,count(*) as total_employees from mha group by work_mode,Exercise_Frequency) as mha3 
where mha2.work_mode=mha3.work_mode);


#Relation between mental health and productivity
select Mental_Health_Status,round(avg(burnout_score),2), round(avg(Productivity_Score),2) from mha
group by Mental_Health_Status order by 3 DESC;


select min(Experience_Years), max(Experience_Years) from mha;
select case 
when Experience_Years > 1 and Experience_Years <=3 then 'junior'
WHEN Experience_Years >3 and Experience_Years <=7 then 'semesenior'
when Experience_Years >7 and Experience_Years <=10 then 'senior'
when Experience_Years >10 and Experience_Years <=15 then 'expert'
else  'specialist'
end as experience_category,
round(avg(burnout_score),1) as burnout_rate,round(avg(work_life_balance_rating),1) as work_balance_rating,round(avg(sleep_hours_per_day),1) from mha
group by case when Experience_Years > 1 and Experience_Years <=3 then 'junior'
WHEN Experience_Years >3 and Experience_Years <=7 then 'semesenior'
when Experience_Years >7 and Experience_Years <=10 then 'senior'
when Experience_Years >10 and Experience_Years <=15 then 'expert'
else  'specialist'
end
order by 2 DESC;

select work_mode, round(avg(productivity_score),1) as productivity,
round(avg(burnout_score),1) as burnout_rate,round(avg(work_life_balance_rating),1) as work_balance_rating,round(avg(sleep_hours_per_day),1) from mha
group by work_mode
order by 2 DESC;
select gender , round(avg(productivity_score),1) as productivity,
round(avg(burnout_score),1) as burnout_rate,round(avg(work_life_balance_rating),1) as work_balance_rating,round(avg(sleep_hours_per_day),1) as avg_sleep_hours from mha
group by gender
order by 2 DESC;

select exercise_frequency,round(avg(burnout_score),2) as avg_burnout, round(avg(productivity_score),2) as productivity
from mha
group by exercise_frequency
order by 3 DESC;