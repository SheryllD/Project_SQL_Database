CREATE DATABASE ravenclaw;

USE ravenclaw; 

CREATE TABLE fitbit_data (
  id BIGINT NOT NULL,
  sleep_day DATE NOT NULL,
  total_sleep_records INT NOT NULL,
  total_minutes_asleep INT NOT NULL,
  total_time_in_bed INT NOT NULL,
  activity_date DATE NOT NULL,
  total_steps INT NOT NULL,
  total_distance FLOAT NOT NULL,
  tracker_distance FLOAT NOT NULL,
  logged_activities_distance FLOAT NOT NULL,
  very_active_distance FLOAT NOT NULL,
  moderately_active_distance FLOAT NOT NULL,
  light_active_distance FLOAT NOT NULL,
  sedentary_active_distance FLOAT NOT NULL,
  very_active_minutes INT NOT NULL,
  fairly_active_minutes INT NOT NULL,
  lightly_active_minutes INT NOT NULL,
  sedentary_minutes INT NOT NULL,
  calories INT NOT NULL,
  day_of_the_week VARCHAR(10) NOT NULL,
  total_hours_asleep FLOAT NOT NULL,
  total_hours_in_bed FLOAT NOT NULL,
  total_exercise_minutes INT NOT NULL,
  total_exercise_hours FLOAT NOT NULL,
  performance FLOAT NOT NULL
);

SELECT COUNT(*) FROM fitbit_data;

-- 1. Checking for number of ID's/users
SELECT COUNT(distinct id) AS total_users 
FROM fitbit_data;

-- 2. Total activity days tracked
SELECT COUNT(DISTINCT activity_date) AS total_days_tracked
FROM fitbit_data;

-- 3. Checking for top 5 most active users. 
SELECT 
	id, 
    SUM(total_steps) AS total_steps,
    ROUND(SUM(total_distance), 2) AS total_distance,
    SUM(calories) AS total_calories
FROM fitbit_data
GROUP BY id 
ORDER BY 
	total_steps DESC, 
    total_distance DESC, 
    total_calories DESC 
Limit 5;

-- 4. Average steps per user per day 
SELECT
	id, 
    ROUND(AVG(total_steps), 0) AS avg_daily_steps
FROM fitbit_data
GROUP BY id 
ORDER BY avg_daily_steps DESC;

-- ----------------- Sleep & rest analysis  -----------------

-- 5. Average sleep per user per day 
SELECT 
	id, 
    ROUND(AVG(total_hours_asleep), 2) AS avg_sleep_hours 
FROM fitbit_data 
GROUP BY id 
ORDER BY avg_sleep_hours DESC;

-- 6. Sleep vs calories burned 
SELECT
	ROUND(AVG(total_hours_asleep), 2) AS avg_sleep, 
    ROUND(AVG(calories), 0) AS avg_calories 
FROM fitbit_data;

-- 7. Which users burned the most calories? 
SELECT 
	id, 
    SUM(calories) AS total_calories
FROM fitbit_data
GROUP BY id
ORDER BY total_calories DESC 
LIMIT 5;

-- 8. Which id had the longest excercise time? 
SELECT 
	id, 
    SUM(calories) as total_calories
FROM fitbit_data 
GROUP BY id 
ORDER BY total_calories DESC
LIMIT 5;

-- 9. Which id had the loget total excercise time? 
SELECT 
  id,
  SUM(total_exercise_minutes) AS total_minutes
FROM fitbit_data
GROUP BY id
ORDER BY total_minutes DESC
LIMIT 5;

-- 10. Average steps by day of the week 
SELECT 
	day_of_the_week, 
    ROUND(AVG(total_steps), 0) AS avg_steps 
FROM fitbit_data 
GROUP BY day_of_the_week
ORDER BY FIELd(day_of_the_week, 'Monday', 'Tuesday', 'Wednesday', 'Thurseday', 'Friday', 'Saturday', 'Sunday');

-- 11. Checking if weekends are more active 

SELECT 
	CASE
    WHEN day_of_the_week IN ('Saturday', 'Sunday') THEN 'Weekend'
    ELSE 'Weekday'
  END AS period,
  ROUND(AVG(total_steps), 0) AS avg_steps,
  ROUND(AVG(calories), 0) AS avg_calories
FROM fitbit_data
GROUP BY period;

-- 13. Steps vs Calories per day 

SELECT 
  total_steps,
  calories
FROM fitbit_data
WHERE total_steps > 0
ORDER BY total_steps DESC;

-- 14. Average Performance top 10

SELECT 
  id,
  ROUND(AVG(performance), 2) AS avg_performance
FROM fitbit_data
GROUP BY id
ORDER BY avg_performance DESC
LIMIT 10;

-- 15. Checkig for the most consistent highperformance

SELECT 
  id,
  ROUND(AVG(total_steps), 0) AS avg_steps,
  ROUND(AVG(total_hours_asleep), 2) AS avg_sleep,
  ROUND(AVG(calories), 0) AS avg_calories,
  ROUND(AVG(performance), 2) AS avg_score
FROM fitbit_data
GROUP BY id
ORDER BY avg_score DESC
LIMIT 10;

-- Creating more tables

-- 16. Creating User_data table 

CREATE TABLE User_data (
  id BIGINT NOT NULL,
  Age INT NOT NULL, 
  Gender FLOAT NOT NULL,
  BMI_Group INT NOT NULL 
);

-- 17. Creating Activity table 
CREATE TABLE Activity_data (
  id BIGINT NOT NULL,
  activity_date DATE NOT NULL,
  total_steps INT NOT NULL,
  total_distance FLOAT NOT NULL,
  tracker_distance FLOAT NOT NULL,
  logged_activities_distance FLOAT NOT NULL,
  very_active_distance FLOAT NOT NULL,
  moderately_active_distance FLOAT NOT NULL,
  light_active_distance FLOAT NOT NULL,
  sedentary_active_distance FLOAT NOT NULL,
  very_active_minutes INT NOT NULL,
  fairly_active_minutes INT NOT NULL,
  lightly_active_minutes INT NOT NULL,
  sedentary_minutes INT NOT NULL,
  calories INT NOT NULL,
  day_of_the_week VARCHAR(10) NOT NULL,
  performance FLOAT NOT NULL
); 

-- 18. Create Sleep_dataset
CREATE TABLE Sleep_data (
  id BIGINT NOT NULL,
  sleep_day DATE NOT NULL,
  total_sleep_records INT NOT NULL,
  total_minutes_asleep INT NOT NULL,
  total_time_in_bed INT NOT NULL,
  total_hours_asleep FLOAT NOT NULL,
  total_hours_in_bed FLOAT NOT NULL
); 


-- Done by Sheryll Dumapal

