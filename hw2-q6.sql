-- Outputs 3 rows
SELECT 
	C.name,
	F.price as max_price
FROM flights as F
	JOIN carriers as C
	ON F.carrier_id = C.cid
WHERE F.origin_city = "Seattle WA" AND F.dest_city = "New York NY"
GROUP BY C.name
HAVING F.price = MAX(F.price);