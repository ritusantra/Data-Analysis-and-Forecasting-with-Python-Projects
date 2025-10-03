# Analyze Patient Visit Data from an Outpatient Clinic Using Python

## Table of Contents
* [Introduction](#introduction)
* [Data](#data)
* [Tools](#tools)
* [Methodology](#methodology)
* [Insights](#insights)
* [Note](#note)

## Introduction
Analyzed patient visit data to extract insights through demographic, trend, and correlation analysis. Forecasted time-based and insurance-related metrics to support data-driven decision-making. Developed Python functions and scripts to automate repetitive analysis tasks and generate actionable insights.

## Data
| Column Name     | Data Type | Description                                                                    |
| --------------- | --------- | ------------------------------------------------------------------------------ |
| `Visit_Date`    | `Date`    | Date of the patient visit (YYYY-MM-DD).                                        |
| `Patient_ID`    | `Integer` | Unique identifier assigned to each patient.                                    |
| `Age`           | `Integer` | Age of the patient at the time of the visit (in years).                        |
| `Gender`        | `String`  | Gender of the patient (`Male`, `Female`, etc.).                                |
| `Diagnosis`     | `String`  | Primary diagnosis for the visit (e.g., `Diabetes`, `Urinary Tract Infection`, etc). |
| `Has_Insurance` | `Boolean` | Indicates whether the patient has insurance coverage (`True` or `False`).      |
| `Postcode`      | `Integer` | Postal code representing the patient's area of residence.                      |
| `Total_Cost`    | `Float`   | Total cost incurred during the visit, including all services.         |
| `Registration`  | `Float`   | Time (in minutes) spent in the registration process.                          |
| `Nursing`       | `Float`   | Time (in minutes) spent receiving nursing care.                 |
| `Laboratory`    | `Float`   | Time (in minutes) spent on laboratory services.                   |
| `Consultation`  | `Float`   | Time (in minutes) spent consulting with a doctor.                               |
| `Pharmacy`      | `Float`   | Time (in minutes) spent at the pharmacy.                       |


## Tools
Python - NumPy, pandas, Matplotlib, Seaborn, FbProphet

## Methodology
* Imported the patient visit data using pandas.
* Dropped the null values and renamed columns.
* Analyzed the data to understand the patient distribution based on gender, age, and postcode.
* Performed yearly and monthly trend analysis.
* Developed a Python function to analyze the summary statistics of the waiting time and generate insights for each department.
* Analyzed the correlation between numerical features.
* Explored the cost distribution with and without insurance, and its yearly trend.
* Analyzed total cost and patient volume by diagnosis to identify the most and least expensive diagnoses.
* 


## Insights
### Demographic Analysis of Patient

### Trend Analysis of Patient Visit

### Wait Time Analysis of the Patient Visit

### Correlation Matrix of Numerical Features

### Cost Analysis by Diagnosis

### Cost and Wait Time Forecasting


## Note
This project is a part of [LinkedIn learning course](https://www.linkedin.com/learning/python-data-analysis-for-healthcare/python-data-analysis-in-healthcare).
