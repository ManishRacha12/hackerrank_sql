/*Given the table schemas below, write a query to print the company_code, founder name,
 total number of lead managers, total number of senior managers, total number of managers,
  and total number of employees. Order your output by ascending company_code.

*/


SELECT C.COMPANY_CODE,C.FOUNDER,COUNT(DISTINCT E.LEAD_MANAGER_CODE),COUNT(DISTINCT E.SENIOR_MANAGER_CODE), COUNT(DISTINCT E.MANAGER_CODE), COUNT(DISTINCT E.EMPLOYEE_CODE)
FROM COMPANY AS C JOIN EMPLOYEE AS E
ON C.COMPANY_CODE=E.COMPANY_CODE
GROUP BY C.COMPANY_CODE,C.FOUNDER
ORDER BY C.COMPANY_CODE;

