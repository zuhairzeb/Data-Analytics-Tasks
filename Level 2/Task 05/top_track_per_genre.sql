SELECT Genre, Track, UnitsSold
FROM (
  SELECT
    g.Name AS Genre,
    t.Name AS Track,
    SUM(il.Quantity) AS UnitsSold,
    ROW_NUMBER() OVER (PARTITION BY g.Name ORDER BY SUM(il.Quantity) DESC) AS rn
  FROM InvoiceLine il
  JOIN Track t ON il.TrackId = t.TrackId
  JOIN Genre g ON t.GenreId = g.GenreId
  GROUP BY g.Name, t.Name
) sub
WHERE rn = 1
ORDER BY Genre;
SELECT Genre, Track, UnitsSold
FROM (
  SELECT
    g.Name AS Genre,
    t.Name AS Track,
    SUM(il.Quantity) AS UnitsSold,
    ROW_NUMBER() OVER (PARTITION BY g.Name ORDER BY SUM(il.Quantity) DESC) AS rn
  FROM InvoiceLine il
  JOIN Track t ON il.TrackId = t.TrackId
  JOIN Genre g ON t.GenreId = g.GenreId
  GROUP BY g.Name, t.Name
) sub
WHERE rn = 1
ORDER BY Genre;
