/*
 What skills are required for the top_paying data analyst jobs? 
 -- Use the top 10 highest-paying Data Analyst jobs from first query
 -- Add the specific skills required for these roles
 -- Why? It provides a detailed look at which high-paying jobs demand certain skills
 */
WITH top_paying_jobs AS (
    SELECT jobs.job_id,
        jobs.job_title,
        jobs.salary_year_avg,
        company_dim.name
    FROM job_postings_fact AS jobs
        LEFT JOIN company_dim ON jobs.company_id = company_dim.company_id
    WHERE jobs.job_title_short = 'Data Analyst'
        AND jobs.job_work_from_home = TRUE
        AND jobs.salary_year_avg IS NOT NULL
    ORDER BY jobs.salary_year_avg DESC
    LIMIT 10
)
SELECT skills.skills,
    COUNT(*) AS top_skills
FROM top_paying_jobs AS jobs
    INNER JOIN skills_job_dim ON jobs.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim AS skills ON skills_job_dim.skill_id = skills.skill_id
GROUP BY skills.skills
ORDER BY top_skills DESC
    /*
     SQL, Python and Tableau are the three most popular skills for Data Analyst Roles with a frequency of 8,7 and 6 in Data Analyst Job Posts. 
     */