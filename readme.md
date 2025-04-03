# SQL Database Project

## About the Project

**Title: Personalised Health for a Healthier Germany**

**Team Members:**  
- Modris  
- Shima  
- Sheryll  

**Project Description:**  
The FITBIT Wellness App is a research-driven initiative aimed at leveraging wearable technology to promote healthier lifestyles. Our project involves analyzing FITBIT’s extensive health database to identify key lifestyle patterns and their correlation with overall well-being. Using these insights, we develop personalised recommendations that encourage healthier habits related to movement, sleep, and stress management.

Beyond research, the app is designed as a user-centric platform that integrates real-time behavioural insights to drive sustainable health improvements. To maximise accessibility, we explore partnerships with health insurance providers, enabling reimbursement models that remove financial barriers and support long-term public health goals.

## Business Context

Fitbit users in Germany: 9.8 million
Fitbit active user base in Germany: approx. 500 thousand. 
Obesity increase: From 14.8% (2012) to 23.6% (2023)
Over 1700 studies proves the effectiveness of wellness apps.

### Business Case  

Germany is experiencing a significant rise in overweight and obesity rates, driven by sedentary lifestyles, insufficient physical activity, irregular sleep patterns, and a lack of personalised health awareness. Traditional interventions often lack individualisation and fail to support sustainable behavioural change.

FITBIT Wellness App addresses this challenge with a data-driven, personalised solution that empowers individuals to take control of their health. By analysing behavioural patterns—such as movement, sleep, and stress—the app delivers tailored recommendations to help users make healthier lifestyle choices.

To enhance accessibility and long-term impact, the app is designed for reimbursement or subsidies through health insurance providers. This model reduces financial barriers for users while aligning with public health goals to lower obesity-related healthcare costs. By providing real-time, personalised insights, FITBIT Wellness App aims to improve overall well-being and create measurable value for both individuals and insurers.


### Problem Statements  
Business Problem: A scalable and cost-effective solution is needed to address Germany’s obesity crisis by leveraging behavioural data to deliver personalised wellness interventions.

### Hypotheses and Research Questions  
Hypothesis 1: Sufficient sleep is closely linked to an active lifestyle, contributing to overall well-being.

Hypothesis 2: Physical activity patterns vary significant by day of the week. 

---

## Dataset

