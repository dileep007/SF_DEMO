CREATE SCHEMA IF NOT EXISTS EMP.hrdata;

-- Create Tables
CREATE TABLE IF NOT EXISTS hrdata.employees
   ( employee_id NUMBER(6)
   , first_name VARCHAR(20)
   , last_name VARCHAR(25) NOT NULL
   , email VARCHAR(25) NOT NULL
   , phone_number VARCHAR(20)
   , hire_date DATE NOT NULL
   , job_id VARCHAR(10) NOT NULL
   , salary NUMBER(8,2)
   , commission_pct NUMBER(2,2)
   , manager_id NUMBER(6)
   , dept_id NUMBER(4)
   );
  


   
