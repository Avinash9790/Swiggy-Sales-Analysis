# Total Orders

SELECT COUNT(*) AS Total_Orders FROM swiggy;

-- Distinct Cities & States

SELECT COUNT(DISTINCT City) AS Total_Cities,
       COUNT(DISTINCT State) AS Total_States
FROM swiggy;

-- Distinct Restaurants

SELECT COUNT(DISTINCT `Restaurant_Name`) AS Total_Restaurants FROM swiggy;

-- Total Revenue

SELECT ROUND(SUM(`Price_INR`), 2) AS Total_Revenue FROM swiggy;

-- Revenue by State

SELECT State,
       ROUND(SUM(`Price_INR`), 2) AS Total_Revenue,
       COUNT(*) AS Total_Orders
FROM swiggy
GROUP BY State
ORDER BY Total_Revenue DESC;

-- Top 10 Revenue by City

SELECT City,
       ROUND(SUM(`Price_INR`), 2) AS Total_Revenue,
       COUNT(*) AS Total_Orders
FROM swiggy
GROUP BY City
ORDER BY Total_Revenue DESC
LIMIT 10;

-- Monthly Revenue Trend

SELECT DATE_FORMAT(`Order_Date`, '%Y-%m') AS Month,
       ROUND(SUM(`Price_INR`), 2) AS Monthly_Revenue,
       COUNT(*) AS Total_Orders
FROM swiggy
GROUP BY Month
ORDER BY Month;

-- Quarterly Revenue

SELECT CONCAT(YEAR(`Order_Date`), ' Q', QUARTER(`Order_Date`)) AS Quarter,
       ROUND(SUM(`Price_INR`), 2) AS Revenue,
       COUNT(*) AS Orders
FROM swiggy
GROUP BY Quarter
ORDER BY Quarter;

-- Top 10 Restaurants by Revenue

SELECT `Restaurant_Name`, City,
       ROUND(SUM(`Price_INR`), 2) AS Total_Revenue,
       COUNT(*) AS Total_Orders
FROM swiggy
GROUP BY `Restaurant_Name`, City
ORDER BY Total_Revenue DESC
LIMIT 10;

-- Top 10 Restaurants by Rating Count (Most Reviewed)

SELECT `Restaurant_Name`, City,
       ROUND(AVG(Rating),2) AS Avg_Rating,
       SUM(`Rating_Count`) AS Total_Reviews
FROM swiggy
GROUP BY `Restaurant_Name`, City
ORDER BY Total_Reviews DESC
LIMIT 10;

-- Top 10 Best Selling Dishes by Orders

SELECT Dish_Name,
       COUNT(*) AS Order_Count,
       ROUND(AVG(Price_INR), 2) AS Avg_Price
FROM swiggy
GROUP BY Dish_Name
ORDER BY Order_Count DESC
LIMIT 10;

-- Revenue by Category
SELECT Category,
       COUNT(*) AS Total_Orders,
       ROUND(SUM(Price_INR), 2) AS Total_Revenue,
       ROUND(AVG(Price_INR), 2) AS Avg_Price
FROM swiggy
GROUP BY Category
ORDER BY Total_Revenue DESC;

-- Average Rating by City

SELECT City,
       ROUND(AVG(Rating), 2) AS Avg_Rating,
       COUNT(*) AS Total_Orders
FROM swiggy
GROUP BY City
ORDER BY Avg_Rating DESC
LIMIT 10;

-- Rating Distribution

SELECT Rating,
       COUNT(*) AS Count
FROM swiggy
GROUP BY Rating
ORDER BY Rating DESC;

-- Avg Order Value by State

SELECT State,
       ROUND(AVG(Price_INR), 2) AS Avg_Order_Value
FROM swiggy
GROUP BY State
ORDER BY Avg_Order_Value DESC;

-- High Value Orders (Above ₹500)

SELECT Restaurant_Name, City, Dish_Name,
       Price_INR, Rating
FROM swiggy
WHERE Price_INR > 500
ORDER BY Price_INR DESC
LIMIT 10;

-- Most Popular Category per City

SELECT City, Category, Total_Orders
FROM (
    SELECT City, Category,
           COUNT(*) AS Total_Orders,
           RANK() OVER (PARTITION BY City ORDER BY COUNT(*) DESC) AS rnk
    FROM swiggy
    GROUP BY City, Category
) ranked
WHERE rnk = 1
ORDER BY Total_Orders DESC;