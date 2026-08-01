--ADD FOREIGN KEY
	--CUSTOMERS
ALTER TABLE customers
ADD CONSTRAINT fk_customer_address
FOREIGN KEY(address_id)
REFERENCES addresses(address_id);

ALTER TABLE customers
ADD CONSTRAINT fk_customer_type
FOREIGN KEY (customer_typeid)
REFERENCES customer_types(customer_typeid);

	--ACCOUNTS
ALTER TABLE accounts
ADD CONSTRAINT fk_accounts_customers
FOREIGN KEY (customer_id)
REFERENCES customers(customer_id);

ALTER TABLE accounts
ADD CONSTRAINT fk_account_type
FOREIGN KEY (account_typeid)
REFERENCES account_types(account_typeid);

ALTER TABLE accounts
ADD CONSTRAINT fk_account_status
FOREIGN KEY (account_status_id)
REFERENCES account_status(account_status_id);

	--BRANCHES
ALTER TABLE branches
ADD CONSTRAINT fk_branch_address
FOREIGN KEY (address_id)
REFERENCES addresses(address_id);

	--LOANS
ALTER TABLE loans
ADD CONSTRAINT fk_loans_accounts
FOREIGN KEY (account_id)
REFERENCES accounts(account_id);

ALTER TABLE loans
ADD CONSTRAINT fk_loan_status
FOREIGN KEY (loan_status_id)
REFERENCES loan_status(loan_status_id);

	--TRANSACTIONS
ALTER TABLE transactions
ADD CONSTRAINT fk_transaction_branch
FOREIGN KEY (branch_id)
REFERENCES branches(branch_id);

ALTER TABLE transactions
ADD CONSTRAINT fk_transaction_origin
FOREIGN KEY (account_origin_id)
REFERENCES accounts(account_id);

ALTER TABLE transactions
ADD CONSTRAINT fk_transaction_destination
FOREIGN KEY (account_destination_id)
REFERENCES accounts(account_id);

ALTER TABLE transactions
ADD CONSTRAINT fk_transaction_type
FOREIGN KEY (transaction_type_id)
REFERENCES transaction_types(transaction_type_id);

