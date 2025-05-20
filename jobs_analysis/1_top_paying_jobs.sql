/*
 Question: What are the top-paying Data Analyst jobs? 
 - Identify the top 10 highest-paying Data Analyst roles that are available remotely. 
 -- Focuses on job postings with specified salaries (remove nulls)
 -- Why? Highlight the top-paying opportunities for Data Analysis, offering insights.
 */
-- List of 10 Highest Paying Remote Data Analyst Jobs. 
SELECT jobs.job_id,
    jobs.job_title,
    jobs.job_location,
    jobs.job_schedule_type,
    jobs.salary_year_avg,
    jobs.job_posted_date,
    company_dim.name
FROM job_postings_fact AS jobs
    LEFT JOIN company_dim ON jobs.company_id = company_dim.company_id
WHERE jobs.job_title_short = 'Data Analyst'
    AND jobs.job_work_from_home = TRUE
    AND jobs.salary_year_avg IS NOT NULL
ORDER BY jobs.salary_year_avg DESC
LIMIT 10