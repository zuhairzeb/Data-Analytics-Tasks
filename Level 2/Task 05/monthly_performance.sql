SELECT
  STRFTIME('%Y-%m', InvoiceDate) AS Month,
  ROUND(SUM(Total), 2) AS MonthlyRevenue,
  COUNT(InvoiceId) AS NumInvoices
FROM Invoice
GROUP BY Month
ORDER BY Month;
