# Medication Demand Forecasting Using Python

## Table of Contents
* [Introduction](#introduction)
* [Data](#data)
* [Tools](#tools)
* [Methodology](#methodology)
* [Insights](#insights)
* [Note](#note)

## Introduction
Analyzed pharmacy sales data to extract insights on sales and quantity, and forecasted medication demand using FBProphet to support data-driven decision-making.

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
* Imported the pharmacy sales data using pandas.
* Analyzed the data to understand the patient distribution based on cost and quantity sold.
* Performed yearly and monthly trend analysis.
* Developed a Python function to analyze the summary statistics of the waiting time and generate insights for each department.
* Analyzed the correlation between numerical features.
* Explored the cost distribution with and without insurance, and its yearly trend.
* Analyzed total cost and patient volume by diagnosis to identify the most and least expensive diagnoses.
* 


## Insights
### Price and Quantity Analysis

### Medication Name and Medication Class Analysis

### Medication Demand Forecast using FbProphet


## Note
This project is a part of [LinkedIn learning course](https://www.linkedin.com/learning/python-data-analysis-for-healthcare/python-data-analysis-in-healthcare).
