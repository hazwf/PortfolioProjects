# Hotel Revenue Analysis Project

#### Project Overview
This project provides insights into hotel revenue data from 2018 to 2020 through SQL-based exploratory data analysis and Power BI visualizations. It aims to uncover trends, analyze patterns, and identify factors influencing booking and spending behaviors.

#### Features and links  
* EDA using PostgreSQL --> Link to SQL code
* Interactive Dashboard --> Link to Power BI screenshot and file

#### Technologies used 
PostgreSQL<br/>
Microsoft Power BI<br/>
Microsoft Excel<br/>

## Data Cleaning 
* Data cleaning is first performed on Microsoft Excel to identify and correct spelling errors and extra white spaces. Column names are also renamed for clarity
* Since the dataset only includes country codes in the "country" column, data of country codes and country name is extracted online. Using the VLOOKUP function, the dataset is updated to match each country code with its corresponding country name, referencing the extracted data.

## EDA using PostgreSQL
Using PostgreSQL on pgAdmin, queries were executed on the Hotel Revenue Dataset to:
* Combine the 2018, 2019, and 2020 data into a single table.
* Analyze the percentage of bookings canceled and the proportion of cancellations due to no-shows.
* Determine the number of bookings per year.
* Calculate annual revenue for each hotel type, accounting for discounts.
* Identify the most popular meal types.
* Find countries with the highest bookings, segmented by year and hotel type.
* Compute average lead time by market segment.
* Measure the percentage of bookings from repeat guests.
* Compare average daily rates across room types, broken down by hotel type and year.
* Assess whether guests with special requests tend to spend more

## Visualisations using Microsoft Power BI
Using Microsoft Power BI, visualisations are done to provide insights into:
* Total Revenue by Month and Year
* Total Revenue by Market Segment and Year
* Total Revenue by Country and Year
* Total Arrivals and Revenue by Room Type

In addition to these visualizations:
* Various filters are included for further data exploration, allowing for tailored analysis and to drill down data based on preferences
* Total Revenue, Total Arrivals and summary metrics of current booking status are also displayed for a quick overview
