SELECT * FROM `bright-learn-prac3.Retail_Sales.Data` LIMIT 100;
 
---Q1
SELECT *
FROM `bright-learn-prac3.Retail_Sales.Data`
WHERE EXTRACT(YEAR FROM Date) = 2023;
 
---Q2
SELECT *
FROM `bright-learn-prac3.Retail_Sales.Data`
WHERE `Total Amount` > (
    SELECT AVG(`Total Amount`)
    FROM `bright-learn-prac3.Retail_Sales.Data`
);
 
---Q3
SELECT 
    SUM(`Total Amount`) AS Total_Revenue
FROM`bright-learn-prac3.Retail_Sales.Data`;
 
---Q4
SELECT DISTINCT `Product Category`
FROM`bright-learn-prac3.Retail_Sales.Data`;
 
--- Q5
SELECT 
    `Product Category`,
    SUM(Quantity) AS Total_Quantity
FROM `bright-learn-prac3.Retail_Sales.Data`
GROUP BY `Product Category`;
 
---Q6
SELECT 
    `Customer ID`,
    Age,
    CASE 
        WHEN Age < 30 THEN 'Youth'
        WHEN Age BETWEEN 30 AND 59 THEN 'Adult'
        ELSE 'Senior'
    END AS Age_Group
FROM`bright-learn-prac3.Retail_Sales.Data`;
 
---Q7
SELECT 
    Gender,
    COUNTIF(`Total Amount` > 500) AS High_Value_Transactions
FROM`bright-learn-prac3.Retail_Sales.Data`
GROUP BY Gender;
 
---Q8
SELECT 
    `Product Category`,
    SUM(`Total Amount`) AS `Total Revenue`
FROM`bright-learn-prac3.Retail_Sales.Data`
GROUP BY `Product Category`
HAVING SUM(`Total Amount`) > 5000;
 
---Q9
SELECT 
    `Transaction ID`,
    `Price per Unit`,
    CASE 
        WHEN `Price per Unit` < 50 THEN 'Cheap'
        WHEN `Price per Unit` BETWEEN 50 AND 200 THEN 'Moderate'
        ELSE 'Expensive'
    END AS Unit_Cost_Category
FROM`bright-learn-prac3.Retail_Sales.Data`;
 
---Q10
 
SELECT 
    `Customer ID`,
    Age,
    `Total Amount`,
    CASE 
        WHEN `Total Amount` > 1000 THEN 'High'
        ELSE 'Low'
    END AS Spending_Level
FROM `bright-learn-prac3.Retail_Sales.Data`
WHERE Age >= 40;
