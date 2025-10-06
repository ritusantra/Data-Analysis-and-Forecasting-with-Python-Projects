# Analyze Patient Visit Data from an Outpatient Clinic Using Python

## Table of Contents
* [Introduction](#introduction)
* [Data](#data)
* [Tools](#tools)
* [Methodology](#methodology)
* [Insights](#insights)
* [Note](#note)

## Introduction
Analyzed patient visit data to extract insights through demographic, trend, and correlation analyses. Forecasted total cost and wait time using FbProphet to support data-driven decision-making and optimize clinic operations. Developed Python functions and scripts to automate repetitive analysis tasks, enhancing efficiency and generating actionable insights.

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
* Imported and preprocessed patient visit data using pandas.
* Conducted exploratory data analysis and statistical analysis with pandas to uncover key insights on patient behavior and cost patterns.
* Visualized insights using Matplotlib and Seaborn to effectively communicate findings.
* Implemented FbProphet to forecast total costs and clinic wait times.

## Insights
### Demographic Analysis of Patient
* Patient visit patterns do not show a significant variation based on gender and age range.
* Patient visit patterns show a significant increase from certain postcodes.
* There is an increase in the frequency of patient visits among females aged 50.
  
### Trend Analysis of Patient Visit
* Patient visit frequency peaked around 2020, followed by a decline in 2021.
* Every year in February, there is a sudden drop in patient visits.

### Wait Time Analysis of Patient Visit
* The maximum wait time is for registration.
* Developed a function to generate insights on the wait time for each department.

### Wait Time Analysis by Diagnosis
* The average wait time across different diagnoses appears to be relatively consistent. This suggests that the type of illness a patient has does not significantly impact how long they spend at the outpatient clinic on average.
  
### Correlation Matrix of Numerical Features
* The variable Total_Cost shows a positive correlation with the time spent in Registration, Nursing, Laboratory, Consultation, and Pharmacy. This indicates that the more time a patient spends in these areas, the higher the total cost incurred.
* In contrast, Total_Cost has a negative correlation with the variable Has_Insurance, suggesting that patients with insurance tend to incur lower total costs compared to those without insurance.
  
### Cost and Insurance Analysis of Patient Visit
* The average total cost is very slightly higher for female.
* The average total cost is ~66% higher for patients without insurance.
* The total cost peaked around 2020, and slowly declined 2021 onwards.
* Patients with insurance incurred a lower total cost compared to those without insurance.

### Cost Analysis by Diagnosis
* More than 60% of the patients are not insured, which likely leads to higher total costs for them. It is recommended that these patients be encouraged to enroll in a health insurance plan.
* Developed a function to generate insights on the total cost for each diagnosis.

### Total Cost and Wait Time Forecasting
* The forecasted total cost and wait time along with trend, weekly, and yearly patterns are presented using FbProphet. 

## Note
This project is a part of [LinkedIn learning course](https://www.linkedin.com/learning/python-data-analysis-for-healthcare/python-data-analysis-in-healthcare).
