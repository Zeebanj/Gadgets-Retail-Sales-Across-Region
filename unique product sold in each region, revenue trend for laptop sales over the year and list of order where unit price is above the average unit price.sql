
----HOW MANY UNIQUE PRODUCTS ARE SOLD IN EACH REGION 
SELECT region, count(Distinct(product)) as UniqueProducts
from Sheet1$
group by Region


----WHAT IS THE REVENUE TREND FOR 'LAPTOP' SALES OVER THE YEAR
select format(cast (OrderDate as date), 'MM') as Month, sum(TotalSales) as TotalLaptopRevenue 
from Sheet1$
where product like 'Laptop'
group by  format(cast (OrderDate as date), 'MM')
order by TotalLaptopRevenue desc


---LIST ALL ORDER WHERE UNIT PRICE IS ABOVE THE AVERAGE UNIT PRICE 
select *
from Sheet1$
where UnitPrice > (select Avg(UnitPrice) from Sheet1$)