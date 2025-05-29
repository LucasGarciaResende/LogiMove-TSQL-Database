-- Listar pedidos com nome do cliente e nome do motorista
SELECT 
    order.OrderID,
    client.Nome AS NomeCliente,
    driver.Nome AS NomeMotorista,
    order.DetalhesPedido,
    order.DataEntrega,
    order.Status
FROM Orders order
JOIN Clients client ON order.ClientID = client.ClientID
JOIN Drivers driver ON order.DriverID = driver.DriverID;

--Listar pedidos em andamento
SELECT 
    order.OrderID,
    client.Nome AS NomeCliente,
    driver.Nome AS NomeMotorista,
    order.DetalhesPedido,
    order.DataEntrega,
    order.Status
FROM Orders order
JOIN Clients client ON order.ClientID = client.ClientID
JOIN Drivers driver ON order.DriverID = driver.DriverID
WHERE order.Status = 'Em andamento';

--Listar motoristas com mais de 5 pedidos
SELECT driver.DriverID, driver.Nome, COUNT(*) AS NumPedidos
FROM Orders
JOIN Drivers driver ON Orders.DriverID = driver.DriverID
GROUP BY driver.DriverID, driver.Nome
HAVING COUNT(*) > 5;

--Listar entragas de hoje
SELECT 
    order.OrderID,
    client.Nome AS NomeCliente,
    driver.Nome AS NomeMotorista,
    order.DetalhesPedido,
    order.DataEntrega,
    order.Status
FROM Orders order
JOIN Clients client ON order.ClientID = client.ClientID
JOIN Drivers driver ON order.DriverID = driver.DriverID
WHERE order.DataEntrega = CURDATE();