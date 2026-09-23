# Customer Churn & Retention Analytics

An end-to-end customer churn analytics project using **Python, SQL, Machine Learning, and Power BI** to analyze customer behavior, identify churn patterns, estimate customer churn probability, and visualize high-risk customer segments.

## Project Overview

Customer churn is an important business problem because losing existing customers can directly affect recurring revenue.

This project analyzes customer-level data to:

* Understand historical churn patterns
* Identify customer segments associated with higher churn
* Engineer features for machine learning
* Predict customer churn probability using Logistic Regression
* Identify high-risk customers
* Estimate monthly revenue associated with high-risk customers
* Build an interactive Power BI dashboard for business analysis

## Tech Stack

* **Python**

  * Pandas
  * NumPy
  * Matplotlib
  * Seaborn
  * Scikit-learn

* **SQL**

  * MySQL
  * Aggregations
  * CASE statements
  * Subqueries
  * Customer segmentation

* **Machine Learning**

  * Train/Test Split
  * One-Hot Encoding
  * Logistic Regression
  * Churn Probability
  * Precision
  * Recall
  * F1 Score
  * ROC-AUC
  * Confusion Matrix

* **Power BI**

  * Power Query
  * Data Transformation
  * DAX
  * KPI Cards
  * Interactive Charts
  * Slicers
  * Conditional Formatting

## Project Workflow

```text
Raw Customer Data
        ↓
Python Data Cleaning
        ↓
Exploratory Data Analysis
        ↓
Feature Engineering
        ↓
Logistic Regression
        ↓
Churn Probability
        ↓
SQL Business Analysis
        ↓
Power BI Dashboard
```

## Dataset

The project uses the Telco Customer Churn dataset.

The dataset contains customer-level information including:

* Customer demographics
* Tenure
* Contract type
* Internet service
* Payment method
* Monthly charges
* Total charges
* Churn status

## Python Analysis

Python was used for:

1. Data loading and cleaning
2. Missing-value handling
3. Exploratory data analysis
4. Churn distribution analysis
5. Feature engineering
6. Machine learning preparation

### Feature Engineering

Additional analytical features were created, including:

* ChurnFlag
* ServiceCount
* MonthlyChargeCategory
* HighValueCustomer
* TenureGroup
* EstimatedAnnualCharges

## Machine Learning

A Logistic Regression model was developed to estimate the probability that a customer would churn.

Categorical features were transformed using One-Hot Encoding.

The model was evaluated using:

* Accuracy
* Precision
* Recall
* F1 Score
* ROC-AUC
* Confusion Matrix

The model's probability output was then used to create customer risk categories:

```text
Low Risk
Medium Risk
High Risk
```

The risk thresholds used in the project are analytical categories defined for this portfolio project and are not universal business thresholds.

## SQL Analysis

SQL was used to answer business questions such as:

* What is the overall churn rate?
* How does churn vary by contract type?
* How does churn vary by payment method?
* How does churn vary by internet service?
* Which tenure groups have higher churn?
* How many customers are classified as high risk?
* What monthly charges are associated with high-risk customers?
* Which customers belong to priority risk segments?

## Power BI Dashboard

The Power BI dashboard provides an interactive view of:

* Total Customers
* Churn Rate
* Churned Customers
* High-Risk Customers
* Monthly Revenue
* Revenue associated with High-Risk Customers
* Churn Rate by Contract
* Churn Rate by Tenure
* Risk Distribution
* Customer Risk by Tenure and Monthly Charges
* High-Risk Customer Details

### Dashboard Preview

![Customer Churn Dashboard](screenshots/dashboard_overview.png)

## Key Insights

The analysis can be used to investigate:

* Differences in churn across contract types
* Churn patterns across customer tenure
* Customer segments with elevated predicted churn probability
* Monthly charges associated with high-risk customers
* Individual customers requiring further investigation

The dashboard is intended as an analytical decision-support tool rather than a guarantee of future customer behavior.

## Project Structure

```text
Customer-Churn-Analytics/
│
├── data/
├── notebooks/
├── sql/
├── powerbi/
├── screenshots/
├── .gitignore
├── README.md
└── pyproject.toml
```

## How to Run

### 1. Clone the repository

```bash
git clone <your-github-repository-url>
cd Customer-Churn-Analytics
```

### 2. Install dependencies

```bash
uv sync
```

### 3. Run the notebooks

Run the notebooks in this order:

```text
01_data_exploration.ipynb
02_eda.ipynb
03_feature_engineering.ipynb
04_ml_model.ipynb
```

### 4. SQL

Import the generated prediction dataset into MySQL and execute:

```text
sql/churn_analysis.sql
```

### 5. Power BI

Open:

```text
powerbi/Customer_Churn_Dashboard.pbix
```

and refresh the data if required.

## Future Improvements

Potential improvements include:

* Hyperparameter tuning
* Random Forest / XGBoost comparison
* Cross-validation
* Model explainability using SHAP
* Churn probability threshold optimization
* Automated data pipeline
* Customer retention recommendation system
* Deployment through FastAPI

````

You can replace `<your-github-repository-url>` after creating the repository.

---

# 8.5 Add screenshots

Don't just upload the `.pbix` file.

Recruiters may not open Power BI files.

Take **2–3 screenshots**.

### Screenshot 1 — Dashboard

Save as:

```text
screenshots/dashboard_overview.png
````

This should show the complete dashboard.

### Screenshot 2 — Churn analysis

Save:

```text
screenshots/churn_by_contract.png
```

Show:

* Churn Rate by Contract
* Churn Rate by Tenure
* Risk distribution

### Screenshot 3 — Customer risk

Save:

```text
screenshots/high_risk_customers.png
```

Show your high-risk customer table.

---

# 8.6 Create your GitHub repository

On GitHub, create:

```text
Customer-Churn-Analytics
```

Then from PowerShell:

```powershell
git init
```

Add everything:

```powershell
git add .
```

Check:

```powershell
git status
```

You should make sure things like `.env` and `.venv` aren't being added.

Then:

```powershell
git commit -m "Initial customer churn analytics project"
```

Set your main branch:

```powershell
git branch -M main
```

Add your remote:

```powershell
git remote add origin YOUR_GITHUB_REPOSITORY_URL
```

Then:

```powershell
git push -u origin main
```

---
