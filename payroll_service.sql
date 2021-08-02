CREATE DATABASE payroll_service;
USE payroll_service;
CREATE TABLE employee_payroll( id INT NOT NULL  AUTO_INCREMENT,
			name VARCHAR(15) NOT NULL, 
			salary Decimal(10, 2) Null,
            gender CHAR(1),
            START  Date NOT NULL,
            primary key (id));
            
SELECT * FROM employee_payroll;
ALTER TABLE payroll_service.employee_payroll CHANGE START start date;
INSERT INTO payroll_service.employee_payroll (name, salary, gender, start) VALUES ('Reugito', 10000.12, 'M', '2021-06-13');
INSERT INTO payroll_service.employee_payroll (name, salary, gender, Start) VALUES ('Lucy', 12000.00, 'M', '2021-05-29');
INSERT INTO payroll_service.employee_payroll (name, salary, gender, start) VALUES ('Deepak', 20000.12, 'M', '2021-01-29');
INSERT INTO payroll_service.employee_payroll (name, salary, gender, start) VALUES ('Naveen', 30000.12, 'M', '2021-02-01');
SELECT `salary` from employee_payroll where `name` = 'Reugito';
DESCRIBE payroll_service.employee_payroll;
SELECT * FROM payroll_service.employee_payroll;
SELECT * FROM payroll_service.employee_payroll  WHERE start BETWEEN CAST('2021-06-13' AS DATE) AND DATE (NOW());
UPDATE payroll_service.employee_payroll SET Gender = 'F' WHERE name = 'Lucy';
UPDATE payroll_service.employee_payroll SET Salary = 15000.00 WHERE Name = 'Lucy';
SELECT SUM(salary) FROM payroll_service.employee_payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT AVG(salary) FROM payroll_service.employee_payroll WHERE Gender = 'F' GROUP BY Gender;
SELECT MIN(salary) FROM payroll_service.employee_payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT MAX(salary) FROM payroll_service.employee_payroll WHERE Gender = 'M' GROUP BY Gender;
SELECT COUNT(id) AS numberOfEmployees FROM payroll_service.employee_payroll;
ALTER TABLE employee_payroll ADD Phone_Number VARCHAR(250) AFTER Name;
ALTER TABLE employee_payroll ADD Address VARCHAR(250) AFTER Phone_Number;
ALTER TABLE employee_payroll ADD Department VARCHAR(250) AFTER Address;
ALTER TABLE employee_payroll CHANGE Phone_Number Phone_Number VARCHAR(10);
ALTER TABLE `employee_payroll` CHANGE Department Department VARCHAR(250) ;
ALTER TABLE `employee_payroll` CHANGE Department Department VARCHAR(250)  DEFAULT 'T&D';
DESCRIBE employee_payroll;
ALTER TABLE `employee_payroll` CHANGE Salary BasicPay Decimal(10,2);
ALTER TABLE employee_payroll ADD Deductions DECIMAL(10, 2) AFTER BasicPay;
ALTER TABLE employee_payroll ADD TaxablePay DECIMAL(10, 2) AFTER Deductions;
ALTER TABLE employee_payroll ADD IncomeTax DECIMAL(10, 2) AFTER TaxablePay;
ALTER TABLE employee_payroll ADD NetPay DECIMAL(10, 2) AFTER IncomeTax;
ALTER TABLE employee_payroll ADD City DECIMAL(10, 2) AFTER Start;
ALTER TABLE employee_payroll ADD Country DECIMAL(10, 2) AFTER City;
ALTER TABLE employee_payroll Change Start StartDate DATE NOT NULL;
INSERT INTO payroll_service.employee_payroll(name, Phone_Number, Address, 
                                             Department, BasicPay, Deductions, TaxablePay, 
                                             IncomeTax, NetPay, gender, StartDate) VALUES
                                             ('deepak', '8503987671', 'Gurgaon', 'Production', '18000.00', '440.0', '00.0', '00.0',
                                             '22000.0', 'M', '2019-06-12');
ALTER TABLE employee_payroll CHANGE City City VARCHAR(250);
ALTER TABLE employee_payroll CHANGE Country Country VARCHAR(250);
INSERT INTO payroll_service.employee_payroll(name, Phone_Number, Address, 
                                             Department, BasicPay, Deductions, TaxablePay, 
                                             IncomeTax, NetPay, gender, StartDate, City, Country) VALUES
                                             ('deepak', '8503987671', 'Gurgaon', 'Production', '18000.00', '440.0', '00.0', '00.0',
                                             '22000.0', 'M', '2019-06-12', 'Rewari', 'India');




