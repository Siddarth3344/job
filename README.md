
# HR Data Analysis: Employee Training and Experience Insights

## Project Overview

This repository contains SQL queries and analysis based on a simulated HR dataset focused on employee training, experience, and demographic information. The goal of this project is to extract meaningful insights that can help in understanding the relationships between training hours, relevant experience, education levels, and other employee attributes.

## Dataset

The core of this analysis is the `aug_test.csv` dataset. It contains information about potential candidates, including:

* `enrollee_id`: Unique ID for candidate
* `city`: City code
* `city_development_index`: Scale of city development (0-1)
* `gender`: Gender of the candidate
* `relevent_experience`: Relevant experience (e.g., 'Has relevant experience', 'No relevant experience')
* `enrolled_university`: Type of university enrollment (e.g., 'no_enrollment', 'Full time course')
* `education_level`: Highest education level
* `major_discipline`: Major subject area
* `experience`: Years of experience (e.g., '<1', '1-5', '>20')
* `company_size`: Company size
* `company_type`: Type of company
* `last_new_job`: Years since last new job (e.g., '1', 'never', '>4')
* `training_hours`: Training hours completed

**Note on Data Type:** The `last_new_job` column contains mixed data types (numbers and strings like 'never', '>4'). For SQL analysis, it was handled as `VARCHAR` or `TEXT` to accommodate these values.

## Analysis Objectives & Questions

The SQL queries in this repository aim to answer key questions about the dataset, such as:

1.  **Candidate Demographics and Experience:** How do gender and relevant experience distribute across different education levels?
2.  **Training Hours Insights:** What are the average training hours when segmented by company size and education level?
3.  **Job Seeking Behavior:** How do candidates with no relevant experience and no university enrollment, who haven't changed jobs recently, relate to city development indices?
4.  **Experience Level & Training Correlation:** What is the average training hours for candidates, categorized into specific experience bands, especially focusing on those with a STEM major?

## Key Findings (Summary)

*(After you run your queries and analyze results, you would summarize your key findings here. For example:)*

* Candidates with XX years of experience tend to have the highest average training hours in STEM.
* There's a significant difference in relevant experience distribution based on education level (e.g., Graduates overwhelmingly possess relevant experience).
* Certain city development indices show a higher concentration of candidates with specific career patterns (e.g., no relevant experience, no recent job change).

## Tools Used

* **SQL (PostgreSQL syntax used for queries):** For data querying, aggregation, and transformation.
* **Git & GitHub:** For version control and repository hosting.
* **Python (Pandas, Matplotlib, Seaborn):** *(Optional: Include if you used Python for initial data loading, cleaning, or advanced visualizations)*
* **PgAdmin 4:** *(Optional: If you used this for database management)*
* **Power BI / Tableau:** *(Optional: If you created interactive dashboards or reports with these tools, you can link to them or include screenshots)*

## Repository Structure

* `aug_test.csv`: The primary dataset used for analysis.
* `sql_queries/`: (Recommended) A folder containing your SQL query files (e.g., `demographics_query.sql`, `training_analysis.sql`).
* `database_schema.sql`: (Recommended) A file containing the `CREATE TABLE` statement for the `details` or `aug_test` table.
* `README.md`: This file, providing an overview of the project.

## How to Use/Run the Analysis

To replicate this analysis:

1.  **Clone the Repository:**
    ```bash
    git clone [https://github.com/YourUsername/YourRepositoryName.git](https://github.com/YourUsername/YourRepositoryName.git)
    cd YourRepositoryName
    ```
2.  **Set Up Database:**
    * Ensure you have a PostgreSQL database (or your preferred SQL database) installed and configured.
    * Use the `database_schema.sql` file (if provided) to create the `details` table.
    * Import `aug_test.csv` into your `details` table using your database client (e.g., PgAdmin 4's Import/Export feature).
3.  **Execute SQL Queries:**
    * Open your SQL client (e.g., PgAdmin 4, DBeaver, psql).
    * Run the SQL queries found in the `sql_queries/` folder.
4.  **Review Findings:**
    * Examine the results of the queries to understand the insights.
    * If available, review any Python scripts or visualization outputs for deeper understanding.

---

