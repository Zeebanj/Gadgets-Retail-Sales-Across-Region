select *
from Sheet1$

---AVEREAGE ORDER VALUE (AOV) PER REGION
select region, avg(TotalSales) as Avg_Value
from Sheet1$
group by Region
order by avg(TotalSales) desc

---PRODUCT WITH OVERALL HIGHEST NUMBER OF UNITS SOLD
SELECT product, sum(Quantity) as UnitSold
from Sheet1$
group by Product
order by UnitSold desc

-----
SELECT FORMAT(CAST(OrderDate AS DATE), 'yyyy-MM') AS Date
FROM Sheet1$


---DAY OF THE WEEK WITH HIGHEST SALES VOLUME
select day(OrderDate) as DaysOfTheWeek, sum(TotalSales) as Sales
from Sheet1$
group by day(OrderDate) 
order by Sales desc


----MONTH WITH THE LOWEST TOTAL SALES
Select month(OrderDate) as month, sum(totalSales) as Monthlysales
from Sheet1$
group by month(OrderDate)
order by Monthlysales asc

SELECT region, avg(UnitPrice) as AvgPrice
from Sheet1$
group by region 
order by AvgPrice desc 


-----CUSTOMER WITH MORE THAN 5 PURCHASES AND THEIR TOTAL SPEND  
select CustomerID, count(*) as NumberOfOrders, Sum(TotalSales) as TotalSpend
from Sheet1$
group by CustomerID
having count(*)>5
order by TotalSpend desc

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

---WHICH PRODUCT CATEGORY CONTRIBUTES THE HIGHEST TO REVENUE IN EACH REGION
Select region, category, sum(TotalSales) as Revenue
from Sheet1$
group by region, Category
order by Region, Revenue desc