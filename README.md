# SQL LeetCode Solutions

Aspiring Junior Data Analyst practicing SQL through LeetCode problems.
Focus areas: window functions, CTEs, analytical queries, and real-world business logic.

## Stack
MySQL · Window Functions · CTEs · JOINs · Conditional Aggregation

## Progress
- Total solved: 19
- Easy: 9 | Medium: 7 | Hard: 3

## Highlights
| # | Title | Difficulty | Solution | Key Technique |
|---|-------|------------|----------|---------------|
| 601 | Human Traffic of Stadium | Hard | [SQL](hard/601_Human_Traffic_of_Stadium.sql) | id - ROW_NUMBER() island trick |
| 262 | Trips and Users | Hard | [SQL](hard/262_Trips_and_Users.sql) | Double JOIN + conditional SUM |
| 185 | Department Top Three Salaries | Hard | [SQL](hard/185_Department_Top_Three_Salaries.sql) | DENSE_RANK + CTE filtering |
| 180 | Consecutive Numbers | Medium | [SQL](medium/180_Consecutive_Numbers.sql) | LAG() x2 for sequence detection |
| 550 | Game Play Analysis IV | Medium | [SQL](medium/550_Game_Play_Analysis_IV.sql) | MIN() window + DATE_ADD |
| 1321 | Restarant Growth | Medium | [SQL](medium/1321_Restarant_Growth.sql) | 7-day rolling SUM/AVG with ROWS BETWEEN |

## Structure
```
easy/     # Basic SELECT, JOINs, GROUP BY
medium/   # Window functions, CTEs, subqueries
hard/     # Complex multi-step analytical queries
```
