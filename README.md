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
├── lesson 3 - Create Database, Table, Insert Records
├── lesson 4 - Filtering Rows with WHERE Clause
├── lesson 5 - Data Definition Language (DDL)
├── lesson 6 - Built-in Functions
├── lesson 7 - Group By and Having Clauses
├── lesson 8 - Union and Union All
├── lesson 10 - Integrity Constraints
├── lesson 11 - Auto-Increment
├── lesson 12 - Views and Indexes
├── lesson 13 - Transaction Control Language (TCL)
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
