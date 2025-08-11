SELECT TrackName, UnitsSold, TrackRank
FROM (
  SELECT
    t.Name AS TrackName,
    SUM(il.Quantity) AS UnitsSold,
    RANK() OVER (ORDER BY SUM(il.Quantity) DESC) AS TrackRank
  FROM InvoiceLine il
  JOIN Track t ON il.TrackId = t.TrackId
  GROUP BY t.TrackId
) sub
WHERE TrackRank <= 10
ORDER BY TrackRank;
