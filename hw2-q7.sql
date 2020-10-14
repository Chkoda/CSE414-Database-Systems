-- Outputs 1 row
SELECT SUM(F.capacity) as capacity
FROM flights as F
	JOIN months as M
	ON F.month_id = M.mid
WHERE F.origin_city = "Seattle WA" AND F.dest_city = "San Francisco CA"
	AND M.month = "July" AND F.day_of_month = 10;