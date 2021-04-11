# Pewlett-Hackard-Analysis

## Overview
  The purpose of this analysis was to create an additional two tables for Bobby. The first would be a summary of the number of retiring employees per title, and the other table was meant to identify the Pewlett Hackard employees eligible for a mentorship program. The mentorship eligiblity table lists the employee numbers, names, birth-dates, hiring dates and title. 
  
  ## Results
  
  The table displaying the number of retiring employees with their position titles can be seen here: [retiring_titles.csv](Data/retiring_titles.csv)
  
  The mentorship eligiblity table can be viewed here: [mentorship_eligibility.csv](Data/mentorship_eligibility.csv)
  
  ### Major points from these tables
  - From the retiring titles table, the most number of employees eligible to retire comes from Senior Engineers, who make up about a third of this list. Senior Staff also makes about a third of retirees.
  - Given that these two positions take up 2/3 of the eligible retirees, Pewlett Hackard will need to prioritize these roles when considering replacements for potential retirements.
  - There is a total of 90,398 employees in the retiring_titles table that are eligible to retire. 
  - However, there are only 1,549 employees listed in the mentorship-eligibility table. In order to properly account for replacing the retired employees, we might need to expand the criteria for potential mentors. The company would need to ensure they have an efficient system in place to cover the disparity between the number of people retiring and those who can fill these senior positions.

## Summary
  In order to account for the "silver tsunami", the company would need to ensure they can replace 90,000 employees that may retire. We can also see from the mentorship table that there  may not be enough mentors to train the next gemeration of Pewlett Hackard hires. In order to properly account for each retiree, each mentor would likely need to train around 9 people per person. 
  
  Some additional tables that could be helpful in tackling this 'silver tsunami' would start with one that further filters retirees by age. It seems unlikely that Pewlett Hackard could simply hire 90,000 replacements in a short period of time. But, if we estimate how many people may retire per year, then we could more gradually replace these employees, and limit the number each mentor would have to train. Another useful table would be to group eligible mentors by position, as we did with the retiring_titles table. Additionally, this mentorship table should also be expanded to include more employees rather than just those born in 1965. While age can be important, it might be a more useful metric to gather mentors who have spent at least 10 years with Pewlett Hackard in their "from_date". 
