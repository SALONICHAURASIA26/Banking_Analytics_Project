--TOTAL BALANCE IN BANK
SELECT SUM(balance) AS total_bank_balance
FROM accounts;

--AVG ACCOUNT BALAANCE
SELECT ROUND(AVG(balance),2) AS avg_bank_balance
FROM accounts;

--TOP 10 CUSTOMERS BY BALANCE
SELECT c.customer_id,
	c.first_name,
	c.last_name,
	SUM(a.balance) AS total_balance
FROM customers c	
JOIN accounts a
ON c.customer_id=a.customer_id
GROUP BY c.customer_id,
	c.first_name,
	c.last_name
ORDER BY total_balance DESC
LIMIT 10;

--BRANCH WISE TOTAL TRANSACTIONS
SELECT b.branch_name,
	COUNT(t.transaction_id) AS total_transactions,
	SUM(t.amount) AS total_amount
FROM transactions t
JOIN branches b
ON t.branch_id=b.branch_id
GROUP BY b.branch_name
ORDER BY total_amount DESC;

--LOAN STATUS ANALYSIS
SELECT ls.status_name,
	COUNT(l.loan_id) AS total_loans
FROM loans l
JOIN loan_status ls
ON l.loan_status_id = ls.loan_status_id 
GROUP BY ls.status_name
ORDER BY total_loans DESC;

--CUSTOMER TYPE ANALYSIS
SELECT ct.type_name,
	COUNT(customer_id) AS total_customers
FROM customers c
JOIN customer_types ct
ON c.customer_typeid = ct.customer_typeid
GROUP BY ct.type_name
ORDER BY total_customers DESC;

--TOP 10 HIGHEST LOAN AMOUNT
SELECT loan_id,
	account_id,
	principal_amount
FROM loans
ORDER BY principal_amount DESC
LIMIT 10;

--MONTHLY TRANSACTION TREND
SELECT DATE_TRUNC('month',transaction_date) AS month,
	COUNT (transaction_id) AS total_transaction,
	SUM(amount) AS total_amount
FROM transactions
GROUP BY DATE_TRUNC('month',transaction_date)
ORDER BY month;

--TOP 10 CUSTOMERS BY NUMBER OF TRANSACTIONS
SELECT c.customer_id,
	c.first_name,
	c.last_name,
	COUNT(t.transaction_id) AS total_transaction
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
JOIN transactions t
ON a.account_id = t.account_origin_id
GROUP BY c.customer_id,c.first_name,c.last_name
ORDER BY total_transaction DESC
LIMIT 10;













