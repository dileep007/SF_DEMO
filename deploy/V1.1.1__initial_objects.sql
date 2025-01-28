-- Drop and recreate the tables
DROP TABLE IF EXISTS hrdata.employees;

CREATE TABLE hrdata.employees (
   employee_id NUMBER(6),
   first_name VARCHAR(20),
   last_name VARCHAR(25) NOT NULL,
   email VARCHAR(25) NOT NULL,
   phone_number VARCHAR(20),
   hire_date DATE NOT NULL,
   job_id VARCHAR(10) NOT NULL,
   salary NUMBER(8,2),
   commission_pct NUMBER(2,2),
   manager_id NUMBER(6),
   dept_id NUMBER(4)
);

DROP TABLE IF EXISTS hrdata.departments;

CREATE TABLE hrdata.departments (
   dept_id NUMBER(4),
   department_name VARCHAR(30) NOT NULL,
   manager_id NUMBER(6),
   location_id NUMBER(4)
);

-- Insert data into hrdata.employees
INSERT INTO hrdata.employees 
   (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, dept_id)
VALUES 
   (100, 'Ramana', 'Rao', 'RRAO', '420.271.4567', TO_DATE('17-JUN-1987', 'dd-MON-yyyy'), 'ADM_PRES', 24000, NULL, NULL, 90),
   (101, 'Devi', 'Kapoor', 'DKAPOOR', '420.271.4568', TO_DATE('21-SEP-1989', 'dd-MON-yyyy'), 'ADM_VP', 17000, NULL, 100, 90),
   (102, 'Nagesh', 'Reddy', 'RNAGESH', '420.271.4569', TO_DATE('13-JAN-1993', 'dd-MON-yyyy'), 'ADM_VP', 17000, NULL, 100, 90),
   (103, 'Ranga', 'Rayudu', 'RRANGA', '590.423.4567', TO_DATE('03-JAN-1990', 'dd-MON-yyyy'), 'IT_PRG', 9000, NULL, 102, 60),
   (104, 'Sivarama', 'Krishna', 'SKRISHNA', '590.423.4568', TO_DATE('21-MAY-1991', 'dd-MON-yyyy'), 'IT_PRG', 6000, NULL, 103, 60),
   (105, 'Shoban', 'Reddy', 'RSHOBAN', '590.423.4569', TO_DATE('25-JUN-1997', 'dd-MON-yyyy'), 'IT_PRG', 4800, NULL, 103, 60),
   (106, 'Jamuna', 'Kumari', 'KJAMUNA', '590.423.4560', TO_DATE('05-FEB-1998', 'dd-MON-yyyy'), 'IT_PRG', 4800, NULL, 103, 60),
   (107, 'Jaya', 'Prakash', 'PJAYA', '590.423.5567', TO_DATE('07-FEB-1999', 'dd-MON-yyyy'), 'IT_PRG', 4200, NULL, 103, 60),
   (108, 'Raja', 'Krishna', 'RKRISHNA', '613.234.4569', TO_DATE('17-AUG-1994', 'dd-MON-yyyy'), 'GI_MGR', 12000, NULL, 101, 100),
   (109, 'Mohan', 'Chandra', 'MCHANDRA', '613.234.4169', TO_DATE('16-AUG-1994', 'dd-MON-yyyy'), 'GI_ACCOUNT', 9000, NULL, 108, 100);

-- Insert data into hrdata.departments
INSERT INTO hrdata.departments 
   (dept_id, department_name, manager_id, location_id)
VALUES 
   (10, 'Administration', 200, 1700), 
   (20, 'Marketing', 201, 1800),
   (30, 'Purchasing', 114, 1700),
   (40, 'Human Resources', 203, 2400), 
   (50, 'Shipping', 121, 1500),
   (60, 'IT', 103, 1400),
   (70, 'Public Relations', 204, 2700),
   (80, 'Sales', 145, 2500),
   (90, 'Executive', 100, 1700),
   (100, 'Finance', 108, 1700);

