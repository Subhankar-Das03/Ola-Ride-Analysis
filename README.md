# 🚖 OLA Ride Analysis

## 📌 Project Overview
This project performs an end-to-end analysis of OLA ride-booking data to uncover insights related to demand patterns, cancellations, revenue, customer behavior, and operational efficiency.  
Using **Python, MySQL, and Power BI**, raw ride data is transformed into actionable business intelligence to support data-driven decision-making for ride-hailing operations.

---

## ❓ Problem Statement
Ride-hailing platforms generate massive transactional data, but businesses often struggle to answer critical questions such as:
- Why are ride cancellations high?
- When and where does peak demand occur?
- Which vehicle types and payment modes drive revenue?
- Are customer and driver ratings aligned with service performance?

This project addresses these challenges through **data analytics, SQL-based querying, and dashboard-driven insights**.

---

## 🔄 Project Workflow
1. Raw data ingestion (Excel)
2. Data cleaning & feature engineering (Python)
3. Exploratory Data Analysis (Python)
4. Export cleaned data to CSV
5. Load data into MySQL database
6. SQL-based analytical queries
7. Power BI dashboard creation
8. Business insights & recommendations

---

## 🛠️ Tools Used
- **Python**: Pandas, NumPy, Matplotlib, Seaborn  
- **Database**: MySQL  
- **Visualization**: Power BI  

---

## 📊 EDA in Python

### Key Steps
- Removed duplicates and irrelevant columns  
- Handled missing and inconsistent values  
- Converted date & time fields  
- Engineered analytical features:
  - Successful booking flag  
  - Customer vs driver cancellation flags  
  - Hourly, daily, and weekday features  

### Key Findings
- Majority of rides are successful, but cancellation rate remains significant  
- Demand peaks during morning and evening commute hours  
- Prime Sedan and Auto are the most used vehicle types  
- Cash dominates payments, followed by UPI  

---

## 🔗 Python–MySQL Connection
- Cleaned dataset exported as CSV  
- Data loaded into MySQL using Python MySQL Connector  
- Ensured correct schema, data types, and primary key usage  

---

## 🧮 SQL Analysis

### Key Business Questions Answered
- Total and successful bookings  
- Revenue from completed rides  
- Average ride distance by vehicle type  
- Cancellation comparison (customer vs driver)  
- Top customers by booking frequency  
- Rating trends by vehicle category  
- Payment method contribution  

SQL enabled **structured, database-level decision-making analysis**.

---

## 📈 Dashboard Insights (Power BI)

### 📌 Booking Overview Dashboard
- Over **103K bookings**, indicating strong and stable platform usage  
- Only **~62% ride completion rate**, highlighting cancellations and operational drop-offs  
- **UPI dominates payments**, with cash as a strong secondary option  
- Ride demand is evenly split between **day and night**, confirming 24×7 usage  
- Prime Sedan, Auto, and eBike are the most preferred vehicle types  
- Bookings are well distributed across locations, showing balanced urban mobility  

---

### 🚗 Vehicle Analysis Dashboard
- Booking and completion volumes are balanced across vehicle types  
- Autos serve **short-distance trips (~10 km)**, ideal for last-mile connectivity  
- Prime Sedan, Prime Plus, and eBike drive the highest total trip distance  
- Vehicle usage patterns are consistent across pickup locations  
- Gap between total and completed rides highlights operational drop-offs  
- Higher vehicle trip time vs customer trip time indicates idle time and efficiency gaps  

---

### 💰 Revenue Analysis Dashboard
- Generates **₹35M revenue** from **103K bookings**, reflecting healthy demand  
- Revenue leakage exists due to incomplete rides  
- Revenue is driven mainly by **weekday commuting (Mon–Wed)**  
- Peak revenue during morning and evening hours  
- Weekends show lower but stable demand, indicating growth opportunity  
- Improving fleet utilization can directly increase revenue output  

---

### ❌ Cancellation Analysis Dashboard
- High **28% cancellation rate**, dominated by driver cancellations  
- Driver readiness and vehicle issues are primary causes  
- Policy-related cancellations highlight need for clearer customer guidelines  
- Customer cancellations largely due to delays and poor communication  
- Weekdays account for ~74% of cancellations  
- Peak-hour congestion is the major operational bottleneck  

---

### ⭐ Ratings Analysis Dashboard
- Average rating of **4** for both customers and drivers  
- Very low **5-star rating share (~2.4%)**, indicating limited delight experiences  
- High proportion of low ratings signals dissatisfaction pockets  
- Ratings are consistent across vehicle types, showing systemic issues  
- Weekend rides receive better ratings than weekdays  
- Customer and driver ratings remain well aligned  

---

## 📌 Business Recommendations
- **Reduce Cancellations & Improve Completion Rate**  
  Improve driver readiness, ETA accuracy, and surge transparency, especially during peak hours.
- **Optimize Fleet Utilization & Reduce Idle Time**  
  Enhance driver–trip matching and incentivize faster trip acceptance.
- **Strengthen High-Demand & High-Value Vehicles**  
  Increase availability of Prime Sedan, Auto, and eBike.
- **Adopt Location & Time-Based Dynamic Allocation**  
  Use real-time demand forecasting for driver deployment in high-demand zones.
- **Boost Revenue During Off-Peak & Weekends**  
  Introduce weekend offers, leisure-route promotions, and off-peak discounts.
- **Enhance Customer Experience to Drive Higher Ratings**  
  Enforce vehicle condition checks, improve communication, and reward high-performing drivers.

---

## 🧾 Short Conclusion
The analysis reveals that **OLA has strong demand and revenue potential**, but performance is constrained by **operational inefficiencies**, particularly high driver-side cancellations.  
Customer satisfaction remains stable, indicating that future growth should focus on **efficiency, reliability, and scalable operational improvements** rather than basic service correction.
