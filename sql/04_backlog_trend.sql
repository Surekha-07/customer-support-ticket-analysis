SELECT 
    DATE(created_at) AS date,
    COUNT(*) FILTER (WHERE status <> 'Resolved') AS backlog
FROM tickets
GROUP BY DATE(created_at)
ORDER BY date;
