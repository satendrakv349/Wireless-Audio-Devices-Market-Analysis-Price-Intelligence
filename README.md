# Wireless Audio Devices Market Analysis & Price Intelligence

An end-to-end data analytics project analyzing the wireless earbuds market — covering pricing trends, ratings, battery life, and customer reviews — using **Python**, **SQL**, and **Power BI**.

![Dashboard](Dashboard%20Image.png)

---

## 📌 Project Objective

To analyze the wireless earbuds market and answer key business questions:
- Which price range offers the best rating-to-price value?
- How do battery life and price correlate across brands?
- Which product features (driver size, Bluetooth version, IP rating) drive higher ratings?
- Where are the pricing and feature gaps competitors could exploit?

---

## 🗂️ Project Structure

```
├── data/
│   ├── raw_data.csv              # Raw scraped data
│   └── cleaned_data.csv          # Cleaned, analysis-ready data
├── notebooks/
│   └── data_cleaning_eda.ipynb   # Python cleaning + exploratory analysis
├── sql/
│   └── analysis_queries.sql      # SQL queries (CTEs, window functions, ranking)
├── dashboard/
│   ├── earbuds_dashboard.pbix    # Power BI dashboard file
│   └── Dashboard Image.png       # Dashboard preview
└── README.md
```

---

## 🛠️ Tools & Skills Used

| Tool | Purpose |
|---|---|
| Python (Pandas) | Data cleaning, handling missing values, feature engineering |
| SQL (MySQL) | Window functions, CTEs, ranking, aggregate analysis |
| Power BI | Interactive dashboard with filters and drill-downs |

---

## 🔍 Key Steps

1. **Data Collection** — Product listings scraped covering name, price, rating, color, driver size, battery life, connectivity type, IP rating, and more.
2. **Data Cleaning (Python)** — Handled missing specification fields, standardized inconsistent units (e.g., battery life formats), removed duplicates.
3. **SQL Analysis** — Used window functions to rank products by value-for-money within each price bracket; CTEs to segment brands by average rating.
4. **Dashboard (Power BI)** — Built an interactive dashboard to visualize price distribution, rating trends, and feature comparisons across brands.

---

## 📊 Key Insights

- Products in the ₹1,000–1,500 range had the highest rating-to-price ratio
- Earbuds with IP54+ rating showed 15% higher average ratings


---

## 💡 Business Recommendation


"Brands should prioritize IP rating and battery transparency in the ₹1,000–1,500 segment, where competition is dense but feature disclosure is inconsistent — creating a differentiation opportunity."

---


## 📬 Contact

Satendra Kumar — [LinkedIn](linkedin.com/in/satendra-kumar-data-analyst349) | [Email](satendrakv349@gmail.com)
