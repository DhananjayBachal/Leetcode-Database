# Write your MySQL query statement below
DELETE a
FROM Person as a JOIN Person as b ON a.email = b.email
AND a.id > b.id;