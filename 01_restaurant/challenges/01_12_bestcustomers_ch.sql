-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
SELECT FirstName,
  LastName,
  Email,
  Count(OrderID) OrderCount
FROM Customers
  LEFT JOIN Orders ON Orders.CustomerID = Customers.CustomerID
GROUP BY Orders.CustomerID
ORDER BY OrderCount DESC;