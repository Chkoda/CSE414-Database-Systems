-- Outputs 3 rows
SELECT DISTINCT F.flight_num AS flight_num 
FROM Flights AS F 
	JOIN weekdays AS W 
	JOIN carriers AS C 
	ON F.day_of_week_id=W.did AND F.carrier_id=C.cid 
WHERE F.origin_city = "Seattle WA" 
	AND F.dest_city = "Boston MA" 
	AND W.day_of_week="Monday" 
	AND C.name = "Alaska Airlines Inc.";