create database csv_db;

select * from csv_db.students_ai_usage;



-- Comparing students grades before and after using AI (CoPilot).
select grades_before_ai, grades_after_ai
from csv_db.students_ai_usage
where ai_tools_used = 'Copilot';
-- Based on this data, students grades before they used AI were low, but when they started using it, their grades were high.


-- Comparing students grades before and after using AI (Gemini).
select grades_before_ai, grades_after_ai
from csv_db.students_ai_usage
where ai_tools_used = 'Gemini';
-- Based on this data as well, students grades before they used AI were low, 
-- but when they started using it, their grades were high.

-- Comparing grades for students who haven't used AI.
select grades_before_ai, grades_after_ai
from csv_db.students_ai_usage
where ai_tools_used = 'None';
-- The grades before and after ai (which they do not use) stay the same, 
-- so the students who don't use AI don't have a change in grade.


-- Grouping by education level and grades before and after
select education_level, avg(grades_before_ai), avg(grades_after_ai)
from csv_db.students_ai_usage
group by education_level;
-- We see that in school, grades before ai were an average of 65, after after grades were 68.
-- And in college, grades before ai were 64, but then after grades rose to 68.

-- Grouping by ai tools and average grades before and after
select ai_tools_used, avg(grades_before_ai), avg(grades_after_ai)
from csv_db.students_ai_usage
group by ai_tools_used;
-- So based on this query, the grades of people who didn't use any ai tools stayed the same before and after ai.
-- The grades of people who used Copiolot rose from a 66 to a 76 using copilot, before and after respectively.
-- THe grades of people who used Gemini rose from an average grade of 64 to 75, before and after ai respectively.
-- The grades of those who use ChatGpt rose from an average of 65 to 74, before and after ai respectively.


-- Comparing the grades before and after ai with the purpose of using ai based on education level.
select education_level, purpose_of_ai, avg(grades_before_ai), avg(grades_after_ai)
from csv_db.students_ai_usage
group by education_level, purpose_of_ai;
-- The purpose of ai that resulted in the highest grade before ai and after ai was Homework, 
-- for an education level of school.

-- The purpose of ai that resulted in the highest grade before ai and after ai was Coding.
-- Of course, for those in college and school who didn't use Ai did not have any change 
-- 	of average of grades before and after ai.



select education_level, uses_ai, daily_screen_time_hours, avg(grades_before_ai), avg(grades_after_ai)
from csv_db.students_ai_usage
group by education_level, daily_screen_time_hours, uses_ai;
-- Based on this information, those who use ai increase their grades regardless of whether they are in college
-- 		or school, but those who do not use ai do not have a change in their grades. 
-- The amount of daily screen time hours reflects on grades because it matters 
-- 	how long the student uses ai and for what. 

select education_level, uses_ai, count(age), avg(grades_before_ai), avg(grades_after_ai)
from csv_db.students_ai_usage
group by education_level, age, uses_ai;

-- From this data we can see that 28 people in college don't use ai.