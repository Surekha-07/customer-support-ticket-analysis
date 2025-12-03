SELECT
    agent_name,
    AVG(aht_seconds) AS avg_aht
FROM tickets
GROUP BY agent_name
ORDER BY avg_aht;
