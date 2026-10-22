CREATE TABLE loan (
    loan_id TEXT,  /* no type on the canvas */
    customer_id TEXT,  /* no type on the canvas */
    load_type_id TEXT,  /* no type on the canvas */
    origination_date TEXT,  /* no type on the canvas */
    principal_amount TEXT,  /* no type on the canvas */
    status TEXT,  /* no type on the canvas */
    PRIMARY KEY (loan_id)
);

CREATE TABLE loan_type (
    load_type_id TEXT,  /* no type on the canvas */
    product_name TEXT,  /* no type on the canvas */
    default_rate TEXT,  /* no type on the canvas */
    default_term_months TEXT,  /* no type on the canvas */
    PRIMARY KEY (load_type_id)
);

CREATE TABLE customer (
    customer_id TEXT,  /* no type on the canvas */
    customer_name TEXT,  /* no type on the canvas */
    customer_email TEXT,  /* no type on the canvas */
    joined_at TEXT,  /* no type on the canvas */
    PRIMARY KEY (customer_id)
);

CREATE TABLE transaction (
    transaction TEXT,  /* no type on the canvas */
    load_id TEXT,  /* no type on the canvas */
    paid_amount TEXT,  /* no type on the canvas */
    paid_date TEXT,  /* no type on the canvas */
    type TEXT,  /* no type on the canvas */
    PRIMARY KEY (transaction)
);

ALTER TABLE loan
    ADD FOREIGN KEY (load_type_id) REFERENCES loan_type (load_type_id);

ALTER TABLE loan
    ADD FOREIGN KEY (customer_id) REFERENCES customer (customer_id);

ALTER TABLE transaction
    ADD FOREIGN KEY (load_id) REFERENCES loan (loan_id);
