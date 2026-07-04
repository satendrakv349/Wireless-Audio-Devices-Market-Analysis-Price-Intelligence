# 🎧 Wireless Earbuds Market Intelligence Dashboard

An end-to-end Data Analytics project analyzing the wireless earbuds market using **Python, SQL, and Power BI** — covering pricing, ratings, battery life, warranty, water resistance, and brand performance.

![Dashboard](Dashboard%20Image.png)

---

## 📌 Project Overview

The wireless earbuds market has grown rapidly, with hundreds of brands competing across price points and specifications. This project analyzes 810 products across 30 attributes to uncover market trends, customer preferences, and business opportunities.

---

## 🎯 Objectives

- Analyze wireless earbuds market trends and pricing distribution
- Compare brand performance and customer ratings
- Evaluate battery life, warranty, and noise cancellation trends
- Build an interactive Power BI dashboard for business stakeholders
- Answer business questions using SQL (CTEs, window functions, ranking)

---

## 🗂️ Project Structure

```
├── 01_Data_Cleaning.ipynb          # Data cleaning & EDA (Python)
├── earbuds_raw.csv                 # Raw scraped data
├── cleaned_earbuds.csv             # Cleaned, analysis-ready dataset
├── MySQL queries.sql               # SQL analysis (CTEs, window functions, ranking)
├── Wireless_Earbuds_Dashboards.pbix # Power BI dashboard file
├── Dashboard Image.png             # Dashboard preview
├── scraper.py                      # Web scraping script
├── utils.py                        # Helper functions used across scripts
└── README.md
```

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| Python (Pandas, NumPy) | Data cleaning, transformation, EDA |
| SQL (MySQL) | Window functions, CTEs, ranking, business queries |
| Power BI | Interactive dashboard with KPI cards and filters |

---

## 📂 Dataset

- **Rows:** 810
- **Columns:** 30
- **Fields include:** Brand, Product Name, Type, Connectivity, Driver Type, Battery Hours, Price, Average Rating, Review Count, Noise Cancellation, Warranty, Water Rating, Primary Use, Release Year, Color, Weight, and more

---

## 🧹 Data Cleaning (Python)

- Removed duplicate records
- Handled missing values
- Standardized column names (lowercase, underscores)
- Fixed inconsistent data types
- Exported cleaned dataset for SQL/Power BI use

---

## 💾 SQL Analysis

Queries range from beginner to advanced level:
- Aggregate functions, GROUP BY, HAVING
- CASE WHEN logic
- Window functions & ranking functions
- CTEs (Common Table Expressions)
- Subqueries for business-specific insights

---

## 📈 Power BI Dashboard

**KPI Cards:** Total Products · Average Price · Average Rating · Average Battery Life · Total Reviews

**Visualizations:** Top 10 Brands · Price Distribution · Primary Use Analysis · Water Rating Distribution · Noise Cancellation Availability · Warranty Distribution

**Interactive Filters:** Brand · Type · Connectivity · Price Range · Release Year

---

## 📌 Key Insights

*(Replace with your specific numbers once you review the dashboard — this is the section recruiters read most closely)*

-  "Products in the ₹X–Y range had the highest rating-to-price ratio"]
-  "Brand X leads in average rating despite mid-range pricing"]
-  "Only X% of products under ₹1000 offer IP-rated water resistance"]

---

## 💼 Business Recommendations

- Expand product lines in high-demand, underserved price ranges
- Improve battery life disclosure and performance in entry-level products
- Increase warranty duration on budget products to build customer trust
- Prioritize noise cancellation as a differentiator in the mid-premium segment

---

## 🚀 Future Improvements

- Predict product ratings using machine learning
- Build a price prediction model
- Add sentiment analysis on customer reviews
- Connect the dashboard to a live SQL database

---

## 👨‍💻 Author

**Satendra Kumar** — Aspiring Data Analyst
Skills: Python · SQL · Power BI · Excel · Pandas · NumPy · Statistics

[LinkedIn](linkedin.com/in/satendra-kumar-data-analyst349) | [Email](satendrakv349@gmail.com)

---

⭐ If you found this project helpful, consider starring the repository.
