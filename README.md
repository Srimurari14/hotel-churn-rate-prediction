# Hotel Churn Rate Prediction

This project aims to predict customer churn (cancellation) rates in hotels based on a dataset of bookings. It utilizes data preprocessing, exploratory data analysis (EDA), and machine learning techniques implemented in R to model the likelihood of a booking being canceled.

## Features

- **Data Cleaning:** Handled missing values and filtered invalid rows for meaningful analysis.
- **Exploratory Data Analysis:** Visualized patterns in bookings across hotels, customer types, and other features using ggplot2.
- **Machine Learning:** Built a Naive Bayes model to predict churn.
- **Performance Metrics:** Evaluated model accuracy and error rate on test data.

## Dataset

- **Source:** The dataset, `Bookings.csv`, contains booking details such as hotel type, customer demographics, reservation details, and cancellation status.
- **Size:** The dataset has multiple columns and rows describing various attributes of hotel bookings.

## Requirements

- **Programming Language:** R
- **Libraries Used:**
  - `ggplot2` for data visualization
  - `dplyr` for data manipulation
  - `e1071` for Naive Bayes modeling

## Installation

1. Install R from [CRAN](https://cran.r-project.org/).
2. Install the required libraries in R:
   ```R
   install.packages("ggplot2")
   install.packages("dplyr")
   install.packages("e1071")
  
## Usage

1. Clone the repository or download the files.
2. Place the dataset (`Bookings.csv`) in the specified file path as referenced in the code.
3. Run the R script (`hotelchurnrate.r`) to execute the analysis and model training.

## Exploratory Data Analysis

- **Repeated Guests:** Percentage of guests who are repeat visitors.
- **Guest Distribution:** Distribution of guests across different hotels and time periods.
- **Reservation Status:** Analysis of reservations' cancellation and confirmation status.
- **Customer and Meal Types:** Distribution of customer types and meal preferences across hotels.

## Model Overview

- **Algorithm:** Naive Bayes
- **Training and Testing Split:** 75% training, 25% testing.
- **Performance:**
  - **Accuracy:** Calculated as the proportion of correctly classified instances.
  - **Error Rate:** Proportion of misclassified instances.

## Outputs

- Data visualizations for trends in booking and cancellation.
- Accuracy and error rate of the predictive model.
- Tabular summaries of model predictions compared to actual outcomes.

## Video Explanation

For a detailed walkthrough of the project, watch the recorded video on YouTube: [...](https://youtu.be/NwOarTFuHWk?si=Ly9Wti2cCdeF572L).
