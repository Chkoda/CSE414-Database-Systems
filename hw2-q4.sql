-- Outputs 12 rows
SELECT DISTINCT C.name
FROM flights as F
	JOIN carriers as C
	ON F.carrier_id = C.cid
GROUP BY C.name, F.day_of_month
HAVING COUNT(C.name) > 1000;