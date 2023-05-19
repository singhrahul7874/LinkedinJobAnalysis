-- Comparison of number of jobs across different cities for different levels
SELECT location, levels, COUNT(job_id) AS Number_Of_Jobs 
FROM jobs a 
JOIN details b ON a.details_id = b.details_id
GROUP BY 1, 2
ORDER BY 3 DESC;

-- Generate insights into number of jobs distribution across various industries
SELECT Industry, COUNT(job_id) AS Num_Of_Jobs 
FROM company a 
JOIN jobs b ON a.company_id = b.company_id
GROUP BY 1
ORDER BY Num_Of_Jobs;

-- Generate insights into number of openings with respect to the current employee count
-- Number of openings in companies with less than or equal to 100 employees
SELECT company_name, Employees_Count, COUNT(*) AS num_of_openings 
FROM company 
WHERE Employees_Count <= 100
GROUP BY 1, 2
ORDER BY 3 DESC
LIMIT 10;

-- Generate insights into number of openings with respect to the current employee count
-- Number of openings in companies with more than 1000 employees
SELECT company_name, Employees_Count, COUNT(*) AS num_of_openings 
FROM company 
WHERE Employees_Count > 1000
GROUP BY 1, 2
ORDER BY 3 DESC 
LIMIT 10;

-- Count the number of jobs across different industries and locations
SELECT industry, location, COUNT(job_id) AS No_Jobs 
FROM company a 
JOIN jobs b ON a.company_id = b.company_id
GROUP BY 2, 1;

-- Some additional insights
-- Number of jobs across different levels of position
SELECT levels, COUNT(*) AS num_of_jobs 
FROM details
GROUP BY 1
ORDER BY 2 DESC;

-- Number of jobs across different cities
SELECT location, COUNT(*) AS num_of_jobs  
FROM jobs
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;


-- Categorize companies based on their employee count into small, medium, and large size
-- using a common table expression (CTE)
WITH cte AS (
    -- Select the company name and assign a company size based on the employee count
    SELECT company_name, 
    CASE 
        WHEN Employees_Count <= 200 THEN "Small Size Company" 
        WHEN Employees_Count BETWEEN 500 AND 1000 THEN "Medium Size Company"
        ELSE "Large Size Company" 
    END AS Company_size 
    FROM company a 
    JOIN jobs b ON a.company_id = b.company_id
    JOIN details c ON b.details_id = c.details_id
    GROUP BY 1 
    ORDER BY 2
)
-- Count the number of companies in each company size category
SELECT Company_size, COUNT(*)
FROM cte
GROUP BY 1 
ORDER BY 2 DESC;
