# 📊 SQL Internship - Task 4: Aggregate Functions & Grouping

## 🔍 Task Objective

This task demonstrates the use of **aggregate functions** (`SUM`, `AVG`, `COUNT`, etc.) and **GROUP BY** clauses to summarize data from a Library Management database.

## 🧾 Concepts Used

| Concept      | Description                                   |
|--------------|-----------------------------------------------|
| `COUNT()`    | Total rows or grouped counts                  |
| `AVG()`      | Average values                                |
| `SUM()`      | Total sum of a numeric column                 |
| `GROUP BY`   | Aggregate data by category/group              |
| `HAVING`     | Filter grouped results                        |
| `DISTINCT`   | Count only unique values                      |
| `ROUND()`    | Round numerical results                       |

## 🧪 Sample Queries Used

```sql
-- Total members
SELECT COUNT(*) FROM Members;

-- Average published year of books
SELECT AVG(PublishedYear) FROM Books;

-- Number of books per author
SELECT AuthorID, COUNT(*) FROM BookAuthors GROUP BY AuthorID;
```

## 📁 Files Included

- `task4_aggregate_queries.sql` – All queries related to Task 4
- `README.md` – Explanation of the task

## ✅ GitHub Repository

📌 Repo Link: [https://github.com/poruri-santhosh/SQL-Internship-Task4-Aggregates](https://github.com/poruri-santhosh/SQL-Internship-Task4-Aggregates)
