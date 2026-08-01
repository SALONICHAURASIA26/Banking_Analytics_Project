# Banking Analytics Project

An end-to-end data analytics project built on a banking dataset — from raw, messy data all the way to a working Power BI dashboard.

The dataset covers customers, accounts, loans, transactions, and branches for a fictional bank, and the project walks through the full pipeline: cleaning the data, designing a relational database, writing SQL queries for business questions, and visualizing everything in Power BI.

## Tech Stack

- **Excel** — data profiling, duplicate removal, missing value handling
- **PostgreSQL** — schema design, foreign keys, business queries, views
- **Power BI** — interactive dashboard with KPIs, trends, and drill-downs

## Dataset Overview

- 1,100 customers
- 1,651 accounts
- 49,500 transactions (₹123.96M total)
- 330 loans (₹17.09M total)

## Project Workflow

**1. Data Cleaning (Excel)**
Raw data had duplicate rows and missing values (mostly first names and a few address fields). Removed 500+ duplicate transaction records and handled missing customer names before loading anything into the database.

**2. Database Design (PostgreSQL)**
Built a normalized schema across 11 tables with proper primary and foreign key constraints. Wrote business queries covering things like top customers by balance, branch-wise transaction totals, and loan status breakdowns, plus a set of views for repeat use (customer account summary, branch transaction summary, loan summary, etc.).

**3. Dashboard (Power BI)**
One-page dashboard with KPI cards, filters for year/month/branch/account type/loan status, and charts covering monthly trends, transaction type distribution, loan status, account type split, and branch-wise performance.

## Key Insights

- **10.3% of loans are overdue** — that's 34 loans worth ₹1.67M. Not a huge share of the portfolio, but it's real money sitting at risk and worth tracking closely rather than letting it blend into the "active" bucket.

- **Over half the customers (56%) have more than one account.** The bank has clearly already done a decent job cross-selling — most people aren't just parking money in a single savings account, they're spread across savings, checking, payroll, etc.

- **No single customer segment is carrying the bank.** The top 10 customers by transaction amount only make up about 4% of total transaction volume out of 862 people who actually transacted. That's a good sign — the business isn't leaning on a handful of big accounts.

- **Deposits and withdrawals are almost evenly matched** (₹4.04M vs ₹3.92M), which points to healthy day-to-day cash flow. Payments are the smallest category by far (₹1.30M) — people just aren't using the bank for bill payments much.

- **Account types are fairly balanced** — Business, Savings, Youth, Payroll, and Checking accounts all sit in a similar ₹15–17M balance range, so no one product type is dominating or underperforming.

- **Branch 25 stands out** with noticeably higher transaction volume than the other branches. Worth digging into whether that's just a bigger customer base or something branch 25 is doing differently operationally.

## Recommendations

- **Track overdue loans by how long they've been overdue**, not just as one flat "overdue" bucket. A loan that's 5 days late and one that's 90 days late need very different responses, and right now that distinction isn't visible.

- **Go after the single-account customers (44%) for cross-sell.** Since multi-account customers are already the norm, this smaller group is the clearer opportunity — a savings or payroll account offer would be a natural next step for them.

- **Push adoption of payment/bill-pay features.** It's the least-used transaction type by a good margin, and getting more of that activity onto the platform would likely help both engagement and fee income.

- **Look into why Branch 25 is ahead of the rest.** If it's replicable (better staffing, location, service model), other branches could learn from it instead of it just being an outlier.

- **Keep an eye on customer concentration over time.** It's low right now (4% from the top 10), but that's the kind of number worth checking every month or quarter so it doesn't creep up unnoticed.

## Author

Saloni Chaurasia
