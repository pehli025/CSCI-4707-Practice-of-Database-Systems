UPDATE employee 
SET HomeZipCode = 55414 
WHERE EmpId = 2;
   
UPDATE Graduate 
SET GradYear = GradYear + 3 
WHERE GradYear < 2002;
   
UPDATE Graduate 
SET GradYear = GradYear-2 
FROM employee 
WHERE employee.HomeZipCode = 55414 AND employee.empid = graduate.Empid;

DELETE FROM Project WHERE ProjId = 2;
  
