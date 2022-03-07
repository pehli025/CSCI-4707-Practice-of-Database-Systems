 CREATE TABLE University (
				UnivId NUMERIC PRIMARY KEY,
				UnivName VARCHAR(40)
				);
				
CREATE TABLE Department (
						DeptId NUMERIC PRIMARY KEY,
						DeptName VARCHAR(40)
						);
							
CREATE TABLE Employee (
						EmpId NUMERIC PRIMARY KEY,
						EmpName VARCHAR(40),
						DeptId NUMERIC,
						HomeZipCode NUMERIC,
						FOREIGN KEY (DeptId) REFERENCES Department
						);
						
CREATE TABLE Project (
					ProjId NUMERIC PRIMARY KEY,
					ProjName VARCHAR(40)
					);

CREATE TABLE Graduate (
					EmpId NUMERIC PRIMARY KEY REFERENCES Employee(EmpId),
					UnivId NUMERIC,
					GradYear NUMERIC,
					FOREIGN KEY (UnivId) REFERENCES University
					);
	
CREATE TABLE EmpProject (
						EmpId NUMERIC REFERENCES Employee,
						ProjId NUMERIC REFERENCES Project ON DELETE CASCADE,
						PRIMARY KEY(EmpId, ProjId)
						);
CREATE TABLE ProjectManager ( 
							ProjId NUMERIC,
							MgrId NUMERIC,
							PRIMARY KEY(ProjId, MgrId),
							FOREIGN KEY (ProjId) REFERENCES Project ON DELETE CASCADE,
							Foreign KEY (MgrId) REFERENCES Employee(EmpId) 
							);
		