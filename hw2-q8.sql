-- Outputs 22 rows
SELECT C.name, SUM(departure_delay)
FROM flights as F
	JOIN carriers as C
	ON F.carrier_id = C.cid
GROUP BY C.name;