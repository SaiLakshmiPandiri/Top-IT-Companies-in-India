--Table: companies
INSERT INTO companies VALUES 
(1, 'TCS', 1968, 'IT Services'),
(2, 'Infosys', 1981, 'IT Services'),
(3, 'HCL Technologies', 1976, 'IT Services'),
(4, 'Wipro', 1945, 'IT Services'),
(5, 'LTIMindtree', 1996, 'IT Services'),
(6, 'Tech Mahindra', 1986, 'IT Services'),
(7, 'Persistent Systems', 1990, 'Software Services'),
(8, 'Oracle Financial Services', 1990, 'Financial Software'),
(9, 'Coforge', 1992, 'IT Solutions'),
(10, 'Mphasis', 1998, 'IT Services'),
(11, 'Deloitte', 1845, 'IT Consulting'),
(12, 'Cognizant India', 1994, 'IT Services'),
(13, 'Hexaware', 1990, 'IT/BPO Services'),
(14, 'L&T Technology Services', 2012, 'Engineering Services'),
(15, 'Zoho', 1996, 'Software Products'),
(16, 'KPIT Technologies', 1990, 'Automotive Tech'),
(17, 'Zensar Technologies', 1991, 'IT Services'),
(18, 'Happiest Minds', 2011, 'Digital Transformation'),
(19, 'Saksoft', 1999, 'IT Consulting'),
(20, 'Kellton Tech', 1993, 'Digital Solutions');

--Table: ceos
INSERT INTO ceos VALUES 
(1, 'K. Krithivasan', 55, 1),
(2, 'Salil Parekh', 59, 2),
(3, 'C. Vijayakumar', 56, 3),
(4, 'Thierry Delaporte', 50, 4),
(5, 'Venugopal Lambu', 52, 5),
(6, 'Mohit Joshi', 49, 6),
(7, 'Sandeep Kalra', 50, 7),
(8, 'Chaitanya Kamat', 58, 8),
(9, 'Sudhir Singh', 50, 9),
(10, 'Nitin Rakesh', 55, 10),
(11, 'Romal Shetty', 52, 11),
(12, 'Ravi Kumar S.', 51, 12),
(13, 'R Srikrishna', 54, 13),
(14, 'Amit Chadha', 50, 14),
(15, 'Sridhar Vembu', 55, 15),
(16, 'Kishor Patil', 53, 16),
(17, 'Ajay S. Bhutoria', 51, 17),
(18, 'Ashok Soota', 81, 18),
(19, 'Aditya Krishna', 58, 19),
(20, 'Kiran Kulkarni', 50, 20);

--Table: locations (Headquarters)
INSERT INTO locations VALUES 
(1, 'Mumbai', 'Maharashtra'),
(2, 'Bengaluru', 'Karnataka'),
(3, 'Noida', 'Uttar Pradesh'),
(4, 'Hyderabad', 'Telangana'),
(5, 'Pune', 'Maharashtra'),
(6, 'Chennai', 'Tamil Nadu'),
(7, 'Vadodara', 'Gujarat'),
(8, 'Chennai', 'Tamil Nadu'), -- Zoho
(9, 'Pune', 'Maharashtra'),   -- KPIT
(10, 'Gurgaon', 'Haryana'),
(11, 'Mumbai', 'Maharashtra'); -- Deloitte

--Table: company_branches (headquarters only for now)
INSERT INTO company_branches VALUES 
(1, 1),
(2, 2),
(3, 3),
(4, 2),
(5, 1),
(6, 5),
(7, 5),
(8, 1),
(9, 1),
(10, 2),
(11, 11),
(12, 6),
(13, 1),
(14, 7),
(15, 8),
(16, 9),
(17, 10),
(18, 2),
(19, 1),
(20, 1);

--Table: extra_info
INSERT INTO extra_info VALUES 
(1, 250000.00, 608000, 4.8),
(2, 150000.00, 317000, 4.6),
(3, 110000.00, 227000, 4.5),
(4, 105000.00, 234000, 4.4),
(5, 58000.00, 82000, 4.3),
(6, 52000.00, 149000, 4.2),
(7, 25000.00, 23000, 4.4),
(8, 12000.00, 9000, 4.0),
(9, 10000.00, 25000, 4.2),
(10, 12000.00, 31000, 4.3),
(11, 22000.00, 90000, 4.7),
(12, 60000.00, 254000, 4.5),
(13, 10000.00, 40000, 4.2),
(14, 14000.00, 24000, 4.3),
(15, 8000.00, 12000, 4.7),
(16, 7000.00, 10000, 4.1),
(17, 6000.00, 11000, 4.0),
(18, 5000.00, 8000, 4.3),
(19, 3500.00, 1500, 3.9),
(20, 3000.00, 2000, 4.0);
