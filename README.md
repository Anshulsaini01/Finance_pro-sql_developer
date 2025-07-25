# 💰 Personal Finance Tracker

A SQL-powered budget tracking tool designed to help users monitor income, expenses, and financial balance across monthly periods.

## 📦 Project Overview

This project leverages **MySQL** or **SQLite** databases to track:
- User profiles
- Income sources
- Categorized expenses
- Monthly summaries
- Balance views
- Exportable financial reports

## 🛠 Technologies Used

- SQL (MySQL or SQLite)
- Structured schema design
- Query optimization
- Views and aggregation
- Optional integration with dashboards (e.g., Excel, BI tools)

## 📐 Database Schema

| Table Name | Description |
|------------|-------------|
| `Users` | Stores user details |
| `Income` | Tracks income sources by user and date |
| `Expense` | Logs categorized expenses by user and date |
| `Categories` | Defines expense types for grouping |

### Example Schema

```sql
CREATE TABLE Users (
  user_id INT PRIMARY KEY,
  user_name VARCHAR(100),
  email VARCHAR(100),
  phone_no VARCHAR(15)
);

CREATE TABLE Income (
  user_id INT,
  food_business INT,
  cloth_business INT,
  milk_business INT,
  Income_date VARCHAR(40),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Expense (
  user_id INT,
  food INT,
  electricity INT,
  rent INT,
  medication INT,
  gym INT,
  Expense_date VARCHAR(40),
  FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE Categories (
  category_id INT PRIMARY KEY,
  category_name VARCHAR(50)
);
