# SQL Learning and Practice Repository

## Overview
This repository contains SQL scripts and examples that for learning journey. The content covers fundamental to advanced SQL concepts, designed for testers and developers who want to strengthen their database querying skills.

## Features
- **DDL Commands**: Create, alter, and drop tables.
- **DML Commands**: Insert, update, delete, and retrieve data from databases.
- **Joins**: Practice different types of joins, including inner, outer, and self joins.
- **Functions**: Use built-in functions like aggregate, string, and date functions.
- **Subqueries and Nested Queries**: Learn how to write complex queries using subqueries.
- **Integrity Constraints**: Understand primary keys, foreign keys, and unique constraints.
- **Indexes and Views**: Optimize database performance and use views for data abstraction.
- **Transaction Management**: Learn commit, rollback, and savepoint commands.

## Folder Structure
```bash
├── 1.craete database table insert record and retrieving
├── 2.filtering rows where clause operators and pattern maching
├── 3.DDL Data defined language
├── 4.build in functions
├── 5. group by having&order by clauses in
├── 6.umion&union all & join&sub query
├── 7.integrity constraints
├── 8.Auto-increment
├── 9.views&index
├── 10.TCL commands commit rollback
├──11.100 questions practice for hr database
├── hr-schema-mysql.sql - Sample HR schema for practice
```

## How to Use
- Clone this repository:
   ```bash
   git clone https://github.com/<your-username>/<repository-name>.git
- Import the hr-schema-mysql.sql file into your MySQL database.
- Open your SQL client (e.g., MySQL Workbench) and execute the scripts in each folder.
- Practice modifying the queries to deepen your understanding.
  
## Example Query
Here is a sample query to retrieve employees earning more than $10,000:
```bash
sql
Copy code
SELECT first_name, last_name, salary
FROM employees
WHERE salary > 10000;
```
## License
This repository is for educational purposes only. You are welcome to use and modify the scripts for your own learning.

## Contact

If you have any questions or suggestions about this framework, feel free to reach out!
Email: [liut44194@gmail.com]
GitHub Profile: https://github.com/TinaL-AutomationQA
