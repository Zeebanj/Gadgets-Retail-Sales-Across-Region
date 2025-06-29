
-----CUSTOMER WITH MORE THAN 5 PURCHASES AND THEIR TOTAL SPEND  
select CustomerID, count(*) as NumberOfOrders, Sum(TotalSales) as TotalSpend
from Sheet1$
group by CustomerID
having count(*)>5
order by TotalSpend desc