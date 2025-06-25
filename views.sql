--List all companies with their founded year
CREATE VIEW company_founded_year AS
SELECT name AS company, founded_year
FROM companies;
--Usage:
SELECT * FROM company_founded_year;
--Company with CEO name and age
CREATE VIEW company_ceo_age AS
SELECT c.name AS company, ce.name AS ceo, ce.age
FROM companies c
JOIN ceos ce ON c.company_id = ce.company_id;
--Usage:
SELECT * FROM company_ceo_age WHERE age > 50;
--Companies founded before 2000
CREATE VIEW companies_before_2000 AS
SELECT name AS company, founded_year
FROM companies
WHERE founded_year < 2000;
--Usage:
SELECT * FROM companies_before_2000;
--Companies and their branch cities
CREATE VIEW company_branch_cities AS
SELECT c.name AS company, l.city
FROM companies c
JOIN company_branches cb ON c.company_id = cb.company_id
JOIN locations l ON cb.location_id = l.location_id;
--Usage:
SELECT * FROM company_branch_cities WHERE city = 'Bengaluru';
--Companies with more than 2 branches
CREATE VIEW companies_with_multiple_branches AS
SELECT c.name AS company, COUNT(cb.location_id) AS branch_count
FROM companies c
JOIN company_branches cb ON c.company_id = cb.company_id
GROUP BY c.name
HAVING COUNT(cb.location_id) > 2;
--Usage:
SELECT * FROM companies_with_multiple_branches;
--Company, revenue, and rating
CREATE VIEW company_revenue_rating AS
SELECT c.name AS company, e.revenue_in_cr, e.rating
FROM companies c
JOIN extra_info e ON c.company_id = e.company_id;
--Usage:
SELECT * FROM company_revenue_rating WHERE rating >= 4.5;
--CEOs older than 50
CREATE VIEW ceos_above_50 AS
SELECT c.name AS company, ce.name AS ceo, ce.age
FROM companies c
JOIN ceos ce ON c.company_id = ce.company_id
WHERE ce.age > 50;
--Usage:
SELECT * FROM ceos_above_50;
--Count of companies in each city
CREATE VIEW city_company_counts AS
SELECT l.city, COUNT(DISTINCT cb.company_id) AS company_count
FROM locations l
JOIN company_branches cb ON l.location_id = cb.location_id
GROUP BY l.city;
--Usage:
SELECT * FROM city_company_counts ORDER BY company_count DESC;
