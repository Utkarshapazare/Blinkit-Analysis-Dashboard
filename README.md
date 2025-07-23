# Blinkit-Analysis-Dashboard
This Power BI dashboard analyzes Blinkit’s sales data to uncover insights across outlet types, item categories, and customer ratings. It highlights trends in total sales, outlet growth, item performance, and fat content distribution. The dashboard is fully interactive, showcasing data-driven decisions with clear visuals and filters.

# 🛒 Blinkit Sales Analysis Dashboard  
📍 *Data-Driven Storytelling with Power BI & SQL*

This project presents an interactive Power BI dashboard built from Blinkit's grocery sales data, showcasing insights on product performance, outlet metrics, customer ratings, and sales trends using SQL-driven data processing.

---

## 🎯 Project Objective

To analyze Blinkit's grocery sales and outlet performance across various categories such as:
- Item Fat Content
- Outlet Size and Type
- Product Categories
- Geographic Tiers
- Customer Ratings
- Year of Establishment

---

## 📊 Dashboard Highlights

✨ **Total Sales:** ₹1,000,000+  
✨ **Items Sold:** 7000+  
✨ **Average Rating:** 3.9  
✨ **Filters Included:** Fat Content, Outlet Type, Size, Location Tier  

---

## 🛠 Tools & Technologies Used

- **Power BI** – For building the dashboard and interactive visuals  
- **MySQL** – For querying and aggregating the dataset  
- **Excel (CSV)** – As the source data file  
- **Workbench** – For database management

---

## 🗃️ Dataset Source

The dataset was provided in CSV format and imported into MySQL as:


Database: blinkit_analysis
Table: grocery_data


---

## 🧾 SQL Queries Used

### 1️⃣ Total Sales, Items, Avg Sales, Avg Rating
```sql
SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    COUNT(DISTINCT Item_Identifier) AS No_of_Items,
    ROUND(AVG(Sales), 2) AS Avg_Sales,
    ROUND(AVG(Rating), 2) AS Avg_Rating
FROM grocery_data;

2️⃣ Sales by Item Type
SELECT
    Item_Type,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC;

3️⃣ Sales by Fat Content
SELECT
    Item_Fat_Content,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC;

4️⃣ Sales by Outlet Type
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

5️⃣ Sales by Outlet Size
SELECT
    Outlet_Size,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

6️⃣ Sales by Outlet Location Type
SELECT
    Outlet_Location_Type,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC;

7️⃣ Fat Content by Outlet Location Type
SELECT
    Outlet_Location_Type,
    Item_Fat_Content,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Outlet_Location_Type, Item_Fat_Content
ORDER BY Outlet_Location_Type, Total_Sales DESC;

8️⃣ Outlet Establishment Year-wise Sales Trend
SELECT
    Outlet_Establishment_Year,
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM grocery_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year;

👩‍💻 About Me
Utkarsha Pazare
🎓 MCA Student | 📊 Certified Data Analyst | 💼 Data Analytics Intern

🔧 Skills: Power BI, Excel, SQL, Python, Tableau
🔗 LinkedIn: [https://www.linkedin.com/in/utkarsha-pazare/]

⭐ Show Your Support
If you found this project helpful:

⭐ Star the repo

💬 Share your feedback

🔗 Connect with me on LinkedIn!

