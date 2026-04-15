🍊 Swiggy Sales Analysis

📌 Overview

This project analyzes Swiggy food delivery data across India to uncover sales trends, top-performing restaurants, popular dishes, and location-based revenue patterns. The analysis is performed using Python for data cleaning & EDA, SQL for business insights, and Power BI for interactive dashboards.

❓ Business Problem

Swiggy operates across hundreds of cities in India with thousands of restaurant partners. This project aims to answer:

Which restaurants and dishes generate the most revenue?

Which states and cities have the highest order volumes?

What food categories drive the most sales?

How can Swiggy optimize its restaurant partnerships and city-level strategies?

📂 Dataset (Columns: Description)

State: State where the order was placed

City:	City where the order was placed

Order Date:	Date of the order

Restaurant Name:	Name of the restaurant

Location:	Area/locality of the restaurant

Category:	Food category (e.g., Recommended, Main Course)

Dish Name:	Name of the dish ordered

Price (INR):	Price of the dish in Indian Rupees

Rating:	Restaurant rating (out of 5)

Rating Count:	Number of ratings received

Total Records: 1,97,430 rows

Time Period: 2025

📊 EDA Insights

1. The dataset contains 1,97,430 orders across multiple states and cities in India

2. KFC is the highest revenue-generating restaurant with ₹42.5L in total sales, contributing a significant share of platform revenue

3. Bengaluru is the most active city with 20,077 orders, nearly double the next city Mumbai at 10,507

4. Karnataka leads state-level revenue at ₹54.6L, followed by Uttar Pradesh (₹31.2L) and Telangana (₹30.2L)

5. The Recommended food category generates the highest revenue at ₹71.9L — significantly higher than all other categories

6. Choco Lava Cake is the single most ordered dish with 303 orders, followed by Veg Fried Rice (269) and Paneer Butter Masala (237)

7. The overall average rating across the platform is 4.34 out of 5, indicating strong customer satisfaction

8. The average order value is ₹268.51, suggesting a mid-range spending pattern per order

9. January 2025 recorded the highest monthly revenue at ₹68.3L while February 2025 was the lowest at ₹62.7L

🛢️ SQL Insights

1. Top 10 Restaurants by Total Revenue:

KFC leads with ₹42.5L, followed by McDonald's (₹33.4L), Pizza Hut (₹21.3L), Burger King (₹19L), and Domino's Pizza (₹18.3L) — top 5 are all global QSR chains

2. Top 10 Cities by Total Orders:

Bengaluru dominates with 20,077 orders — almost double Mumbai (10,507). Most other cities cluster around 10,000 orders, showing balanced demand across metro cities

3. Top 10 States by Total Revenue:

Karnataka tops at ₹54.6L, followed by Uttar Pradesh (₹31.2L), Telangana (₹30.2L), Maharashtra (₹30.2L), and Delhi (₹28.3L)

4. Most Ordered Dishes:

Choco Lava Cake (303), Veg Fried Rice (269), Paneer Butter Masala (237), Jeera Rice (233), Chicken Sausage (229) — mix of dessert, rice, and snack items

5. Top Rated Restaurants:

Sakana (4.82), Jagannath Mandir Arna Prasad (4.75), Vijay Dairy (4.75), Radhey Lal's Parampara Sweets (4.74), I Deli Cafe (4.74) — all local/regional brands outperform global chains in ratings

6. Monthly Revenue Trend:

Peak month was January 2025 at ₹68.3L; lowest was February 2025 at ₹62.7L — a seasonal dip post New Year

7. Revenue by Category:
   
Recommended category dominates at ₹71.9L, followed by Main Course (₹7.6L), Burger Combos (₹5.1L), Desserts (₹4.8L), and McSaver Combos (₹4.3L)

8. Average Order Value:

Overall average order value across the platform is ₹268.51

✅ Business Solutions

1. Double Down on Bengaluru & Karnataka:

Bengaluru alone accounts for 20K+ orders and Karnataka drives ₹54.6L in revenue. Swiggy should increase restaurant partnerships, offer exclusive city deals, and push marketing spend in this region to maximize ROI.

2. Boost Underperforming Metro Cities:

Cities like Mumbai, Hyderabad, Jaipur, and Lucknow all sit around 10K orders — far behind Bengaluru. Targeted promotions, referral programs, and restaurant onboarding drives in these cities can close the gap.

3. Promote High-Rating Local Restaurants:

Local brands like Sakana (4.82), Vijay Dairy (4.75), and Radhey Lal's Parampara Sweets (4.74) consistently outrate global chains. Featuring them in "Top Rated" sections can improve customer trust and order diversity.

4. Leverage Top Dishes for Marketing:

Choco Lava Cake, Veg Fried Rice, and Paneer Butter Masala are consistently top-ordered dishes. Featuring these in banner ads, combo deals, and flash sales can directly boost order volumes.

5. Address February Revenue Dip:

February shows the lowest monthly revenue at ₹62.7L. Swiggy can counter this seasonal dip with Valentine's Day meal combos, limited-time discounts, and loyalty reward campaigns.

6. Increase Average Order Value:

With AOV at ₹268.51, introducing bundle deals, free delivery on orders above ₹350, and upsell recommendations (e.g., "Add a Choco Lava Cake") can push the average higher.

7. Expand the Recommended Category:

The Recommended category alone drives ₹71.9L — nearly 10x the next category. Expanding curated recommendation lists with personalization can further accelerate this category's growth.

🛠️ Tools Used

Python (Pandas, Matplotlib, Seaborn) — Data Cleaning & EDA

MySQL — SQL Analysis

Power BI — Interactive Dashboard

## 📁 Files
- `Swiggy Sales Analysis.pbix` - All 3 dashboards
- `Dashboard 1.png`, `Dashboard 2.png`, `Dashboard 3.png` - Screenshots
- `Swiggy Sales Analysis.SQL` - SQL Queries
- `Swiggy_Sales_Analysis (2).ipynb` - EDA

📸 Dashboard Preview

![Dashboard 1](<Dashboard 1.png>)
![Dashboard 2](<Dashboard 2.png>)
![Dashboard 3](<Dashboard 3.png>)
