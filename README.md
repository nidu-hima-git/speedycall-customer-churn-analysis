# SpeedyCall Customer Churn Analysis

## Project Overview

This project analyzes customer churn behavior in the SpeedyCall telecommunications dataset. The objective is to identify demographic, behavioral, financial, and service-related factors associated with customer retention and customer churn.

The analysis was conducted using R and includes data preprocessing, exploratory data analysis (EDA), and visualizations to uncover patterns that influence customer retention.

---

## Objectives

### 1. Demographic, Behavioral, and Service-Related Differences
- Examine differences between churned and non-churned customers.
- Analyze demographic characteristics such as gender, senior citizen status, partner status, and dependents.
- Explore behavioral factors including contract type, payment method, and paperless billing.
- Investigate service subscriptions and their relationship with churn.

### 2. Financial Differences
- Compare MonthlyCharges between churned and retained customers.
- Compare TotalCharges between churned and retained customers.
- Identify financial patterns associated with customer churn.

### 3. Service Subscription and Retention
- Evaluate how additional service subscriptions influence customer retention.
- Analyze services such as:
  - Online Security
  - Online Backup
  - Device Protection
  - Tech Support
  - Streaming TV
  - Streaming Movies

---

## Tools and Technologies

- R
- ggplot2
- dplyr
- readxl

---

## Dataset

The dataset contains customer demographic information, account details, subscribed services, billing information, and churn status.

Key variables include:

- Churn
- Gender
- SeniorCitizen
- Partner
- Dependents
- Tenure
- Contract
- PaymentMethod
- PaperlessBilling
- MonthlyCharges
- TotalCharges
- OnlineSecurity
- OnlineBackup
- DeviceProtection
- TechSupport
- StreamingTV
- StreamingMovies

---

## Analysis Performed

### Data Preparation
- Imported Excel dataset using readxl
- Checked and handled missing values
- Verified data types and variable structures

### Exploratory Data Analysis
- Customer churn distribution
- Demographic comparisons
- Behavioral comparisons
- Service subscription analysis
- Financial analysis

### Visualizations
- Percentage bar charts
- Stacked proportion charts
- Boxplots
- Distribution plots

---

## Key Insights

- Customers on month-to-month contracts showed higher churn rates.
- Customers with additional support and security services were more likely to remain with the company.
- Churned customers generally exhibited different monthly charge patterns compared to retained customers.
- Service engagement appears to contribute positively to customer retention.

---
