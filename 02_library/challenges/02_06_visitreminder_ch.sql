-- Prepare a report of the library patrons
-- who have checked out the fewest books.
SELECT FirstName,
  LastName,
  Email,
  Loans.PatronID,
  Count(LoanID)
FROM Patrons
  JOIN Loans ON Patrons.PatronID = Loans.PatronID
GROUP BY Loans.PatronID
ORDER BY Count(LoanID) ASC
LIMIT 25;