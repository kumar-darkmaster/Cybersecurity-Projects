-- Financial Crime Analytics - synthetic investigation queries
-- Dataset assumptions:
-- transactions(transaction_id, account_id, event_time, amount, merchant_category,
--              country, device_id, status)
-- All data used with these queries must be synthetic/public-safe.

-- 1. High-velocity transaction activity
SELECT
    account_id,
    DATE(event_time) AS event_date,
    COUNT(*) AS transaction_count,
    SUM(amount) AS total_amount
FROM transactions
WHERE status = 'approved'
GROUP BY account_id, DATE(event_time)
HAVING COUNT(*) >= 10
ORDER BY transaction_count DESC;

-- 2. Multiple countries observed for the same account on one day
SELECT
    account_id,
    DATE(event_time) AS event_date,
    COUNT(DISTINCT country) AS country_count
FROM transactions
GROUP BY account_id, DATE(event_time)
HAVING COUNT(DISTINCT country) >= 3
ORDER BY country_count DESC;

-- 3. Repeated declines followed by an approval
WITH ordered_events AS (
    SELECT
        transaction_id,
        account_id,
        event_time,
        amount,
        status,
        LAG(status, 1) OVER (PARTITION BY account_id ORDER BY event_time) AS previous_status,
        LAG(status, 2) OVER (PARTITION BY account_id ORDER BY event_time) AS two_events_back
    FROM transactions
)
SELECT *
FROM ordered_events
WHERE status = 'approved'
  AND previous_status = 'declined'
  AND two_events_back = 'declined';

-- 4. Device diversity by account
SELECT
    account_id,
    COUNT(DISTINCT device_id) AS device_count,
    COUNT(*) AS transaction_count
FROM transactions
GROUP BY account_id
HAVING COUNT(DISTINCT device_id) >= 4
ORDER BY device_count DESC;

-- Analyst note:
-- These queries identify candidate activity only. Thresholds are illustrative,
-- not financial-crime rules, and should not be treated as evidence of misconduct
-- without investigation and supporting context.