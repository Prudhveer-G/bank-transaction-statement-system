CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_holder_name VARCHAR(100) NOT NULL,
    account_type VARCHAR(50),
    created_at DATE NOT NULL
);

CREATE TABLE transactions (
    transaction_id INT PRIMARY KEY,
    account_id INT NOT NULL,
    transaction_date DATE NOT NULL,
    description VARCHAR(255),
    amount DECIMAL(12,2) NOT NULL,
    transaction_type VARCHAR(10) CHECK (transaction_type IN ('DEBIT', 'CREDIT')),
    category VARCHAR(50),

    FOREIGN KEY (account_id) REFERENCES accounts(account_id)
);
