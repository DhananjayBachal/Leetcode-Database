# Write your MySQL query statement below
select sp.name 
from SalesPerson sp
where sales_id not in 
(select o.sales_id 
from Orders o left join Company c on o.com_id = c.com_id
where c.name="RED");
