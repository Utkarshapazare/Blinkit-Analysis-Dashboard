CREATE DATABASE blinkit_analysis;
USE blinkit_analysis;

CREATE TABLE grocery_data (
    `Item_Fat_Content` VARCHAR(50),
    `Item_Identifier` VARCHAR(20),
    `Item_Type` VARCHAR(100),
    `Outlet_Establishment_Year` INT,
    `Outlet_Identifier` VARCHAR(20),
    `Outlet_Location_Type` VARCHAR(20),
    `Outlet_Size` VARCHAR(20),
    `Outlet_Type` VARCHAR(50),
    `Item_Visibility` FLOAT,
    `Item_Weight` FLOAT,
    `Sales` FLOAT,
    `Rating` FLOAT
);


# 1. Total Sales, No. of Items, Average Sales & Rating
SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(DISTINCT "Item Identifier") AS No_of_Items,
    ROUND(AVG(Sales), 2) AS Avg_Sales,
    ROUND(AVG(Rating), 2) AS Avg_Rating
FROM grocery_data;

# 2. Sales by Item Type
SELECT
    Item_Type,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

#3. Sales by Fat Content
SELECT
    Item_Fat_Content,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;

#4. Sales by Outlet Type
SELECT
    Outlet_Type,
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(Item_Identifier) AS No_of_Items,
    ROUND(AVG(Sales), 2) AS Avg_Sales,
    ROUND(AVG(Rating), 2) AS Avg_Rating,
    ROUND(AVG(Item_Visibility), 2) AS Avg_Visibility
FROM grocery_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC;

#5.Sales by Outlet Size
SELECT
    Outlet_Size,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

#6. Sales by Outlet Location Type (Tier 1, 2, 3)
SELECT
    Outlet_Location_Type,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

#7.Fat Content by Outlet Location
 SELECT
    Outlet_Location_Type,
    Item_Fat_Content,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Outlet_Location_Type, Item_Fat_Content
ORDER BY Outlet_Location_Type, Total_Sales DESC;

#8. Outlet Establishment Trend (Yearly Sales)
SELECT
    Outlet_Establishment_Year,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

select * from grocery_data;

