--CREATE A CUSTOMER ACCOUNT SUMMARY VIEW
CREATE VIEW customer_account_summary AS
SELECT c.customer_id,
	c.first_name,
	c.last_name,
	a.account_id,
	a.balance
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id;

--BRANCH TRANSACTION SUMMARY VIEW
CREATE VIEW branch_transaction_summary AS
SELECT b.branch_id,
	b.branch_name,
	COUNT(t.transaction_id) AS total_transactions,
	SUM(t.amount) AS total_transaction_amount
FROM branches b
JOIN transactions t
ON b.branch_id = t.branch_id
GROUP BY b.branch_id,b.branch_name;

--LOAN SUMMARY
CREATE VIEW loan_summary AS
SELECT l.loan_id,
	l.account_id,
	ls.status_name,
	l.principal_amount,
	l.interest_rate,
	l.start_date,
	l.estimated_end_date
FROM loans l
JOIN loan_status ls
ON l.loan_status_id = ls.loan_status_id;

--CUSTOMER TRANSACTION SUMMARY
CREATE VIEW customer_transaction AS
SELECT c.customer_id,
	c.first_name,
	c.last_name,
	COUNT(t.transaction_id) AS total_transaction,
	SUM(t.amount) AS total_transaction_amount
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
JOIN transactions t
ON a.account_id = t.account_origin_id
GROUP BY c.customer_id,
	c.first_name,
	c.last_name;

--CUSTOMER LOAN SUMMARY
CREATE VIEW customer_loan_summary AS
SELECT c.customer_id,
	c.first_name,
	c.last_name,
	l.loan_id,
	l.principal_amount,
	l.interest_rate,
	ls.status_name
FROM customers c
JOIN accounts a
ON c.customer_id = a.customer_id
JOIN loans l
ON a.account_id = l.account_id 
JOIN loan_status ls
ON l.loan_status_id = ls.loan_status_id;
	











