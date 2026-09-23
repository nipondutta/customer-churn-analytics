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

# 8.7 Resume bullets

Now the important part.

Don't write:

> Created a Power BI dashboard.

That's too weak.

Your project combines **Python + SQL + ML + Power BI**, so your resume bullets should reflect the full workflow.

### Recommended version

**Customer Churn & Retention Analytics | Python, SQL, Machine Learning, Power BI**

* Built an end-to-end customer churn analytics pipeline using Python for data cleaning, EDA, feature engineering, and customer-level churn probability prediction using Logistic Regression.
* Performed SQL-based customer segmentation and churn analysis across contract, tenure, payment method, and service attributes, including identification of high-risk customers and associated monthly charges.
* Developed an interactive Power BI dashboard with DAX KPIs, slicers, risk segmentation, churn analysis, and high-risk customer-level reporting to support customer retention analysis.

These are stronger because they describe **what you actually built**, rather than simply listing tools.

---

# 8.8 If you have actual model metrics

Once you know your actual test-set results, you can make the first bullet more quantitative.

For example, if your actual result is:

```text
ROC-AUC = 0.82
```

you could write:

**Customer Churn & Retention Analytics | Python, SQL, Machine Learning, Power BI**

* Built an end-to-end customer churn prediction pipeline using Python and Scikit-learn, achieving **ROC-AUC of XX** on a held-out test set with Logistic Regression.
* Engineered customer behavioral and service features and performed SQL-based churn segmentation across contract, tenure, payment method, and customer risk categories.
* Developed an interactive Power BI dashboard with DAX KPIs, churn trends, ML-based risk segmentation, and high-risk customer analysis for retention-focused decision support.

Replace `XX` only after you have your **actual test-set metric**.

---

# 8.9 How to explain the project in an interview

If an interviewer says:

> "Tell me about your churn project."

Don't explain every notebook.

Use this structure:

### 1. Problem

> "I built a customer churn analytics project to understand which customer segments have higher churn and to estimate churn probability at the individual customer level."

### 2. Python

> "I used Python and Pandas for data cleaning and EDA, then engineered features such as service count and tenure groups."

### 3. Machine Learning

> "I used Logistic Regression with one-hot encoding for categorical variables. I evaluated the model using precision, recall, F1 and ROC-AUC, rather than relying only on accuracy."

### 4. SQL

> "I then used MySQL to perform business analysis, including churn by contract, tenure, payment method, and analysis of monthly charges associated with high-risk customers."

### 5. Power BI

> "Finally, I built a Power BI dashboard with DAX KPIs, slicers, churn analysis and a high-risk customer table."

### 6. Business value

> "The goal was to turn customer-level predictions into something that a business user could explore and use to identify segments and customers that may need further investigation."

That's a much stronger explanation than simply saying:

> "I made a Power BI dashboard."

---

# 8.10 Questions an interviewer may ask

You should be ready for these:

### Python

**Why did you use Pandas?**

**How did you handle missing values?**

**What kind of EDA did you perform?**

**Why did you create ServiceCount?**

---

### Machine Learning

**Why Logistic Regression?**

**Why not Random Forest/XGBoost?**

**What is the difference between precision and recall?**

**Why did you use ROC-AUC?**

**Why did you use a train/test split?**

**Why is accuracy alone insufficient for churn prediction?**

**What does `predict_proba()` give you?**

---

### SQL

**Why did you use SQL after Python?**

**How did you calculate churn rate?**

**Where did you use CASE WHEN?**

**What is a subquery?**

**How did you calculate revenue at risk?**

---

### Power BI

**What is the difference between a calculated column and a measure?**

**Why did you use DAX?**

**What is Power Query?**

**How did you create the churn rate measure?**

**How did you make the dashboard interactive?**

---

# 8.11 One important improvement before calling the project finished

There's one thing I'd recommend adding before you consider the project **100% complete**:

### Compare Logistic Regression with another model.

For example:

```text
Logistic Regression
       vs
Random Forest
```

Then compare:

```text
Accuracy
Precision
Recall
F1
ROC-AUC
```

This makes your ML section considerably stronger because you aren't just saying:

> "I trained a model."

You're demonstrating:

> "I evaluated alternative approaches and compared their performance."

We can do that as **Step 9 — Model Comparison + Final Project Cleanup**.

---

# Your project is now portfolio-ready in structure

```text
Customer-Churn-Analytics
│
├── Python
│   ├── Cleaning
│   ├── EDA
│   └── Feature Engineering
│
├── Machine Learning
│   ├── Logistic Regression
│   ├── Probability Prediction
│   └── Evaluation
│
├── SQL
│   ├── Churn Analysis
│   ├── Segmentation
│   └── Revenue Risk
│
├── Power BI
│   ├── Power Query
│   ├── DAX
│   ├── KPIs
│   ├── Slicers
│   └── Dashboard
│
└── GitHub
    ├── README
    ├── Screenshots
    └── Source Code
```