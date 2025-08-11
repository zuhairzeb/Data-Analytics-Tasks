SELECT
  t.Name AS TrackName,
  ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS Revenue,
  SUM(il.Quantity) AS UnitsSold
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY Revenue DESC
LIMIT 10;
