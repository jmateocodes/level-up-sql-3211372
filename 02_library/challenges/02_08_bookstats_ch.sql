-- Create two reports about book statistics.
-- Report 1: Show how many titles were published 
-- in each year.
-- Report 2: Show the five books that have been
-- checked out the most.
SELECT Published,
  Count(Title) Published_Cnt
FROM Books
GROUP BY Published
ORDER BY Published_Cnt DESC;
SELECT Title,
  Author,
  count(Loans.BookID) Loan_Cnt
FROM Loans
  JOIN Books ON Books.BookID = Loans.BookID
GROUP BY Title
ORDER BY Loan_Cnt DESC
LIMIT 5;