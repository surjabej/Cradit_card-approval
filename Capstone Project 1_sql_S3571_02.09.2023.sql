# SQL (Task of Capstone_project_1)
#1.Group the customers based on their income type and find the average of their annual income.
#2.Find the female owners of cars and property.
#3.Find the male customers who are staying with their families.
#4.Please list the top five people having the highest income.
#5.How many married people are having bad credit?
#6.What is the highest education level and what is the total count?
#7.Between married males and females, who is having more bad credit? 
...................................................................................................
# Task_ 1
# Group the customers based on their income type and find the average of their annual income.
select Type_Income ,avg(Annual_income) from mytable
Group by Type_Income 
...............................................................................
# Task-2
# Find the female owners of cars and property.
select GENDER,count(car_Owner),count(Propert_Owner) from mytable
where GENDER ="F"and car_Owner = "Y"and Propert_Owner="Y"
group by GENDER
...........................................................................................
# Task-3
#Find the male customers who are staying with their families.
select Ind_id,GENDER,Family_Members from mytable
Where GENDER ="M"
....................................................................................
# Task-4
# Please list the top five people having the highest income.
select Ind_ID,GENDER,Annual_income from mytable
ORDER BY Annual_income desc LIMIT 10
.......................................................................................
#Task- 5
# How many married people are having bad credit?
SELECT Marital_status ,count(Marital_status) ,label from mytable
where Marital_status = 'Married' and label = 1
............................................................................
#TASK- 6
#What is the highest education level and what is the total count?
select EDUCATION ,count(EDUCATION) FROM mytable
WHERE EDUCATION ='Higher education'
group by EDUCATION 
.........................................................................
# Task-7
# Between married males and females, who is having more bad credit? 
SELECT Marital_status, GENDER,SUM(label = 1) AS bad_credit_count FROM mytable
WHERE Marital_status IN ('Married') AND GENDER IN ('M', 'F')
GROUP BY Marital_status, GENDER 
order by bad_credit_count desc