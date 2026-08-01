CREATE TABLE customers
(
	customer_id INT PRIMARY KEY,	
	first_name VARCHAR(20),	
	last_name VARCHAR(20),	
	date_of_birth TEXT,
	address_id INT,	
	customer_typeid INT
);

CREATE TABLE accounts
(
	account_id INT PRIMARY KEY,
	customer_id INT NOT NULL,
	account_typeid INT NOT NULL,
	account_status_id INT NOT NULL,
	balance NUMERIC(10,2),
	opening_date DATE
);

CREATE TABLE account_types
(
	account_typeid INT PRIMARY KEY,
	type_name VARCHAR(10)
);

CREATE TABLE account_status
(
	account_status_id INT PRIMARY KEY,
	status_name VARCHAR(15)
);

CREATE TABLE loans
(
	loan_id INT PRIMARY KEY,
	account_id INT,
	loan_status_id INT,
	principal_amount NUMERIC(10,2),
	interest_rate NUMERIC(7,2),
	start_date DATE,
	estimated_end_date DATE
);

CREATE TABLE loan_status
(
	loan_status_id INT PRIMARY KEY,
	status_name VARCHAR(20)
);

CREATE TABLE transactions
(
	transaction_id INT PRIMARY KEY,
	account_origin_id INT,
	account_destination_id INT,
	transaction_type_id INT,
	amount NUMERIC(10,2),
	transaction_date TIMESTAMP,
	branch_id INT,
	description VARCHAR(100)
);

CREATE TABLE transaction_types
(
	transaction_type_id INT PRIMARY KEY,
	type_name VARCHAR(20)
);

CREATE TABLE addresses
(
	address_id INT PRIMARY KEY,
	street VARCHAR(70),
	city VARCHAR(30),
	country VARCHAR(35)
);

CREATE TABLE branches
(
	branch_id INT PRIMARY KEY,
	branch_name VARCHAR(100),
	address_id INT
);

CREATE TABLE customer_types
(
	customer_typeid INT PRIMARY KEY,
	type_name VARCHAR(20)
);
