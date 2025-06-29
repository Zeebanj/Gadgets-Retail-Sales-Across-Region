---DAY OF THE WEEK WITH HIGHEST SALES VOLUME
select day(OrderDate) as DaysOfTheWeek, sum(TotalSales) as Sales
from Sheet1$
group by day(OrderDate) 
order by Sales desc