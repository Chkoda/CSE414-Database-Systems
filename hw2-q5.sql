-- Outputs 6 rows
SELECT 
	C.name,
	printf("%.2f%", (100.0*SUM(F.canceled)/COUNT(F.fid))) as percentage
FROM flights as F
	JOIN carriers as C
	ON F.carrier_id = C.cid
WHERE F.origin_city = "Seattle WA"
GROUP BY C.name
HAVING (1.0*SUM(F.canceled)/COUNT(F.fid)) > 0.005;