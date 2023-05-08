USE db_capstone_project;
SELECT * FROM bookings;
SELECT * FROM customers;
SELECT * FROM menuitems;
SELECT * FROM menus;
SELECT * FROM orders;
#SELECT * FROM staff;
#SELECT customers.CustomerID, customers.Fullname, orders.OrderID, orders.TotalCost, orders.MenuID FROM customers INNER JOIN orders ON customers.CustomerID = orders.OrderID;

#SELECT customers.CustomerID, customers.Fullname, orders.OrderID, orders.TotalCost, orders.MenuID, menus.MenuName FROM customers INNER JOIN orders ON customers.CustomerID = orders.OrderID INNER JOIN menus ON orders.MenuID = menus.MenuID;

#SELECT customers.CustomerID, customers.Fullname, orders.OrderID, orders.TotalCost FROM orders
#INNER JOIN customers
#ON orders.CustomerID = customers.CustomerID;

#SELECT customers.CustomerID, customers.Fullname, orders.OrderID, orders.TotalCost, menus.MenuName FROM orders
#INNER JOIN customers
#ON orders.CustomerID = customers.CustomerID
#LEFT JOIN menus ON orders.MenuID = menus.MenuID;

#SELECT customers.CustomerID, customers.Fullname, orders.OrderID, orders.TotalCost, menus.MenuName, menuitems.CourseName FROM orders
#INNER JOIN customers
#ON orders.CustomerID = customers.CustomerID
#INNER JOIN menus ON orders.MenuID = menus.MenuID
#INNER JOIN menuitems ON menus.MenuItemID = menuitems.MenuItemID WHERE orders.TotalCost>150 ORDER BY orders.TotalCost;

#SELECT MenuName FROM menus WHERE MenuItemID = ANY (SELECT MenuID FROM orders WHERE Quantity > 2);

#DROP PROCEDURE IF EXISTS GetMaxQuantity;
#CREATE PROCEDURE GetMaxQuantity () SELECT MAX(Quantity) AS 'Max Quantity in Order' FROM orders;    
#CALL GetMaxQuantity();

#PREPARE GetOrderDetail FROM 'SELECT OrderID, Quantity, TotalCost FROM Orders WHERE CustomerID = ?';
#SET @id = 1;
#EXECUTE GetOrderDetail USING @id;

#DROP procedure IF EXISTS CancelOrder;
#CREATE PROCEDURE CancelOrder(order_id INT) DELETE FROM orders WHERE OrderID = order_id;
#CALL CancelOrder(5);
# I am not able to include the table displaying Order 5 has been cancelled.

INSERT INTO bookings (BookingID, BookingDate, TableNumber, NumberOfGuests, CustomerID) VALUES (1, '2022-10-10', 5, 1, 1), (2, '2022-11-12', 3, 1, 3), (3, '2022-10-11', 2, 1, 2), (4, '2022-10-13', 2, 1, 1);
SELECT * FROM bookings;