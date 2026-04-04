# 🛵 Swiggy Food Delivery — SQL Data Analysis Project

A MySQL-based exploratory data analysis project on Swiggy restaurant and order data spanning **9 major Indian cities**.

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `swiggy_data.csv` | Raw dataset — 8,680 rows of restaurant/order records |
| `Query.sql` | All SQL queries used in the analysis |
| `swiggy_report.docx` | Full analysis report with query outputs and insights |

---

## 🗃️ Dataset Overview

| Attribute | Value |
|-----------|-------|
| **Total Records** | 8,680 |
| **Cities Covered** | 9 |
| **Unique Restaurants** | 7,865 |
| **Source** | Swiggy (scraped/compiled) |
| **Format** | CSV |

### Columns

| Column | Type | Description |
|--------|------|-------------|
| `ID` | Integer | Unique order/listing identifier |
| `Area` | String | Neighbourhood or locality |
| `City` | String | City name |
| `Restaurant` | String | Restaurant name |
| `Price` | Float | Average order price (₹) |
| `Avg ratings` | Float | Average customer rating (2.0 – 5.0) |
| `Total ratings` | Integer | Total number of ratings received |
| `Food type` | String | Comma-separated list of cuisine categories |
| `Address` | String | Street / road address |
| `Delivery time` | Integer | Estimated delivery time (minutes) |

### Cities

Bangalore · Hyderabad · Mumbai · Pune · Kolkata · Delhi · Chennai · Ahmedabad · Surat

---

## 📊 Key Statistics

| Metric | Value |
|--------|-------|
| Total Sales | ₹30.2 Lakh |
| Average Order Price | ₹348.4 |
| Average Rating | 3.7 / 5.0 |
| Average Delivery Time | ~54 minutes |
| Price Range | ₹0 – ₹2,500 |
| Rating Range | 2.0 – 5.0 |

---

## 🔍 Analysis Performed

The `Query.sql` file covers the following analyses:

1. **Summary Statistics** — Total rows, total sales, average price, average rating
2. **Most Popular Food Types** — Ranked by listing count (Chinese leads at 2,588)
3. **Highest Rated Cities** — Average rating per city
4. **Restaurant Frequency** — How many listings each restaurant appears in
5. **Average Price by Food Type** — Which cuisines cost the most/least
6. **Average Rating by Food Type** — Which cuisines are rated highest
7. **Per-Restaurant Avg Price & Rating** — Combined restaurant-level metrics

---

## 🚀 Getting Started

### 1. Set up the database

```sql
CREATE DATABASE swiggy;
USE swiggy;
```

### 2. Import the data

Import `swiggy_data.csv` into a table named `swiggy` using your preferred method (MySQL Workbench Table Data Import Wizard, or `LOAD DATA INFILE`).

```sql
LOAD DATA INFILE '/path/to/swiggy_data.csv'
INTO TABLE swiggy
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
```

### 3. Run the queries

Open and execute `Query.sql` in MySQL Workbench or any MySQL-compatible client.

---

## 🛠️ Requirements

- **Database:** MySQL 8.0+
- **Client:** MySQL Workbench, DBeaver, or any MySQL-compatible tool
- **Optional (for Python analysis):** `pandas`, `matplotlib`

---

## 💡 Notable Findings

- **Chinese** cuisine has the highest number of listings (2,588 — ~30% of all records)
- **North Indian** and **Indian** follow as the next most common food types
- Average delivery time is ~54 minutes across all cities
- Price distribution is right-skewed — most orders cluster between ₹200–₹400, with a few premium outliers up to ₹2,500
  
