USE online_retail;
SELECT * FROM online_retail;

-- Which products generated the highest revenue?
SELECT 
    StockCode,
    Description,
    SUM(Quantity * UnitPrice) AS Total_Revenue
FROM 
    online_retail
GROUP BY 
    StockCode, Description
ORDER BY 
    Total_Revenue DESC
LIMIT 5;

-- Which countries generate the most revenue?
SELECT
  Country,
  SUM(Quantity * UnitPrice) AS Total_Revenue
FROM 
  online_retail
GROUP BY
  Country
ORDER BY
  Total_Revenue DESC
  LIMIT 2;
  
  -- Who are the top 10 customers by total spending?
SELECT
  CustomerID,
  SUM(Quantity * UnitPrice) AS Total_Spent
FROM 
  Online_retail
GROUP BY
  CustomerID
ORDER BY
  Total_Spent DESC
LIMIT 10;

-- What is the average value of a transaction row?
SELECT
  ROUND(AVG(Quantity * UnitPrice), 2) AS Avg_Transaction_value
FROM
  online_retail;


  
  

  
  
  