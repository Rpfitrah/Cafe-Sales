# ☕ Cafe Sales Analysis & Insights

**A compelling deep-dive into cafe transaction data to uncover customer behavior patterns, optimize product offerings, and boost revenue performance.**

---

##  Table of Contents

1. [Overview](#overview)  
2. [Technologies & Data Pipeline](#technologies--data-pipeline)  
3. [Dataset & Structure](#dataset--structure)  
4. [Analysis Workflow](#analysis-workflow)  
5. [Visualizations](#visualizations)  
6. [Key Insights](#key-insights)  
7. [Strategic Recommendations](#strategic-recommendations)  
8. [Getting Started](#getting-started)  
9. [Next Steps](#next-steps)  
10. [Project Highlights](#project-highlights)

---

##  Overview

This project performs an end-to-end **exploratory data analysis (EDA)** on cafe sales transactions to identify:
- Popular menu items and sales trends
- Revenue drivers (quantity, price, payment method, location)
- Opportunities for product mix improvement and sales growth

---

##  Technologies & Data Pipeline

- **Languages & Libraries**: Python | Pandas, NumPy, Matplotlib, Seaborn, SciPy  
- **Database**: MySQL (transaction extraction via `pymysql`)  
- **Statistical Analysis**: Pearson correlation to assess feature relationships  
- **Visualization**: Static plots embedded in notebook, to be exported for README inclusion  

---

##  Dataset & Structure

- **Source Table**: `clean_cafe_sales` from MySQL database  
- **Dimensions**: **10,000 rows × 8 columns** :contentReference[oaicite:0]{index=0}  
- **Fields**:
  - `transaction_id`, `item`, `quantity`, `price_unit`, `total_spent`, `payment_method`, `location`, `transaction_date`  

- **Data Characteristics**:
  - Some missing values observed (e.g., `total_spent`, `payment_method`, `location`, `transaction_date`) :contentReference[oaicite:1]{index=1}  
  - Data types require formatting (numerical conversions, date parsing, missing-value handling)

---

##  Analysis Workflow

1. **Data Extraction**  
   Connected to MySQL using `pymysql`, retrieved `clean_cafe_sales`, and stored in a DataFrame (`df_raw`) :contentReference[oaicite:2]{index=2}.

2. **Data Preparation**  
   Created a `df_preprocess` copy and evaluated data dimensions and sample rows for structure and quality checks :contentReference[oaicite:3]{index=3}.

3. **Exploratory Analysis**  
   - Examined distribution of sales by item, location, payment method, and time-based patterns  
   - Calculated correlation (Pearson’s r) among quantitative variables to surface relationships

4. **Visualization**  
   Generated charts to reveal trends and relationships—see section below for examples.

---

##  Visualizations

*(Place these figures in a `plots/` directory and update the image paths when pushing to GitHub.)*

- **Sales by Item (Bar Chart)**  
  `plots/sales_by_item.png`

- **Revenue by Location (Pie or Bar Chart)**  
  `plots/revenue_by_location.png`

- **Daily or Monthly Sales Trend (Line Chart)**  
  `plots/sales_trend_over_time.png`

- **Quantity vs. Total Spent (Scatter Plot + Trendline)**  
  `plots/quantity_vs_total.png`

- **Correlation Matrix (Heatmap)**  
  `plots/correlation_heatmap.png`

---

##  Key Insights

- **Top-selling items**: Coffee, Cake, Sandwich, Cookie, and Salad dominate transaction counts and revenue.

- **Location impact**: *In-store* purchases contribute more per transaction compared to *Takeaway* or unspecified locations.

- **Temporal patterns**: Clear weekly or monthly sales peaks that may align with weekends or special promotions.

- **Spending behavior**: Strong positive correlation between `quantity` and `total_spent`, confirming purchase predictability. Price per unit variation influences spending trends.

- **Payment preferences**: Distribution across `Cash`, `Credit Card`, `Digital Wallet`, with implications for transaction speed and customer convenience.

---

##  Strategic Recommendations

1. **Optimize Popular Item Offerings**  
   Launch bundle deals (e.g., “Coffee + Cake combo”) to increase average ticket size during peak hours.

2. **Location-based Promotions**  
   Introduce tailored discounts or loyalty points for Takeaway customers to boost demand outside In-store traffic.

3. **Payment Method Optimization**  
   Streamline digital payment platforms if data indicates higher spend or conversion rates from Wallets/Credit Cards.

4. **Promotional Planning**  
   Align marketing campaigns with identified sales peaks (e.g., “Happy Weekend Deal” or seasonal specials).

---

upyter notebook "cafe_sales.ipynb"
