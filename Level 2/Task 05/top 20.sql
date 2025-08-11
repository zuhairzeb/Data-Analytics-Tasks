SELECT
  c.Country,
  ROUND(SUM(i.Total), 2) AS TotalRevenue,
  COUNT(i.InvoiceId) AS NumInvoices
FROM Invoice i
JOIN Customer c ON i.CustomerId = c.CustomerId
GROUP BY c.Country
ORDER BY TotalRevenue DESC
LIMIT 20;
