CREATE TABLE loan (
    loan_id VARCHAR,
    interest_rate FLOAT,
    term_length INT,
    product_id VARCHAR,
    PRIMARY KEY (loan_id)
);

CREATE TABLE account (
    account_id VARCHAR,
    balance INT,
    amount INT,
    "due date" DATE,
    PRIMARY KEY (account_id)
);

CREATE TABLE transction (
    transaction_id VARCHAR,
    amount INT,
    date DATE,
    PRIMARY KEY (transaction_id)
);

CREATE TABLE customer_loan (
    customer_id VARCHAR,
    loan_id VARCHAR,
    transaction_id VARCHAR,
    account_id VARCHAR
);

CREATE TABLE Product (
    product_id VARCHAR,
    loan_type VARCHAR,
    PRIMARY KEY (product_id)
);

ALTER TABLE customer_loan
    ADD FOREIGN KEY (loan_id) REFERENCES loan (loan_id);

ALTER TABLE customer_loan
    ADD FOREIGN KEY (loan_id) REFERENCES transction (transaction_id);

ALTER TABLE loan
    ADD FOREIGN KEY (product_id) REFERENCES Product (product_id);

ALTER TABLE customer_loan
    ADD FOREIGN KEY (account_id) REFERENCES account (account_id);
