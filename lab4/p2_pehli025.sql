/*
1. Yes there was a time difference as it took 47.8 seconds, it is because that the query has to check for unique values everytime it searches for something, adding on to the time. Distinct involves an active sort to go through the data to f
ind the duplicate rows, a sort is costly.

*/
--#2
SELECT sex, COUNT(gpa) FROM student GROUP BY sex HAVING COUNT(gpa) > 1;
SELECT sex, COUNT(gpa) FROM student WHERE gpa > 1 GROUP BY sex;

--#3
SELECT DISTINCT sname FROM student
LEFT JOIN major ON major.sid = student.sid
RIGHT JOIN department ON major.dname = major.dname
WHERE student.age < 30; 
    
select sname 
from student
where age < 30 AND sid IN (
        select sid 
        from major 
        where dname IN (
		select dname
		from department));
--#3 it is quicker because the joins have to incorperate all the tables in the join, where in a IN there is a specified columns in which we want to join in our query. The join used up 1195ms where the IN used 776ms, on top of that IN has a built in duplicate finder that also costs almost nothing, where join output did have many duplicates, as it will show the duplicate values if multiple tables have them. If we were to use distinct, it took 4500ms to finish the query.
