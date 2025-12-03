SELECT
    priority,
    COUNT(*) AS total_tickets,
    SUM(CASE WHEN resolved_within_sla = 'Yes' THEN 1 END) AS sla_met,
    ROUND(
        (SUM(CASE WHEN resolved_within_sla = 'Yes' THEN 1 END) / COUNT(*)) * 100, 2
    ) AS sla_percentage
FROM tickets
GROUP BY priority;
