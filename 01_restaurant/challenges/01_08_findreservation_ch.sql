-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.
-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant
-- There are four people in the party. Today is June 14th.
SELECT *
FROM Reservations
  INNER JOIN Customers on Customers.CustomerID = Reservations.CustomerID
WHERE PartySize = 4
  AND Reservations.Date >= "%-06-14%"
  And (LastName LIKE "St%")
order by Date DESC;