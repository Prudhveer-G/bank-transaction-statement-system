-- 1. Full transaction statement for an account
SELECT
    t.transaction_date,
    t.description,
    t.transaction_type,
    t.amount,
    t.category
FROM transactions t
WHERE t.account_id = 1
ORDER BY t.transaction_date;


-- 2. Monthly spending summary by category
SELECT
    category,
    SUM(amount) AS total_spent
FROM transactions
WHERE transaction_type = 'DEBIT'
  AND account_id = 1
GROUP BY category
ORDER BY total_spent DESC;


-- 3. Account balance calculation
SELECT
    a.account_id,
    a.account_holder_name,
    SUM(
        CASE
            WHEN t.transaction_type = 'CREDIT' THEN t.amount
            WHEN t.transaction_type = 'DEBIT' THEN -t.amount
        END
    ) AS account_balance
FROM accounts a
JOIN transactions t ON a.account_id = t.account_id
GROUP BY a.account_id, a.account_holder_name;
