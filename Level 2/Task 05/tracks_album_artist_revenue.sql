SELECT
  t.TrackId,
  t.Name AS TrackName,
  al.Title AS Album,
  ar.Name AS Artist,
  SUM(il.Quantity) AS UnitsSold,
  ROUND(SUM(il.UnitPrice * il.Quantity), 2) AS Revenue
FROM InvoiceLine il
JOIN Track t ON il.TrackId = t.TrackId
JOIN Album al ON t.AlbumId = al.AlbumId
JOIN Artist ar ON al.ArtistId = ar.ArtistId
GROUP BY t.TrackId, t.Name, al.Title, ar.Name
ORDER BY Revenue DESC
LIMIT 20;
