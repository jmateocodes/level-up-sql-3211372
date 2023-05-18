-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT (
    (
      SELECT Count(Books.BookID)
      FROM Books
      WHERE Books.Title = "Dracula"
    ) - (
      SELECT Count(Loans.BookID)
      FROM Loans
        LEFT JOIN Books ON Books.BookID = Loans.BookID
      WHERE Books.Title = "Dracula"
        AND ReturnedDate IS NULL
    )
  ) As Available;