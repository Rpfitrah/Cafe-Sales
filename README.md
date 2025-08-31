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
1. [Project Overview](#-project-overview)  
2. [Data Source & Loading](#-data-source--loading)  
3. [Initial Data Inspection](#-initial-data-inspection)  
4. [Data Cleaning & Preprocessing](#-data-cleaning--preprocessing)  
5. [Exploratory Data Analysis (EDA)](#-exploratory-data-analysis-eda)  
6. [Statistical Analysis](#-statistical-analysis)  
7. [Key Findings](#-key-findings)  
8. [Recommendations](#-recommendations)  
9. [Next Steps](#-next-steps)  
10. [How to Reproduce](#-how-to-reproduce)  
11. [Contact / About Me](#-contact--about-me)

---

## 📌 Project Overview
This project analyzes **Café Sales Data (2023)** to uncover insights about product performance, customer behavior, and operational issues.  
It aims to:
- Identify **best-selling products** and their contribution to revenue.  
- Understand **customer preferences** (payment methods, dine-in vs takeaway).  
- Detect **daily and monthly sales trends**.  
- Highlight **data quality issues** and operational inefficiencies.  

---

## 🗂 Data Source & Loading
- **Source**: Kaggle Dataset (*Cafe Sales – Dirty Data for Cleaning Training*).  
- **Period**: Jan 1 – Dec 31, 2023.  
- **Governance**: Anonymized and GDPR compliant.  
- Loaded into **MySQL**, then queried into Python (`pandas` + `pymysql`).  

---

## 🔎 Initial Data Inspection
- **Shape**: 10,000 rows × 8 columns.  
- **Total Revenue (2023)**: **$87,768**.  
- **Problematic Records**: 2,845 (`ERROR`, `UNKNOWN`, $0 transactions).  

Sample records:  

| transaction_id | item   | quantity | price_unit | total_spent | payment_method | location   | transaction_date |
|----------------|--------|----------|------------|-------------|----------------|------------|------------------|
| TXN_1961373    | Juice  | 2        | 2.0        | 4.0         | Digital Wallet | Takeaway   | 2023-09-08       |
| TXN_4977031    | Cake   | 4        | 3.0        | 12.0        | Cash           | In-store   | 2023-05-16       |

---

## 🧹 Data Cleaning & Preprocessing
Performed steps (no row deletion):  
- **Error Handling**: Replaced `ERROR` and `UNKNOWN` with `NULL` (2,845 records).  
- **Missing Values**:  
  - `quantity`, `price_unit`: filled with **median**.  
  - `total_spent`: calculated = `quantity × price_unit`.  
  - `transaction_date`: filled with **median date**.  
  - Categorical columns: filled with **mode**.  
- **Transformation**: Converted `transaction_date` → datetime, created `trans_year`, `trans_month`.  

---

## 📊 Exploratory Data Analysis (EDA)

### 1. Best-Selling Products
- **Juice**: 6,435 units sold (flagship product).  
- Cakes and Coffee follow but contribute less volume.  

![Best Selling Items](images/best_selling_items.png)

---

### 2. Payment Methods
- **Digital Wallet**: 54.69%  
- **Card**: 22.73%  
- **Cash**: 22.58%  

![Payment Methods](images/payment_methods.png)

---

### 3. Consumption Pattern
- **Takeaway**: 70%  
- **Dine-in**: 30%  

![Consumption Pattern](images/consumption_pattern.png)

---

### 4. Sales Trend (2023)
- Revenue stable across year with **mid-year spikes** (May–July).  
- Weekends show noticeable increase in takeaway orders.  

![Monthly Sales](images/monthly_sales.png)

---

## 📈 Statistical Analysis
- **Descriptive Statistics**: Median and mode used for imputation.  
- **Correlation**: `quantity` vs `total_spent` = **0.98 (very strong)**.  
- **Time-Series Analysis**: Detected consistent trend with seasonal peaks mid-year.  

---

## 🚀 Key Findings
- **Juice** is the flagship product (6,435 units).  
- **Digital Wallets** are the most preferred payment method.  
- **Takeaway dominates** (70% vs 30% dine-in).  
- **Total 2023 revenue**: $87,768.  
- **Operational issues**: 2,845 problematic transactions.  

---

## 💡 Recommendations
1. **Flagship Product Optimization** → Boost promotions for Juice; create new variants.  
2. **Enhance Digital Experience** → Loyalty program integrated with digital wallets.  
3. **Improve Operations** → Data validation at POS to reduce errors.  
4. **Customer Experience** → Improve takeaway packaging & enhance dine-in atmosphere.  
5. **Continuous Monitoring** → Build real-time dashboards + monthly performance reports.  

---

## 👩‍💻 Author

**Fitrah Rahmi Putri, S.Kom**  
📧 Email: fitrah.rahmi.putri@gmail.com  
🔗 LinkedIn: [fitrah-rahmi-putri](https://www.linkedin.com/in/fitrah-rahmi-putri-99711a157/)  
🔗 GitHub: [@Rpfitrah](https://github.com/Rpfitrah)
