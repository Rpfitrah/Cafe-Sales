# ☕ Cafe Sales Analysis

![Repo Size](https://img.shields.io/github/repo-size/Rpfitrah/Cafe-Sales)
![Last Commit](https://img.shields.io/github/last-commit/Rpfitrah/Cafe-Sales)
![GitHub License](https://img.shields.io/github/license/Rpfitrah/Cafe-Sales)
![Python](https://img.shields.io/badge/Python-3.9-blue?logo=python)
![Pandas](https://img.shields.io/badge/Pandas-Data--Analysis-yellowgreen)
![Matplotlib](https://img.shields.io/badge/Matplotlib-Visualization-red)
![Seaborn](https://img.shields.io/badge/Seaborn-EDA-blueviolet)
![MySQL](https://img.shields.io/badge/MySQL-Database-lightgrey)

---

## 📑 Table of Contents
1. [Project Overview](#project-overview)  
2. [Data Source & Loading](#data-source--loading)  
3. [Initial Data Inspection](#initial-data-inspection)  
4. [Data Cleaning & Preprocessing](#data-cleaning--preprocessing)  
5. [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)  
   - 5.1 Data Shape & Sample  
   - 5.2 Missing Values & Data Quality  
   - 5.3 Trends & Patterns  
6. [Statistical Analysis](#statistical-analysis)  
7. [Key Findings](#key-findings)  
8. [Recommendations](#recommendations)  
9. [Next Steps](#next-steps)  
10. [How to Reproduce](#how-to-reproduce)  
11. [Contact / About Me](#contact--about-me)

---

## 📌 Project Overview
This project explores **café sales data** to uncover customer purchasing behavior, product performance, and sales trends.  
The analysis aims to:
- Identify **best-selling items** and their contribution to revenue.  
- Understand **customer preferences** based on payment methods and order locations.  
- Detect **seasonality and time-based patterns** in sales.  
- Provide **data-driven recommendations** for business improvement.  

---

## 🗂 Data Source & Loading
- Data is stored in a **MySQL table** named `clean_cafe_sales`.  
- Retrieved into Python via `pymysql` and `pandas.read_sql`.  

**Columns in dataset**:  
`transaction_id`, `item`, `quantity`, `price_unit`, `total_spent`, `payment_method`, `location`, `transaction_date`

---

## 🔎 Initial Data Inspection
- **Shape**: 10,000 rows × 8 columns.  
- **Top 5 sample rows**:  

| transaction_id | item    | quantity | price_unit | total_spent | payment_method | location   | transaction_date |
|----------------|---------|----------|------------|-------------|----------------|------------|------------------|
| TXN_1961373    | Coffee  | 2        | 2.0        | 4.0         | Credit Card    | Takeaway   | 2023-09-08       |
| TXN_4977031    | Cake    | 4        | 3.0        | 12.0        | Cash           | In-store   | 2023-05-16       |
| TXN_4271903    | Cookie  | 4        | 1.0        | NaN         | Credit Card    | In-store   | NaN              |
| TXN_7034554    | Salad   | 2        | 5.0        | 10.0        | NaN            | NaN        | 2023-04-27       |
| TXN_3160411    | Coffee  | 2        | 2.0        | 4.0         | Digital Wallet | In-store   | 2023-06-11       |

---

## 🧹 Data Cleaning & Preprocessing
Steps performed:
1. **Missing Values**  
   - Filled `total_spent` = `quantity × price_unit` when missing.  
   - Dropped rows with missing critical fields (`item`, `quantity`, `transaction_date`).  

2. **Data Types**  
   - Converted `transaction_date` → `datetime`.  

3. **Standardization**  
   - Harmonized categorical values (`payment_method`, `location`).  
   - Ensured `quantity` and `price_unit` are numeric.  

---

## 📊 Exploratory Data Analysis (EDA)

### 5.1 Data Quality Checks
- Missing values mostly in `total_spent`, `payment_method`, and `location`.  
- After cleaning, dataset completeness improved significantly.  

### 5.2 Sales by Product
- **Coffee** is the top-selling product in both volume and revenue.  
- **Cake** and **Cookies** are strong contributors but secondary to Coffee.  

### 5.3 Payment Method Analysis
- **Credit Card**: most frequent payment, stable across months.  
- **Digital Wallet**: growing trend, ~30% of sales but contributing ~35% revenue.  
- **Cash**: declining usage over time.  

### 5.4 Location Insights
- **In-store**: steady daily transactions, consistent across weekdays.  
- **Takeaway**: peaks during weekends, preferred for coffee orders.  

### 5.5 Time-based Trends
- Highest sales recorded in **mid-year months (May–July)**.  
- Noticeable **weekend spikes**, likely due to leisure consumption.  

---

## 📈 Statistical Analysis
- **Correlation**: `quantity` vs `total_spent` → **0.98 (strong positive)**, confirming pricing consistency.  
- **Distribution**: `total_spent` shows right-skewed distribution, majority of transactions are small (< $10).  
- **Group comparisons**: Takeaway orders tend to have **higher average spend per order** vs in-store.  

---

## 🚀 Key Findings
- **Coffee dominates** as the highest revenue generator.  
- **Digital Wallet adoption** is increasing rapidly.  
- **Takeaway orders** are more popular during weekends.  
- **Cash payments** are becoming less common.  
- Data entry gaps (missing `total_spent`, `payment_method`) suggest POS input issues.  

---

## 💡 Recommendations
1. **Promotions on Digital Payments** → offer loyalty points or cashback to encourage continued usage.  
2. **Product Bundling** → especially coffee with cake/cookie for takeaway customers.  
3. **Staffing & Inventory Adjustments** → allocate more resources during weekends and mid-year peaks.  
4. **Improve POS Data Validation** → enforce mandatory fields to reduce missing data.  
5. **Focus on High-margin Products** → highlight Coffee and Cakes in promotions.  

---

## 🔮 Next Steps
- Integrate **external datasets** (weather, holidays) to explain sales fluctuations.  
- Develop a **forecasting model** to predict future demand.  
- Build an **interactive dashboard** using Streamlit/Power BI/Tableau.  
- Conduct **customer segmentation** for targeted marketing.  

---

## ⚙️ How to Reproduce
1. Clone the repository:  
   ```bash
   git clone <repo_url>
   cd Cafe-Sales
