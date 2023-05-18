-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.
-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.
-- Check if Loreta exists
SELECT *
FROM Customers
WHERE FirstName = "Loretta"
  and LastName = "Hundey";
-- Create record for order
INSERT INTO Orders (CustomerID, OrderDate)
VALUES (
    (
      SELECT CustomerID
      FROM Customers
      WHERE FirstName = "Loretta"
        and LastName = "Hundey"
        AND Address = "6939 Elka Place"
    ),
    "2022-09-20 14:00:00"
  );
-- Created record for dishes ordered
INSERT INTO OrdersDishes (OrderID, DishID)
VALUES (
    10001,
    (
      SELECT DishID
      FROM Dishes
      WHERE Name = "House Salad"
    )
  ),
  (
    10001,
    (
      SELECT DishID
      FROM Dishes
      WHERE Name = "Mini Cheeseburgers"
    )
  ),
  (
    10001,
    (
      SELECT DishID
      FROM Dishes
      WHERE Name = "Tropical Blue Smoothie"
    )
  );
UPDATE OrdersDishes
SET OrderID = 1001
WHERE OrderID = 10001;
-- Get sum
SELECT OrderID,
  SUM(Price)
from Dishes
  INNER JOIN OrdersDishes ON OrdersDishes.DishID = Dishes.DishID
WHERE OrderID = 1001
GROUP BY OrderID;