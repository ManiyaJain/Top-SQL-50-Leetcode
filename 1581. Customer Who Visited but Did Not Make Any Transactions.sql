SELECT v.customer_id, COUNT(customer_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id = t.visit_id
where t.transaction_id IS NULL
GROUP BY v.customer_id