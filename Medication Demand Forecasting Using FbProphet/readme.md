# Medication Demand Forecasting Using Python

## Table of Contents
* [Introduction](#introduction)
* [Data](#data)
* [Tools](#tools)
* [Methodology](#methodology)
* [Insights](#insights)
* [Note](#note)

## Introduction
Analyzed pharmacy sales data to extract insights on sales and quantity, and forecasted medication demand using FbProphet to support data-driven decision-making.


## Data
| Column Name    | Data Type | Description                 | Example                            |
|----------------|-----------|-----------------------------|----------------------------------|
| `Date Sold`      | `Date`      | Date when the medicine sold | 2021-05-07                       |
| `Med_name`       | `String`    | Name of the medicine        | Clotrimazole Topical Cream (2%)  |
|` Med_class`      | `String`    | Class/category of medicine  | Antifungal                      |
| `Quantity Sold`  | `Integer`   | Number of units sold        | 66                               |
| `Price`          | `Float`     | Price per unit              | 86.9                             |


## Tools
Python - NumPy, pandas, Matplotlib, Seaborn, FbProphet

## Methodology
* Imported and preprocessed 1M pharmacy sales records using Pandas.
* Analyzed patient distribution based on total cost and quantity of medication sold.
* Identified the most frequently occurring medication names and classes by quantity sold.
* Performed yearly trend analysis on medication price and quantity sold.
* Implemented FbProphet to forecast medication demand based on historical sales data.

## Insights
### Price and Quantity Analysis
* The distributions of price and quantity sold are similar and follow a stable distribution.
  
### Price and Quantity Trend Analysis
* The quantity sold peaked in 2020, remained stable until 2023, and then began to decline.
* Similar to the quantity sold, the price peaked in 2020, remained stable through 2023, and declined thereafter.

### Medication Name and Medication Class Analysis
* Developed a word cloud to identify the most frequently occurring medication names and classes.

### Medication Demand Forecast using FbProphet
* The forecasted medication demand (quantity sold) along with trend, weekly, and yearly patterns are presented using FbProphet.

## Note
This project is a part of [LinkedIn learning course](https://www.linkedin.com/learning/python-data-analysis-for-healthcare/python-data-analysis-in-healthcare).
