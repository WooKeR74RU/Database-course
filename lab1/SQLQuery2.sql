select Name, CreditRating from Purchasing.Vendor where CreditRating = (select avg(CreditRating) from Purchasing.Vendor)
