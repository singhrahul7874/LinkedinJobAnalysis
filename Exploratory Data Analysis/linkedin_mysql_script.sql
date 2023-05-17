use linkedln_project;

/*Comparison of number of jobs across different cities for different level */

select location,levels,count(job_id) as Number_Of_Jobs from jobs a join details b
on a.details_id=b.details_id
group by 1,2
order by 3 desc;


/*Generate some insight with respect to number of jobs distribution across various industry. For instance, 
what is the total number of jobs in Software Industry as compared to Marketing*/


select Industry,count(job_id) as Num_Of_Jobs from company a join jobs b
on a.company_id=b.company_id
group by 1
order by  Num_Of_Jobs;

/*Generate insights into number of opening with respect to the current employee count - 
Number of opening in a company with more than 1000 employees 
in comparison to number of openings in a company with 100 employees*/

select company_name, Employees_Count, count(*) as num_of_openming from company 
where Employees_Count <= 100
group by 1 ,2
order by 3 desc
limit 10 ;

select company_name, Employees_Count, count(*) as num_of_openming from company 
where Employees_Count > 1000
group by 1 ,2
order by 3 desc 
limit 10;

/*Count the number of jobs across different industry across different locations. For instance,
 how many Frontend Engineer jobs are there in Bangalore as compared to Data Analytics jobs
 in Bangalore, or how many Data Analytics jobs are there in Bangalore as compared to number 
 of Data Scientists job in Gurgaon - this needs to 
be done in SQL but presented in the above created Excel dashboard*/

select industry,location,count(job_id) as No_Jobs from company a join jobs b
on a.company_id=b.company_id
group by 2,1;

-- some insights of our own
-- number of jobs across diffrent level of position.

select levels, count(*) as num_of_jobs from details
group by 1
order by 2 desc;

 -- number of jobs across diffrent cities
select location, count(*) as num_of_jobs  from jobs
group by 1
order by 2 desc
limit 10;

-- select companies with diffrent employees count, divide the companies as small,medium and large size on the basis of employees count 
-- and only show the company size and their count

with cte as (
select  company_name, 
case when Employees_Count <=200 then "small_size Company" 
when Employees_Count between 500 and 1000 then "medium_size Company"
else "Large_size Company" 
end as Company_size from company a join jobs b 
on a.company_id = b.company_id
join details c 
on b.details_id = c.details_id
group by 1 
order by 2 )
select Company_size,count(*) from cte
group by 1 
order by 2 desc ;




