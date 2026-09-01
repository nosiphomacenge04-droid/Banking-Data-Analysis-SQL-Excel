# Banking-Data-Analysis-SQL-Excel
## Project Overview
This project focuses on analysing banking data using SQL and Microsoft Excel. The database was created from scratch using SQL and consists of three related tables: Branches, ClientRecords, and Trans. Primary and foreign keys were used to establish relationships between branches, customer accounts, and transactions. SQL was used to explore the banking data and answer business-related questions involving customers, account balances, branches, and transactions. Selected SQL results were then exported to Excel for further analysis using PivotTables and charts. The project demonstrates an end-to-end data analysis workflow, from relational database creation and SQL querying to Excel-based analysis and visualisation.

## Objectives
The main objectives of this project were to:
- Design and create a relational banking database.
- Create and populate tables for branches, customers, and transactions.
- Establish relationships between tables using primary and foreign keys.
- Analyse customer accounts and account balances.
- Analyse branch-level customer and balance information.
- Explore transaction activity and transaction values.
- Identify high-value customers and branches.
- Use subqueries to answer more advanced business questions.
- Categorise customers based on account balances.
- Create a SQL view for dashboard analysis.
- Export SQL results to Excel.
- Use PivotTables and charts to explore and communicate banking insights.
  
## Database Design
The database was created using SQL Server and contains three main tables:

### Branches
Contains information about bank branches, including:
- Branch Code
- Branch Name
- Branch Manager
- Branch Address
- City
- Region

### ClientRecords
Contains customer account information, including:
- Account Number
- First Name
- Surname
- Account Type
- Client Address
- Date Opened
- Account Status
- Account Balance
- Branch Code

### Trans
Contains transaction information, including:
- Transaction ID
- Account Number
- Branch Code
- Transaction Date
- Transaction Classification
- Payment Method
- Amount

The tables are connected using primary and foreign keys to maintain relationships between branches, customer accounts, and transactions.

## SQL Analysis
The analysis focused on several banking-related business questions.

### Customer and Account Analysis
- How many accounts are in the bank?
- How many customers have each account type?
- What is the average account balance?
- What are the highest and lowest account balances?
- Which customers have balances above R50,000?
- Which account type has the highest average balance?

### Branch Analysis
- How many accounts does each branch have?
- What is the total customer balance for each branch?
- Which branch has the highest total customer balance?
- Which branch has the most customers?
- What is the average account balance for each branch?
- Which city has the highest total customer balance?
- Which branch has no transactions?

### Transaction Analysis
- What is the total transaction value?
- How many transactions have been made?
- What is the average transaction amount?
- What is the largest transaction?
- How many deposits, withdrawals, and transfers were made?
- What is the total amount deposited?
- What is the total amount withdrawn?
- Which branch processes the most transactions?

### Customer Transaction Analysis
- Which customers have made transactions?
- Which customers have never made a transaction?
- Which customers have both deposits and withdrawals?
- What are the top 5 customers by total transaction value?
- Which customers have transactions above the average transaction amount?
- Which customers have account balances above the average?

### Customer Segmentation
Customers were categorised based on their account balance into:
- Low Balance
- Medium Balance
- High Balance
This was implemented using SQL `CASE` expressions.

## Selected SQL Analysis
### 1. Customer Accounts by Branch
A `LEFT JOIN` was used to combine branch and customer information and count the number of accounts associated with each branch.
[View SQL result](./Screenshots/02_accounts_by_branch.png)

### 2. Total Customer Balance by Branch
The total account balance was calculated for each branch using `SUM()` and `GROUP BY`.
[View SQL result](./Screenshots/03_total_balance_by_branch.png)

### 3. Branch with the Highest Total Customer Balance
A nested subquery was used to identify the branch with the highest combined customer account balance.
[View SQL result](./Screenshots/04_highest_balance_branch.png)

### 4. Transaction Analysis Using Multiple Table Joins
Transaction, customer, and branch information were combined using multiple `JOIN` operations.
[View SQL result](./Screenshots/05_transaction_analysis.png)

### 5. Customer Transaction History
Transactions for a specific customer were retrieved using multiple joins, filtering, and sorting.
[View SQL result](./Screenshots/06_customer_transaction_history.png)

### 6. Customers with No Recorded Transactions
A subquery was used to identify customer accounts that do not appear in the transaction table.
[View SQL result](./Screenshots/07_customers_no_transactions.png)

### 7. Customers with Both Deposits and Withdrawals
Multiple subqueries were used to identify customers who had made both deposits and withdrawals.
[View SQL result](./Screenshots/08_deposit_withdrawal_customers.png)

### 8. Top 5 Customers by Total Transaction Value
Customer transactions were aggregated and ranked to identify the five customers with the highest total transaction values.
[View SQL result](./Screenshots/09_top_5_customers.png)

### 9. Customers with Above-Average Account Balances
A subquery using `AVG()` was used to identify customers whose account balances were above the overall average.
[View SQL result](./Screenshots/10_above_average_balance.png)

### 10. Account Type with the Highest Average Balance
Account types were grouped and compared based on their average account balances.
[View SQL result](./Screenshots/11_account_type_average_balance.png)

### 11. Customer Segmentation by Account Balance
Customers were classified into low, medium, and high balance categories using a `CASE` expression.
[View SQL result](./Screenshots/12_customer_balance_segments.png)

## SQL Dashboard View
A reusable SQL view named `vw_Dashboard` was created by combining transaction, branch, and customer information.
The view was designed to provide a consolidated dataset that could be used for further dashboard analysis.
[View SQL view result](./Screenshots/13_dashboard_view.png)

## Excel Analysis & Dashboard
Selected SQL results were exported to Microsoft Excel for further exploration.
Excel was used to:

- Create PivotTables.
- Summarise banking data.
- Analyse customer and transaction patterns.
- Create charts.
- Explore branch and account information.
- Present findings visually.

### Excel Dashboard
![Banking Data Analysis Dashboard](./Screenshots/14_excel_dashboard.png)

## Project Workflow
The project followed the following workflow:
1. Designed the banking database structure.
2. Created the database using SQL.
3. Created the Branches, ClientRecords, and Trans tables.
4. Established relationships using primary and foreign keys.
5. Inserted sample banking data.
6. Performed SQL-based data analysis.
7. Used joins, aggregations, filtering, subqueries, and conditional logic.
8. Created a SQL view for dashboard analysis.
9. Exported selected SQL results to Excel.
10. Created PivotTables and charts.
11. Developed an Excel dashboard to explore and communicate the results.

## SQL Skills Demonstrated
- Database creation
- Table creation
- Primary keys
- Foreign keys
- Relational database design
- `SELECT`
- `WHERE`
- `GROUP BY`
- `ORDER BY`
- `JOIN`
- `LEFT JOIN`
- Aggregate functions
- `COUNT()`
- `SUM()`
- `AVG()`
- `MIN()`
- `MAX()`
- `TOP`
- Subqueries
- `CASE`
- `BETWEEN`
- `DISTINCT`
- `CREATE VIEW`
  
## Excel Skills Demonstrated
- Data exploration
- PivotTables
- Data summarisation
- Chart creation
- Dashboard development
- Visual analysis
- Business-focused reporting

## Tools Used
- **SQL Server / SQL** — database creation and data analysis
- **Microsoft Excel** — data exploration, PivotTables, charts, and dashboard development

