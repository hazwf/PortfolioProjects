# Airlines Review Analysis Project

**Project Overview**  

This project provides insights into customer reviews of various airlines, using data scraped from a public source and analyzed through Python and Tableau. The goal is to explore customer satisfaction, identify trends, and uncover factors that contribute to high or low ratings.


**Features**  

* Web Scraping: Collects recent review data, including ratings and customer feedback.
* Exploratory Data Analysis: Analyzes trends, customer preferences, and satisfaction levels across airlines.
* Interactive Visualization: Dashboards in Tableau to dynamically present insights.


**Technologies used:**  

Python - Pandas, Plotly, Wordcloud  
Microsoft Excel  
Tableau


**Data Collection using Web Scraping**  

This project includes a Python script for web scraping that pulls together country codes, states, and the countries they’re linked to. The data is cleaned and standardized for consistency. By doing this, the airline routes are mapped by country, which really helps when visualizing data and comparing insights across countries. 


**Data Cleaning**  

* Data cleaning is first performed in Microsoft Excel to identify and correct spelling errors. The VLOOKUP function is utilized to update the countries linked to the
  country codes and states in the Reviews dataset, referencing the scraped dataset.
* Following this, Python is employed to further clean the data by filling in missing values and checking for duplicates.


**Exploratory Data Analysis (EDA)**  

Using Python on Jupyter notebook, EDA is performed on the collected reviews dataset to:
* Gain insights into the data
* Identify the airlines with the highest and lowest ratings
* Visualize sentiments
* Analyze how different seat types fare in terms of ratings
* Determine the factors influencing whether a passenger recommends an airline
* Assess the percentage of verified vs. unverified reviews and their impact on ratings

**Tableau**

Using Tableau, visualizations are done to provide insights into:
* Average Rating by Airline
* Average Rating by Month and Year
* Average Rating by Country of Departure
* Average Rating by Route

In addition to these visualizations:
* Interactive parameters allow users to select specific service categories, such as seat type, to dynamically display the corresponding ratings by airline
* Various filters are included for further data exploration, allowing for tailored analysis and to drill down data based on preferences
