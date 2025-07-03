SELECT e1.name
FROM Employee e1
JOIN (
    SELECT managerId, COUNT(*) AS num_reports
    FROM Employee
    GROUP BY managerId
) e2
ON e1.id = e2.managerId
WHERE e2.num_reports >= 5;
