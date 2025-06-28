# Gadgets Retain Sales Analysis Across Different Regions


## Table Of Contents

- [Project Overview](#project-overview)
- [Data Sources](#data-sources)
- [tools](#tools)
- [Data Cleaning Or Preparation](#data-cleaning-or-preparation)
- [Exploratory Of Data Analysis](#exploratory-of-data-analysis)
- [Data Analysis](#data-analysis)
- [Results Or Findings](#results-or-findings)
- [Recommendations](#recommendations)
- [Limitations](#limitations)
### Project Overview 

This data analysis projects aim to provide insights into the sales performance of a gadget company over the past years. by analyzing various aspects of the sales data, we seek to identify trends, make data driven recommendations, and gain deeper understanding of the company's performance.

### Data Sources

The primary dataset used for this analysis is the "retail_Sales_data.csv" file, containing informations about each sales made by the company.

### Tools 

- Excel - Data Cleaning
   - [Download Here](https://microsoft.com)
- SQL server - Data Analysis
- PowerBI - creating Reports & Visualizations


### Data Cleaning Or Preparation

In the initial data preparation phase, we performed the following tasks:
1. Data loading and inspection,
2. Data cleaning and formatting.

### Exploratory Of Data Analysis

EDA involved exploring the sales data to answer key questions, such as:

- What month the highest selling volume?
- What is the average order value per region?
- Which region has the highest order sold? etc
  
### Data Analysis

```sql
with cte as (select avg(total_sales) as AvgTotal
from sheet1
select *
from cte;
```

### Results Or Findings

The analysis results are summarized as follows:
1. The company's sales has been steadily increasing over the past year.
2. The month of july has the lowest total sales
3. Laptop has the overall order of unit sold.

### Recommendations

Based on the analysis, we recommend the following actions:
- Focus on expanding and promoting other product as well as they did for laptop
- Implement a customer segmentation strategy to high customers effectively.
- Invest more in promotion and marketing during peak sales to maximize revenue.

### Limitations

I had to remove all zero values and null values in product and unit sold columns because they would have affected the accuracy of my conclusions from the analysis.


 
