# Predicting Hotel Booking Cancellations and Demand

**Project Overview**<br/>
This project develops two machine learning models: one for predicting booking cancellations based on existing features in the dataset and another for forecasting booking demand for near-future dates.

[Link to Jupyter notebook](https://github.com/hazwf/PortfolioProjects/blob/main/Predicting%20Hotel%20Booking%20Cancellations%20and%20Demand/Hotel%20Booking%20Predictions.ipynb)

**Features**
* Exploratory Data Analysis (EDA)
* Data engineering
* Data preprocessing
* Machine learning model development

**Technologies used**  
Python - Pandas, Matplotlib, Seaborn, XGBoost, SKLearn, CatBoost

### 1) Hotel Booking Cancellations model

#### Exploratory Data Analysis (EDA)

EDA is performed to analyze feature correlations in the dataset, which helps identify the features to be included in the machine learning models.

#### Data engineering

One-hot encoding is applied to categorical variables, enabling the model to interpret these as numerical inputs. This step enhances model accuracy by allowing it to recognize patterns and relationships within categorical data.

#### Machine Learning Model development

Multiple machine learning models are developed, with the model having the highest AUC selected as the final choice.

### 2) Hotel Booking Demand Forecasting model

#### Data preprocessing

Data preprocessing is carried out to convert month names from string format to integers and set them as an index, making date-based computations easier.

#### Machine Learning Model development

The XGBRegressor is utilized to forecast booking demand for short-term planning.



