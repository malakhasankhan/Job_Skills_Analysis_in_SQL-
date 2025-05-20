# Data Analytics Job Market Intelligence

Welcome to a data-driven exploration of the modern analytics job market. This repository uncovers what pays, who’s hiring, and which skills are worth mastering—backed by real job posting data and structured SQL analysis.

Whether you're a job seeker planning your next move or a hiring manager benchmarking the landscape, this report provides concise and actionable insights from five focused SQL queries.

## Project Objectives

- Identify the highest-paying roles in the analytics domain  
- Discover which companies dominate top-paying postings  
- Track the most frequently requested skills in premium roles  
- Evaluate which technical skills yield the highest salaries  
- Recommend high-leverage skills for job seekers to prioritize

## Dataset & Queries

The data was parsed from structured job listings and analyzed using SQL. Each query targets a specific decision-making angle:

| Query # | Analysis Focus                        |
|---------|----------------------------------------|
| 1       | Top 10 highest-paying job titles       |
| 2       | Companies with the most top-paying jobs|
| 3       | Most common job skills in top roles    |
| 4       | Highest-paying individual skills       |
| 5       | Optimal skills to learn (based on ROI) |

## Key Insights & Visualizations

### 1. Top Paying Jobs in Analytics
![output (3)](https://github.com/user-attachments/assets/64ab2f7f-cf5d-4518-9d4c-19bd0cf97944)

**Insight:** While "Data Analyst" may seem like a mid-level role, at startups like Mantys, it's commanding PKR 650,000+, outpacing even Director-level salaries at major firms like Meta and AT&T. However, this is more of an Outlier. Median Incomes for Data Analyst Roles are at $87,500 which are considered on the lower side when compared to Data Science roles. 

---

### 2. Companies with the Most High-Paying Roles
![output](https://github.com/user-attachments/assets/8abebab9-2567-4f62-8943-6e67f888e72a)


**Insight:** The “Get It Recruit” group dominates listings, especially in Information Technology and Finance, indicating strong demand aggregation through recruiting firms. Direct hiring by firms like Uber and Edward Jones is also strong.

---

### 3. Most In-Demand Skills
![output (1)](https://github.com/user-attachments/assets/b4f9d237-bde5-4389-93f6-20654fd42f6a)


**Insight:** SQL and Python are foundational, appearing most frequently in high-paying jobs. Cloud-native tools like Snowflake and classic tools like Excel show continued relevance.

---

### 4. Highest-Paying Skills
![output (2)](https://github.com/user-attachments/assets/cdd18079-b6a9-458f-860c-4b91870a53ed)


**Insight:** Skills like SVN, Solidity, Couchbase, and DataRobot command top salaries. These specialized, niche skills yield strong returns and are ideal for those pursuing a specialization strategy.

---

## Takeaways & Recommendations

- Generalists with core tools (SQL, Python, Tableau) remain in demand across roles.
- Specialists with in-depth expertise in tools like Terraform, Couchbase, or Airflow earn a salary premium.
- Startup roles can offer higher pay than titles suggest—don't overlook them.
- High-paying skills aren't always the most frequently listed ones. Choose your stack strategically.

## Tools Used

- **PostgreSQL**: Used to run and test all SQL queries against structured job listings data. Provided a powerful relational database interface for data exploration and aggregation.
- **SQLite**: Used during early data exploration and for lightweight testing of queries before porting to PostgreSQL.
- **VS Code**: Primary development environment for writing and debugging SQL scripts, Python visualizations, and markdown documentation.
- **Git**: Version control system for managing iterative changes to queries, analysis scripts, and documentation.
- **GitHub**: Hosted the project repository, enabling collaboration, issue tracking, and showcasing of analytics insights through README and visual outputs.

## Dateset Used
- Dataset for this analysis was provided by Luke Barousse as part of the Learn SQL in 4 Hours Yotube Video.

## How to Reproduce

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/data-analytics-salary-insights.git
   cd data-analytics-salary-insights
