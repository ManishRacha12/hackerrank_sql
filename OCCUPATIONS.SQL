/*Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. The output column headers should be Doctor, Professor, Singer, and Actor, respectively.

Note: Print NULL when there are no more names corresponding to an occupation.

Explanation

The first column is an alphabetically ordered list of Doctor names.
The second column is an alphabetically ordered list of Professor names.
The third column is an alphabetically ordered list of Singer names.
The fourth column is an alphabetically ordered list of Actor names.
The empty cell data for columns with less than the maximum number of names per occupation (in this case, the Professor and Actor columns) are filled with NULL values.



*/

SELECT 
MAX(CASE WHEN OCCUPATION='DOCTOR' THEN NAME END) AS DOCTOR,
MAX(CASE WHEN OCCUPATION='PROFESSOR' THEN NAME END)AS PROFESSOR,
MAX(CASE WHEN OCCUPATION='SINGER' THEN NAME END)AS SINGER,
MAX(CASE WHEN OCCUPATION='ACTOR' THEN NAME END)AS ACTOR
FROM
(
SELECT NAME,OCCUPATION,
ROW_NUMBER() OVER (PARTITION BY OCCUPATION ORDER BY NAME)AS CR FROM OCCUPATIONS) AS TEMP 
GROUP BY CR
ORDER BY CR;
