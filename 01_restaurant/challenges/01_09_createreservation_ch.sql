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