SELECT d.name AS Department, e.name AS Employee, e.salary AS Salary
FROM Employee e INNER JOIN Department d
ON e.departmentId = d.id
WHERE 3 > (
    SELECT COUNT(DISTINCT (e1.Salary))
    FROM Employee e1
    WHERE e1.Salary > e.Salary AND
    e.DepartmentId = e1.DepartmentId
)
