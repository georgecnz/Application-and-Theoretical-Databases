SELECT DISTINCT salespeople.snum, salespeople.sname FROM salespeople, customers WHERE EXISTS( SELECT * FROM customers inner WHERE inner.snum = customers.snum AND salespeople.snum = inner.snum AND inner.cnum <> customers.cnum);
SELECT * FROM orders outer WHERE amt > (SELECT AVG(amt) FROM orders inner WHERE inner.cnum = outer.cnum);
SELECT fname, lname FROM employee outer WHERE NOT EXISTS( SELECT eird FROM dependent WHERE dependent.eird = outer.ird);
/* After executing the insert lines:
*INSERT INTO department VALUES
* (‘TempDept’, 6, 123456789,
* TO_DATE(’18-Jul-2002’, ‘DD-MON-YYYY’));
* INSERT INTO project VALUES
*  (‘TempProject’, 50, ‘Houston’, 6);
*/
SELECT DISTINCT pnumber FROM project, works_on, employee WHERE employee.lname = 'Smith' AND employee.ird = works_on.eird AND pno = pnumber UNION SELECT pnumber FROM employee, department, project WHERE employee.lname = 'Smith' and department.mgrird = employee.ird AND dnum = dnumber;
UPDATE employee SET salary = salary + (salary * 10 / 100) WHERE lname != 'Borg';
SELECT lname, salary FROM employee;
CREATE TABLE hou_emp AS SELECT * FROM employee WHERE address LIKE '%Houston%';
SELECT * FROM hou_emp;
CREATE TABLE emp_dep AS SELECT fname, lname, dependent_name, dependent.sex, dependent.bdate FROM employee, dependent WHERE employee.ird = dependent.eird ORDER BY fname ASC;
SELECT * FROM emp_dep;
