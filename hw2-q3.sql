-- Outputs 1 rows
Select W.day_of_week as day_of_week, AVG(F.arrival_delay) as delay
FROM flights AS F
	JOIN weekdays as W -- get day of week
	ON F.day_of_week_id=W.did
GROUP BY W.day_of_week -- One average for each weekday
ORDER BY AVG(F.arrival_delay) DESC -- Highest to lowest
LIMIT 1; -- Get only highest