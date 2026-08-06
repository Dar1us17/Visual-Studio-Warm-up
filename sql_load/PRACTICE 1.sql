/*
This script is used to split a main dataset into three separate monthly tables (⁠january_jobs⁠, ⁠february_jobs⁠, and ⁠march_jobs⁠) based on the job posting date.
*/
-- January
CREATE TABLE january_jobs AS 
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 1; 

-- February
CREATE TABLE february_jobs AS 
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 2;

-- March
CREATE TABLE march_jobs AS 
    SELECT *
    FROM job_postings_fact
    WHERE EXTRACT(MONTH FROM job_posted_date) = 3;