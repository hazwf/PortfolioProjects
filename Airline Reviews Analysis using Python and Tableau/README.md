# Airlines Review Analysis Project

**Project Overview**  

This project offers insights into customer reviews of various airlines through Exploratory Data Analysis and visualizations. The goal is to assess customer satisfaction, identify trends, and uncover factors that influence high or low ratings.


**Features and links**  

* Web Scraping --> [Link to Python code](https://github.com/hazwf/PortfolioProjects/blob/main/Airline%20Reviews%20Analysis/airport_spider.py)
* Data cleaning and Exploratory Data Analysis --> [Link to Jupyter notebook](https://github.com/hazwf/PortfolioProjects/blob/main/Airline%20Reviews%20Analysis/Airlines%20Review%20Analysis.ipynb)
* Interactive Dashboard --> [Link to Tableau](https://public.tableau.com/app/profile/haz.faeaz/viz/AirlineReviews_17222599770960/Dashboard#1)

**Technologies used**  

Python - Pandas, Matplotlib, Seaborn, Wordcloud, Scrapy<br>
Microsoft Excel  
Tableau

## Data Collection using Web Scraping

This project includes a Python script for web scraping that extracts data from a website containing country codes, states, and their corresponding countries. The scraped data is then exported to a CSV file, which serves as a reference for the existing airline review dataset, allowing for the standardization of data.

## Data Cleaning 

* Data cleaning is first performed on Microsoft Excel to identify and correct spelling errors and extra white spaces. The VLOOKUP function is utilized to update the countries linked to the country codes and states in the Airlines Review dataset, referencing the scraped data.
* Following this, Python is employed to further clean the data by filling in missing values and checking for duplicates.


## Exploratory Data Analysis (EDA)

Using Python on Jupyter notebook, EDA is performed on the Airlines Reviews dataset to:
* Gain insights into the data
* Identify the airlines with the highest and lowest ratings
* Visualize sentiments
* Analyze how different seat types fare in terms of ratings
* Determine the factors influencing whether a passenger recommends an airline
* Assess the percentage of verified vs. unverified reviews and their impact on ratings

## Tableau

Using Tableau, visualizations are done to provide insights into:
* Average Rating by Airline
* Average Rating by Month and Year
* Average Rating by Country of Departure
* Average Rating by Route

In addition to these visualizations:
* Interactive parameters allow users to select specific service categories, such as seat type, to dynamically display the corresponding ratings by airline
* Various filters are included for further data exploration, allowing for tailored analysis and to drill down data based on preferences
