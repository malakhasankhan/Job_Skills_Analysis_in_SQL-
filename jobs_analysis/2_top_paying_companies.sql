/*
 -- Finding the Median income for Remote Data Analyst Roles 
 -- Finding Top 10 Companies that has pay equal to or higher than the median
 */
SELECT companies.name,
    COUNT(*) AS count_of_jobs
FROM job_postings_fact AS jobs
    LEFT JOIN company_dim AS companies ON jobs.company_id = companies.company_id
WHERE job_location = 'Anywhere'
    AND job_title_short LIKE '%Analyst'
    AND job_title_short NOT LIKE 'Senior%'
    AND salary_year_avg > 87500
GROUP BY companies.name
ORDER BY count_of_jobs DESC
LIMIT 10
    /*
     -- We determmined the median for Junior Data Analyst to be $87,500
     -- Get it Recruit has the highest paying most number of Remote Junior Data Analyst jobs.
     */