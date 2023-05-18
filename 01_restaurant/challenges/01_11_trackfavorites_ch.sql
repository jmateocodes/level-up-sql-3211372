-- Update information in the database.
-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.
SELECT *
FROM Customers
WHERE FirstName = "Cleo"
  AND LastName = "Goldwater";
-- Cleo ID is 42
UPDATE Customers
SET FavoriteDish = (
    SELECT DishID
    FROM Dishes
    WHERE Name = "Quinoa Salmon Salad"
  )
WHERE FirstName = "Cleo"
  AND LastName = "Goldwater";