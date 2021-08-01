# Employee Database Analysis

## Overview of Employee Database Analysis
The purpose of this project is to perform an analysis on the employees at 'Pewlett-Hackard' to prepare for departures due to retirement. The two key ojectives are to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program. 

## Results
The employee analysis determined the following: 
- There are 41,380 employees who are likely to retire based on the company's criteria. 
- Of those 41,380 employees, the highest number of employees are in Development (9,281), followed by Production (8,174) department. Finance has the fewest number of employees of retirement age (1,908). 

![Table](https://github.com/rabascoh/ph-analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis/Data/retiring_by_dept.png)
- The title with the highest number of employees likely to retire is Senior Engineer (29,414), followed by Senior Staff (28,254). Manager is the least likely with only 2 employees with this title.  

![Table](https://github.com/rabascoh/ph-analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis/Data/retiring_by_title.png)
- There are 1,549 employees who are eligible for mentorship based on the company's criteria.  

[*See queries here*](https://github.com/rabascoh/ph-analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis/Queries/Employee_Database_challenge.sql)

## Summary
Based on the analysis, 41,380 employees are likely to retire overall with 29,414 Senior Engineers, 28,254 Senior Staff, 14,222 Engineers, 12,243 Staff, 4,502 Technique Leaders, 1,761 Assistant Engineers and 2 Managers. Based on the company's criteria, only 1,549 employees are eligible to participate in a mentorship program. We recommend expanding the criteria to qualify for the mentorship program to better prepare the company for when the employees reach retirement age. 

In order to further prepare for departures due to retirement, we have provided further insight on those eligible for mentorship including mentorship eligible employees by department and title. Based on these insights, we recommend focusing on the Development and Production departments as well as Engineering and Staff roles. Although these departments and titles have the highest number of employees likely to retire, they also have the highest number of employees that are eligible for mentorship. See additional details regarding mentorship eligibility by department and role below. 

### Additional Insights
- Employees eligible for mentorship by department

![Table](https://github.com/rabascoh/ph-analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis/Data/mentorship_eligibility_by_dept.png)

- Employees eligible for mentorship by title

![Table](https://github.com/rabascoh/ph-analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis/Data/mentorship_eligibility_by_title.png)

[*See additional insights query here*](https://github.com/rabascoh/ph-analysis/blob/main/Analysis%20Projects%20Folder/Pewlett-Hackard-Analysis/Queries/Employee_Database_challenge.sql)
