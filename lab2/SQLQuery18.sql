SELECT Title, COUNT(*) FROM Person.Contact WHERE Title in ('Ms.', 'Mrs.', 'Sra.') GROUP BY Title