We utilised the following datasets for this project:
1. Fitbit dataset: Kaggle [link: https://www.kaggle.com/code/youssefabdelghfar/fitbit-fitness-tracker-data]
2. Overweight and obesity dataset via:  
3. Obesity by year via: The Robert Koch Institute


Data fromats:
CSV and xlx  

---

## Database Design

- Summary of the schema  
- Entity Relationship Diagram (include image or link)  
- Description of tables, relationships, keys

**Entities:**
- User (Id, Age, Gender, BMI Group)
- Sleep (Id, SleepDay, TotalSleepRecords, TotalMinutesAsleep, TotalTimeInBed)
- Activity (Id, ActivityDate, TotalSteps, TotalDistance, TrackerDistance, LoggedActivitiesDistance)
- Intensity (Id, ActivityDate, VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes)
- Calories (Id, ActivityDate, Calories)

Relationships:
- User (PK: Id) → Connected to all other tables via Id.
- Sleep and Activity are related using ActivityDate and SleepDay.
- The BMI data from secondary dataset can be linked using user attributes such as Age or BMI category.

---

## Methodology

### 1. Data Cleaning and Preprocessing  
- Loaded and reviewed dataset structure  
- Removed duplicates and handled missing values  
- Standardised formats and converted categorical values


### 2. Exploratory Data Analysis (EDA)  
- Describe techniques used for exploring data patterns  
- Initial observations

### 3. SQL Queries and Analysis  
- List of queries (e.g. aggregations, JOINs, subqueries)  
- Insights 

Note: Please review Fitbit_DB_MySWL.sql file for all the queries. 

### 4. Data Visualisations  

Our project leverages data visualisation techniques to enhance insights and improve interpretability:

Matplotlib – Used for creating detailed plots and graphs to analyze trends, distributions, and correlations within the dataset.

Entity-Relationship Diagram (ERD) – Visual representation of database structures, showcasing relationships between different data entities for better database design and understanding.

- Key graphs and insights

### 5. Conclusion and Insights  

#### Key Findings  

**1. Highest Activity on Tuesdays:**
Tuesday has the highest number of recorded activities (2012 records) and also the darkest blue, indicating the highest average step count.
This suggests users are most active early in the week, possibly motivated by the start of a new routine or workweek.

**2. Steady Activity Midweek:**
Wednesday (1997 avg. steps) and Thursday (1939 avg. steps) follow closely, showing continued engagement during the middle of the week.
While the number of records slightly declines, users still maintain relatively high step counts.

**3. Drop in Activity Toward the Weekend:**
Activity levels decline from Friday onwards, with Friday (1637), Saturday (1622), and Sunday (1617) showing fewer entries and generally lighter blue shades.
This could indicate reduced structured movement on weekends (e.g., less commuting or exercise routines).

**4. Consistent Lows on Mondays and Sundays:**
Monday and Sunday tie for the lowest number of activity records (1617).
These days may reflect transitions: the end of the weekend or the start of a new week, when routines are disrupted.

**5. Sleep Alone Doesn’t Guarantee High Performance:**
“Bad Sleepers” outperformed “Moderate” and “Good Sleepers” in average performance scores.

**6.Physical Activity Is a Strong Indicator of Caloric Burn:**
Users who consistently walked more than 10,000 steps burned significantly more calories.

**7.Performance Score Correlates with Well-Rounded behaviour:**
Users with high scores - slept moderately, had above-average step counts, consistently logged physical activity

#### Key Takeaways:  

**Impact on Business:**
Data-driven insights can significantly enhance user engagement and health outcomes by delivering personalized, real-time recommendations through notifications. By analyzing individual movement, sleep, and stress patterns, the app encourages users to adopt a moderately active lifestyle, leading to sustained well-being improvements.

**Recommended Actions:**

Establish partnerships with health insurance providers to support reimbursement models, making the app more accessible to users.

Emphasize preventative healthcare benefits—improving customer health can lead to reduced long-term healthcare costs, benefiting both insurers and individuals.

Enhance user engagement strategies by refining personalized notifications and gamification elements to encourage sustainable behaviour change.


## Business Implications  
Our findings validate the original problem statement: A personalized wellness app can serve as a scalable and cost-effective solution to Germany’s obesity problem by encouraging sustainable behaviour change. The insights gained from this study reinforce the need for data-driven, insurer-backed interventions to drive public health improvements.

--- 

## Technical Overview

### Tech Stack  
- Tools and technologies used: 
SQL, Python, Pandas, Seaborn, MySQL

### Technical Challenges and Learnings:  
**1. SQL Query Optimization**
Understanding Joins & Aggregations: Using INNER JOIN vs. LEFT JOIN and aggregations like GROUP BY.

**2. Connecting SQL with Python**
Using SQL in Python: Learning how to use SQLite or MySQL with Python for data extraction.
Handling Query Results: Fetching and converting SQL query results into Pandas DataFrames for further analysis.

**3.Data Visualization Challenges**
Choosing the Right Charts: Needed to pick the right visualizations to show correlations between movement, sleep, and stress.
Plotting Large Datasets: Directly plotting raw data led to cluttered graphs, requiring sampling or aggregation

**4. Managing Code Versions in GitHub**
Merge Conflicts: When multiple team members worked on the same files, conflicts occurred during merges.
Branching Strategy: Initially, merging changes from different branches was confusing, leading to overwritten code.


---


# Links & Extra files: 
- Presentation
- Trello: https://trello.com/b/TJmjTcdU/ravenclaw-club
- Google Doc: https://docs.google.com/document/d/1ee1Irj8KmspckHQ1KdCo3uqa0DlZIPq9wYm0BbSRYAc/edit?tab=t.0
- Repo: https://github.com/SheryllD/Project_SQL_Database