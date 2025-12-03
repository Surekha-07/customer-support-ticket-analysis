SELECT 
    DATE(created_at) AS ticket_date,
    COUNT(*) AS total_tickets
FROM tickets
GROUP BY DATE(created_at)
ORDER BY ticket_date;
