-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.
-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)
-- check if they're in the customer table
SELECT *
FROM Customers
WHERE Email = "smac@kinetecoinc.com";
-- Add customer
INSERT INTO Customers (FirstName, LastName, Email)
VALUES("Sam", "McAdams", "smac@kinetecoinc.com");
UPDATE Customers
SET Phone = "555-555-1232"
WHERE Email = "smac@kinetecoinc.com";
-- Add reservation
INSERT INTO Reservations(CustomerID, Date, PartySize)
VALUES (
    (
      SELECT CustomerID
      FROM Customers
      WHERE Email = "smac@kinetecoinc.com"
    ),
    "2022-08-12 18:00:00",
    5
  );
SELECT *
FROM Reservations
  JOIN Customers On Customers.CustomerID = Reservations.CustomerID
WHERE Email = "smac@kinetecoinc.com";