SELECT EmpId 
FROM Employee 
WHERE HomeZipCode = 55414 OR HomeZipCode = 55455;

SELECT P.ProjName 
FROM Project P
INNER JOIN ProjectManager M ON P.ProjId = M.ProjId
WHERE MgrId > 0
GROUP BY P.ProjName;

SELECT P.projname, COUNT(E.EmpId) AS NumEmployees
FROM Project P
INNER JOIN EmpProject E ON P.ProjId = E.ProjId
GROUP BY P.projname;

SELECT UnivName
FROM University
WHERE UnivId IN
			   (SELECT UnivId 
				FROM Graduate
				GROUP BY UnivId 
				HAVING count(*) IN
								(SELECT MAX (count1)
								 FROM 
									(SELECT COUNT(*) count1
									   FROM Graduate
									   GROUP BY UnivId ) a)); 

SELECT E.EmpName,D.DeptName,G.GradYear
FROM Employee E 
JOIN Department D ON E.DeptId =D.DeptId
JOIN Graduate G ON E.EmpId=G.EmpId;

SELECT P.ProjName, count(*)
FROM Project P, EmpProject E
WHERE P.projId = E.projId
GROUP BY E.projId, P.ProjName
HAVING count(*) =
			  (SELECT MAX (mycount)
			   FROM
				  (SELECT COUNT(*) mycount
				   FROM EmpProject 
				   GROUP BY projId) a);
				   

