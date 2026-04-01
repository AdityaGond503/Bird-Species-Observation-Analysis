# 🐦 Bird Species Observation Analysis

📊 **Data Analytics Project | Python + SQL + Power BI**

Welcome to the **Bird Species Observation Analysis** repository! This project analyzes bird monitoring data across diverse habitats to uncover ecological patterns, environmental impacts on bird activity, and conservation-related insights.

---

## 🚀 Project Overview

This end-to-end data analytics project transforms raw bird observation data into meaningful insights through:

🔹 Data Cleaning & Exploratory Analysis (Python)  
🔹 SQL-based Advanced Analysis  
🔹 Interactive Dashboards (Power BI)  

The insights generated support biodiversity monitoring, habitat comparison, and identification of at-risk bird species — valuable for ecological stakeholders and conservation efforts.

---

## 📌 Project Structure

| Folder | Description |
|--------|-------------|
| `data/` | Original and cleaned datasets |
| `python/` | Python scripts & Jupyter Notebooks for data preprocessing & EDA |
| `sql/` | SQL queries & advanced analysis scripts |
| `power_bi_dashboards/` | Power BI `.pbix` dashboard files |
| `screenshots/` | Visual snapshots of dashboards and key visualizations |
| `README.md` | Project documentation |

---

## 🧠 Objectives

✔ Compare bird activity across **habitats (forest vs grassland)**  
✔ Identify **top observed species** and biodiversity hotspots  
✔ Study environmental factor impacts (temperature, humidity, sky & wind)  
✔ Reveal **conservation watchlist species** and rare observations  
✔ Provide **interactive dashboards** for data exploration

---

## 📁 Data Description

The dataset contains two main Excel files:

📌 `Bird_monitoring_data_Forest.xlsx`  
📌 `Bird_monitoring_data_Grassland.xlsx`

Each file contains multiple sheets named after monitoring parks (e.g., ANTI, CATO, CHOH). Key fields include:

| Column | Meaning |
|--------|---------|
| `Scientific_Name` | Bird species scientific name |
| `Common_Name` | Bird species common name |
| `Habitat` | Forest or Grassland |
| `Temperature`, `Humidity`, `Wind`, `Sky` | Environmental conditions |
| `PIF_Watchlist_Status` | Watchlist indicator (0 = No, 1 = Yes) |

---

## 🧹 Data Cleaning & EDA (Python)

We used Python (Pandas, Numpy, Seaborn & Matplotlib) to:

✔ Merge sheets into one master dataset  
✔ Handle missing values & duplicates  
✔ Convert date/time & temperature fields  
✔ Extract useful analytical features  
✔ Visualize patterns and trends

📌 Python Notebook: Bird_Observation_Analysis.ipynb

🛠 SQL Analysis

The cleaned dataset was imported to SQL for deeper analysis using:

🔹 CTEs
🔹 Window Functions
🔹 Aggregation & Subqueries

Example queries included:

✔ Top bird species ranking
✔ Species diversity by habitat
✔ Cumulative trend analysis
✔ Park biodiversity comparison
✔ Watchlist species identification

📌 SQL file: Advanced_SQL_Analysis.sql

📊 Power BI Dashboards

We created 3 interactive dashboards:

✅ Dashboard 1 — Overview

• Total Observations
• Species diversity
• Top species
• Habitat comparison

Screenshots:
📌 Power BI Dashboard 1
<img width="1540" height="862" alt="dash1" src="https://github.com/user-attachments/assets/b6780fda-b0e2-45fa-8e51-5c83703e1c48" />


✅ Dashboard 2 — Environmental Impact

• Temperature vs birds
• Humidity patterns
• Sky and wind conditions impact

Screenshots:
📌 Power BI Dashboard 2
<img width="1538" height="862" alt="dash2" src="https://github.com/user-attachments/assets/a2fe8ea7-4899-4315-91b6-fe181863b80c" />


✅ Dashboard 3 — Conservation & Behavior

• Watchlist species insights
• Rare species detection
• Species by park & habitat

Screenshots:
📌 Power BI Dashboard 3
<img width="1538" height="863" alt="dash3" src="https://github.com/user-attachments/assets/745bb4ad-63c4-4d40-9220-70b3312b52bf" />

💡 Key Insights

✔ Forest habitats show significantly higher bird activity than grasslands
✔ Moderate environmental conditions correlate with more sightings
✔ Several watchlist species were observed (indicates habitat value)
✔ Rare species highlight conservation priority zones
✔ Park-wise analysis identifies biodiversity hotspots

📦 How to Run
1. Clone this repo
git clone https://github.com/AdityaGond503/Bird-Species-Observation-Analysis.git
2. Open and run:

✔ Python Notebook in Jupyter
✔ SQL queries in your SQL client
✔ Power BI dashboard files in Power BI Desktop

🙋‍♂️ About Me

I’m an aspiring Data Analyst passionate about data storytelling and solving real-world problems using analytics. This project demonstrates my skills in Python, SQL, Power BI, data visualization, and analytical thinking.

🔗 Let’s connect!

LinkedIn: (www.linkedin.com/in/aditya-gond-292274371)
Email: (adigond5678@gmail.com)

⭐ If you find this useful

Please ⭐ star this repository and share it to help others learn!
