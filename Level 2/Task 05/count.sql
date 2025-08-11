SELECT name FROM sqlite_master WHERE type='table' ORDER BY name;
SELECT COUNT(*) AS InvoiceCount FROM Invoice;
SELECT COUNT(*) AS InvoiceLineCount FROM InvoiceLine;
SELECT COUNT(*) AS TrackCount FROM Track;
SELECT COUNT(*) AS CustomerCount FROM Customer;
