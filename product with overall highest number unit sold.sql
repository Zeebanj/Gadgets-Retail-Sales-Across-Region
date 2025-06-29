---PRODUCT WITH OVERALL HIGHEST NUMBER OF UNITS SOLD
SELECT product, sum(Quantity) as UnitSold
from Sheet1$
group by Product
order by UnitSold desc
