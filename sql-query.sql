SELECT
    h.name,
    SUM(b.amount) AS total_unpaid
FROM homes h
JOIN bills b
    ON h.id = b.home_id
WHERE b.paid_at IS NULL
GROUP BY h.id, h.name
HAVING SUM(b.amount) > 10000
ORDER BY total_unpaid DESC;
