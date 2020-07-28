SELECT CreditRating, ActiveFlag, COUNT(*) FROM Purchasing.Vendor GROUP BY ActiveFlag, CreditRating
