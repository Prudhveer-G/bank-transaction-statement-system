INSERT INTO accounts (account_id, account_holder_name, account_type, created_at)
VALUES
    (1, 'Ravi Kumar', 'Savings', '2024-01-10'),
    (2, 'Anita Sharma', 'Checking', '2024-02-05');

INSERT INTO transactions (
    transaction_id,
    account_id,
    transaction_date,
    description,
    amount,
    transaction_type,
    category
)
VALUES
    (1001, 1, '2024-03-01', 'Salary Credit', 50000.00, 'CREDIT', 'Income'),
    (1002, 1, '2024-03-02', 'Grocery Store', 2500.75, 'DEBIT', 'Groceries'),
    (1003, 1, '2024-03-05', 'Electricity Bill', 1800.00, 'DEBIT', 'Utilities'),
    (1004, 2, '2024-03-03', 'ATM Withdrawal', 5000.00, 'DEBIT', 'Cash'),
    (1005, 2, '2024-03-06', 'Online Transfer Received', 12000.00, 'CREDIT', 'Transfer');
