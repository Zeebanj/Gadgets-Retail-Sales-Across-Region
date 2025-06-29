---AVEREAGE ORDER VALUE (AOV) PER REGION
select region, avg(TotalSales) as Avg_Value
from Sheet1$
group by Region
order by avg(TotalSales) desc