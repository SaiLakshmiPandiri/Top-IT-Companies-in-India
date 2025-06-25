--Table for Companies
CREATE TABLE companies (
    company_id INT PRIMARY KEY,
    name VARCHAR(100),
    founded_year INT,
    industry VARCHAR(50)
);

--Table for CEOs
CREATE TABLE ceos (
    ceo_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    company_id INT,
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);

--Table for Locations
CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    city VARCHAR(50),
    state VARCHAR(50)
);

--Table for Company Branches
CREATE TABLE company_branches (
    company_id INT,
    location_id INT,
    FOREIGN KEY (company_id) REFERENCES companies(company_id),
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

--Table for Extra Info
CREATE TABLE extra_info (
    company_id INT PRIMARY KEY,
    revenue_in_cr DECIMAL(10, 2),
    employee_count INT,
    rating DECIMAL(2, 1),
    FOREIGN KEY (company_id) REFERENCES companies(company_id)
);
