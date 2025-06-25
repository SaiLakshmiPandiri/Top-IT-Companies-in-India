--List all companies and their CEOs
SELECT c.name AS Company, ce.name AS CEO
FROM companies c
JOIN ceos ce ON c.company_id = ce.company_id;
--Count number of branches for each company
SELECT c.name AS Company, COUNT(cb.location_id) AS Branches
FROM companies c
JOIN company_branches cb ON c.company_id = cb.company_id
GROUP BY c.name;
--Top 2 companies by revenue
SELECT c.name, e.revenue_in_cr
FROM companies c
JOIN extra_info e ON c.company_id = e.company_id
ORDER BY e.revenue_in_cr DESC
LIMIT 2;
--List all cities where Infosys has branches
SELECT l.city
FROM companies c
JOIN company_branches cb ON c.company_id = cb.company_id
JOIN locations l ON cb.location_id = l.location_id
WHERE c.name = 'Infosys';
