# Airlines Review Analysis Project

**Project Overview**  

This project offers insights into customer reviews of various airlines through Exploratory Data Analysis, visualizations, and web scraping. The goal is to explore customer satisfaction, identify trends, and uncover factors that contribute to high or low ratings.


**Features and links**  

* [Web Scraping](#data-collection-using-web-scraping)
* [Data Cleaning](#data-cleaning)
* [Exploratory Data Analysis- Link to Jupyter notebook in NBViewer:](https://nbviewer.org/github/hazwf/PortfolioProjects/blob/main/Airline%20Reviews%20Analysis/Airlines%20Review%20Analysis.ipynb)
* [Interactive Dashboard](#tableau)

**Technologies used:**  

Python - Pandas, Plotly, Wordcloud  
Microsoft Excel  
Tableau

## Data Collection using Web Scraping

This project includes a Python script for web scraping that pulls together country codes, states, and the countries they’re linked to. The data is cleaned and standardized for consistency. By doing this, the airline routes are mapped by country, which really helps when visualizing data and comparing insights across countries. 

## Data Cleaning 

* Data cleaning is first performed in Microsoft Excel to identify and correct spelling errors. The VLOOKUP function is utilized to update the countries linked to the
  country codes and states in the Reviews dataset, referencing the scraped dataset.
* Following this, Python is employed to further clean the data by filling in missing values and checking for duplicates.


## Exploratory Data Analysis (EDA)

Using Python on Jupyter notebook, EDA is performed on the collected reviews dataset to:
* Gain insights into the data
* Identify the airlines with the highest and lowest ratings
* Visualize sentiments
* Analyze how different seat types fare in terms of ratings
* Determine the factors influencing whether a passenger recommends an airline
* Assess the percentage of verified vs. unverified reviews and their impact on ratings

## **Tableau**

Using Tableau, visualizations are done to provide insights into:
* Average Rating by Airline
* Average Rating by Month and Year
* Average Rating by Country of Departure
* Average Rating by Route

In addition to these visualizations:
* Interactive parameters allow users to select specific service categories, such as seat type, to dynamically display the corresponding ratings by airline
* Various filters are included for further data exploration, allowing for tailored analysis and to drill down data based on preferences
