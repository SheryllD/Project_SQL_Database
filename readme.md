# SQL Database Project

## About the Project
**Date:**  

**Team Members:**  
- Modris  
- Shima  
- Sheryll  

**Project Description:**  
A brief overview goes here explaining the purpose of our project and the problem it aims to solve.

**Branches Created:**  
- List of Git branches or structure if this is relevant

---

## Business Context

### Business Case  
A short explanation of the industry context or business relevance.

### Problem Statements  
Clearly listed challenges or user pain points being addressed.

### Hypotheses and Research Questions  
Concise hypotheses tied to our problem statements. Followed by the research questions we aim to answer with data.

---

## Dataset

- Description of primary and secondary datasets used  
Column	Description	Significance
Id	Unique identifier for each user.	Primary Key for user tracking.
SleepDay	Date and time of recorded sleep data.	Useful for analyzing sleep patterns.
TotalSleepRecords	Number of recorded sleep sessions.	Indicates sleep pattern complexity (e.g., interrupted sleep).
TotalMinutesAsleep	Total minutes spent sleeping in a given day.	Key metric for evaluating sleep quality.
TotalTimeInBed	Total minutes spent in bed (includes awake periods).	Helps calculate sleep efficiency.
ActivityDate	Date of recorded activity data.	Useful for time-series trend analysis.
TotalSteps	Total number of steps taken in a day.	Key metric for physical activity.
TotalDistance	Total distance covered (in miles or km).	Reflects total movement intensity.
TrackerDistance	Distance tracked specifically by the Fitbit device.	Ensures device-specific tracking accuracy.
LoggedActivitiesDistance	Manually logged distance that may differ from tracker data.	Useful for identifying manual overrides.
VeryActiveDistance	Distance covered during intense physical activity.	Reflects vigorous workout behavior.
ModeratelyActiveDistance	Distance covered during moderate physical activity.	Reflects medium-intensity workouts.
LightActiveDistance	Distance covered during light physical activity.	Reflects casual movement (e.g., walking).
SedentaryActiveDistance	Distance covered while mostly inactive.	Potentially redundant but may indicate movement while seated.
VeryActiveMinutes	Total minutes spent doing intense physical activities.	Key fitness metric for cardio workouts.
FairlyActiveMinutes	Minutes spent engaging in moderately intense activities.	Helps in understanding balanced activity levels.
LightlyActiveMinutes	Minutes spent doing light physical activities.	Important for understanding general mobility.
SedentaryMinutes	Total sedentary minutes recorded.	Critical for identifying sedentary lifestyle risks.
Calories	Total calories burned in a day.	Core indicator for energy expenditure and weight management.
- Data sources (CSV, API, etc.)  
- Key variables or features  
- Why this data was chosen

---

## Database Design

- Summary of the schema  
- Entity Relationship Diagram (include image or link)  
- Description of tables, relationships, keys

Entities

User (Id, Age, Gender, Occupation, BMI Group)

Sleep (Id, SleepDay, TotalSleepRecords, TotalMinutesAsleep, TotalTimeInBed)

Activity (Id, ActivityDate, TotalSteps, TotalDistance, TrackerDistance, LoggedActivitiesDistance)

Intensity (Id, ActivityDate, VeryActiveMinutes, FairlyActiveMinutes, LightlyActiveMinutes, SedentaryMinutes)

Calories (Id, ActivityDate, Calories)

Relationships

User (PK: Id) → Connected to all other tables via Id.

Sleep and Activity are related using ActivityDate and SleepDay.

The BMI data from secondary dataset can be linked using user attributes such as Age or BMI category.

## Methodology

### 1. Data Cleaning and Preprocessing  
- Loaded and reviewed dataset structure  
- Removed duplicates and handled missing values  
- Standardised formats and converted categorical values

add more if needed

### 2. Exploratory Data Analysis (EDA)  
- Describe techniques used for exploring data patterns  
- Initial observations

### 3. SQL Queries and Analysis  
- List of queries (e.g. aggregations, JOINs, subqueries)  
- Insights 

### 4. Data Visualisations  
- Description of our visualisation tools used  
- Key graphs and insights

### 5. Conclusion and Insights  

#### Key Findings  
- Highlight most important discoveries

#### Key Takeaways  
- Summary of what our analysis means for the business

---

## Business Implications  
Explain findings that helped improve our process, or decision-making. Pls link back to the original problem statements.

---

## Technical Overview

### Tech Stack  
- Tools and technologies used (SQL, Python, Pandas, Seaborn, etc.)

### Technical Challenges and Learnings  
- Describe issues we faced during development and what we learned 

---

## Repository Structure (example/optional)
```text
sql-database/
│
├── data/                  # Raw datasets
├── notebooks/             # Jupyter notebooks for EDA and reporting
├── scripts/               # Python scripts for cleaning and loading
├── schema.sql             # SQL database schema
├── queries.sql            # All SQL queries used
└── README.md
``` 
--- 

# Links: 
Presentation: https://docs.google.com/presentation/d/1T8r3NJ6lvzrLjCZWKZQkFa2BNVDzjP75qQgQqAJKmIo/edit#slide=id.p

Trello: https://trello.com/b/TJmjTcdU/ravenclaw-club

Google Doc: https://docs.google.com/document/d/1ee1Irj8KmspckHQ1KdCo3uqa0DlZIPq9wYm0BbSRYAc/edit?tab=t.0
