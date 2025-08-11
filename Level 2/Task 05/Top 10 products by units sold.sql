SELECT
  t.Name AS TrackName,
  SUM(il.Quantity) AS UnitsSold
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
GROUP BY t.TrackId
ORDER BY UnitsSold DESC
LIMIT 10;
