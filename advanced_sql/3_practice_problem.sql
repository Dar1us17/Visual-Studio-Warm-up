/* 
Question: Calculates the current month's total earnings per project
          Calculate a scenario where the hourly rate increases by 5 dollars
Why? 
    - See the difference if we raised the hourly rate
    - Figure out what's a reasonable raise
*/

SELECT
    project_id,
    SUM(hours_spent * hours_rate) AS project_original_cost,
    SUM(hours_spent * (hours_rate + 5)) AS project_projected_cost
FROM
    invoices_fact
GROUP BY
    project_id