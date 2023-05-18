-- Prepare a report of books due to be returned
-- to the library on July 13, 2022.
-- Provide the due date, the book title, and
-- the borrower's first name and email address.
SELECT FirstName,
  Email,
  Title,
  DueDate
FROM Loans
  JOIN Books ON Books.BookID = Loans.BookID
  JOIN Patrons ON Patrons.PatronID = Loans.PatronID
WHERE DueDate = "2022-07-13"
  AND ReturnedDate IS NULL