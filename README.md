# 🧰 AtliQ Technologies Internship
As a Data Analyst Intern at AtliQ Technologies, I will work with experienced professionals to analyze data, create reports, and provide insights that will aid in making informed business decisions. This internship will be conducted remotely and will provide all the necessary tools and resources to help me succeed in this role.

## WEEK 1: 
> ### Email #1:
> #### HR REPORT
> Sending you these tasks following up on our call.
> The HR dataset can be found in the file [attendance_data.csv](https://github.com/BiQueryPls/AtliQTech_Internship/blob/main/attendance_data.csv). 
> Your tasks are divided into two parts: data cleaning and data analysis.
>
> #### **Task 1: Data Cleaning**
>
> 1. Check for duplicates in the dataset and remove them.
> 2. Standardize the date values to the format YYYY-MM-DD and extract the month name and day type from them.
> 3. Remove any extra characters, such as special characters, from the employee ID values. Some IDs may contain a '@' character at the end, which can be cleaned and brought to a common format.
> 4. Standardize the capitalization of names. Convert all names to title case, which means capitalizing the first letter of each word.  
> 5. Map the corresponding values in the status column with the given abbreviations:
> - Work From Office → WFO
> - Work From Home → WFH
> - Birthday Leave → BL
> - Menstrual Leave → ML
> - Paid Leave → PL
> - Sick Leave → SL
> - Weekly Off → WO
>
> #### **Task 2: Ad Hoc aka Analysis**
>
> 1. What is the total count of distinct employee names within the dataset?
> 2. Calculate the work-from-home (WFH %) percentage in the month of May.
> 3. Determine which day of the week had the highest attendance percentage in the month of June.
> 4. Find out the number of employees who had a WFH percentage greater than 10% in the month of April.
>
> You are free to use any tool of your preference, such as Pandas, Excel, PowerBI, etc., to complete this task.
> <br>Good luck with your task!</br>
> <br>Best regards,</br>
> <img src="Atliq%20A%20logo-04.png" width="40" alt="AtliQ Logo">
> <br>Hem</br>
> Head of Data Analytics | AtliQ Technologies Pvt. Ltd.
> <br>Website: [www.atliq.com](https://www.atliq.com/)</br>

### Solution:
[Task 1: Internship_soln](https://github.com/BiQueryPls/AtliQTech_Internship/blob/main/Task%201%20Internship_soln.pbix)  
**Tool: Power BI**

> ### Email #2:
> #### DATA NORMALIZATION TASK
> Well done with the previous task. I have a new one for you.
>
> One of our client projects requires minor support. The dataset is currently in a de-normalized form, and we need your help to transform it into a normalized form.
>
> Your task will involve creating proper fact and dimension tables based on the dataset, which can be found in the [fact_order_lines.csv](https://github.com/BiQueryPls/AtliQTech_Internship/blob/main/fact_order_lines.csv) file.
>
> <b>Here are a few screenshots of the dataset to give you a better idea of what it looks like and how the final output should be presented:</b>
> #### Input Data:
> <img src="denormalised_table.webp">
> 
#### Output Data:
> <img src="normalized_table.png">
> <img src="normalized_tables.png">
>
> <br>Best regards,</br>
> <img src="Atliq%20A%20logo-04.png" width="40" alt="AtliQ Logo">
> <br>Hem</br>
> Head of Data Analytics | AtliQ Technologies Pvt. Ltd.
> <br>Website: [www.atliq.com](https://www.atliq.com/)</br>

### Solution:

#### Quality Check
Q. What is the sum of the row counts for each of the three tables, dim_customers, dim_dates, and dim_products, when counted individually and then summed together?
i.e row_count(dim_customers) + row_count(dim_dates) + row_count(dim_products)
Note: Please note that the input should be a whole number. (ex: 520)

#### Answer: 236

[Task 2: Internship_soln](https://github.com/BiQueryPls/AtliQTech_Internship/blob/main/Task%202%20Internship_soln.pbix)  
**Tool: Power BI**

> ### Email #3:
> #### SCRUM TRAINING
> I’m forwarding the email from HR, in case it didn’t reach you.
>
> As part of your internship, we will be covering the SCRUM methodology in software development. SCRUM is a widely-used agile methodology that helps teams collaborate effectively to deliver high-quality software products.
>
> To help you gain a thorough understanding of SCRUM, I am pleased to introduce you to the SCRUM Training Series, available at https://scrumtrainingseries.com/. This is a comprehensive online training program that covers all aspects of SCRUM, from its basics to advanced concepts.
>
> It is mandatory for you to complete the SCRUM Training Series as having a good understanding of it will make you a more valuable employee in the industry.
>
> <br>Good luck with your task!</br>
> <br>Best regards,</br>
> <img src="Atliq%20A%20logo-04.png" width="40" alt="AtliQ Logo">
> <br>Hem</br>
> Head of Data Analytics | AtliQ Technologies Pvt. Ltd.
> <br>Website: [www.atliq.com](https://www.atliq.com/)</br>

### Solution:
 Task 3: Scrum Knowledge: Passed with 100% 
<img src="Scrum Training passed">

## WEEK 2: 
> ### Email #1:
> #### VARIANCE ANALYSIS TASK
> Here is the detailed explanation of the task.
>
> You need to conduct variance analysis to compare benchmark data (benchmarks.csv) with their current data (fact_orders.csv). The goal of this analysis is to identify and quantify the differences or variations between the two datasets. Specifically, you will be comparing the order quantity and delivery quantity from the fact_orders.csv file with the benchmark data provided in the benchmarks.csv file.
>
> Datasets:
> You will be provided with three datasets for this analysis:
>
> 1. fact_orders.csv: Contains columns like order_id, order_placement_date, mmm_yy, customer_id, product_name, order_qty, and delivery_qty.
> 2. dim_customers.csv: Contains columns like customer_id, customer_name, and city.
> 3. benchmarks.csv: Contains columns like mmm_yy, customer_id, customer_name, city, total_order_quantity, and total_delivery_quantity.
>
> **Workflow:**
> Here is a brief overview of the workflow for the task:
>
> 1. Review the benchmark data and the current data (fact_orders.csv).
> 2. Metrics to compare between two files: Order quantity and Delivery quantity.
> 3. Calculate the variance (absolute value) between the benchmark data and the current data for the identified metrics.
> 4. Calculate the variance (in percentage) between the benchmark data and the current data for the identified metrics.
> 5. Provide a complete report of the difference in numbers between the benchmark data and the main data.
> Please ensure that you thoroughly analyze the datasets and provide a comprehensive report of the differences in the order quantity and delivered quantity between the benchmark data and the main data.
>
> Attaching screenshots from a dummy report I created, which will give you a better idea of what it looks like and how the final output should be presented:
>
> #### Output Data:
> <img src="order_quantity.png">
> <img src="delivery_quantity.png">
>
> Feel free to ask your seniors for any questions!
>
> Good luck with this task!
> <br>Best regards,</br>
> <img src="Atliq%20A%20logo-04.png" width="40" alt="AtliQ Logo">
> <br>Hem</br>
> Head of Data Analytics | AtliQ Technologies Pvt. Ltd.
> <br>Website: [www.atliq.com](https://www.atliq.com/)</br>

### Solution:

#### Quality Check
1. Which customer_id has the largest absolute difference between their recorded order quantity and the benchmark order quantity?
i.e Absolute(benchmark_order_qty - recorded_order_qty)

#### Answer: 789903

2. How many customers in the delivery category have a difference of greater than 3% between their recorded delivery quantity and the benchmark delivery quantity, expressed as a percentage of the benchmark? i.e delivery%_from_benchmarks = ABSOLUTE((benchmark_delivery_qty - recorded_delivery_qty)) / benchmark_delivery_qty * 100

#### Answer: 5 customers

3. What is the quantity of orders recorded for “Viveks Stores” in the city of 'Vadodara' during the month of March 2022?

#### Answer: 73011

#### Solution File : [variance analysis_soln](https://github.com/BiQueryPls/AtliQTech_Internship/blob/main/variance%20analysis_soln.pbix)
**Tool: Power BI**
