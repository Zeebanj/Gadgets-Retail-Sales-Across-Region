---WHICH PRODUCT CATEGORY CONTRIBUTES THE HIGHEST TO REVENUE IN EACH REGION
Select region, category, sum(TotalSales) as Revenue
from Sheet1$
group by region, Category
order by Region, Revenue desc