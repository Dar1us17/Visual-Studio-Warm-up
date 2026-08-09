SELECT
    job_title,
    job_location AS location,
    salary_year_avg AS salary
FROM
    job_postings_fact
WHERE
    (job_title LIKE '%Data%' OR job_title LIKE '%Business%' ) AND 
    job_title LIKE '%Analyst%' AND
    job_title NOT LIKE '%Senior%'
/*
- Only get job titles that include either 'Data' or 'Business'
- Also include those with 'Analyst' in any part of the title
- Don't include any job titles with 'Senior' followed by any character
*/