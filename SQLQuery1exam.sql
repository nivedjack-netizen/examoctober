create database exam

use [exam]
select * from mt3;
 
 SELECT 
    state, COUNT(*) AS TotalOrders,SUM(Quantity) AS TotalQuantity,SUM(NetSales) AS TotalSales,
    SUM(Profit) AS TotalProfit,AVG(NetSales) AS AverageOrderValue FROM mt3

WHERE OrderStatus = 'Completed'
GROUP BY State
HAVING SUM(NetSales) > 1000000
ORDER BY TotalSales DESC;





WITH CustomerSales AS
(SELECT CustomerID,CustomerName,SUM(NetSales) AS TotalSales

  FROM mt3 WHERE OrderStatus = 'Completed' GROUP BY CustomerID, CustomerName)

SELECT TOP 5 * FROM CustomerSales
ORDER BY TotalSales DESC;









SELECT 
    State,SUM(NetSales) AS TotalSales,RANK() OVER (ORDER BY SUM(NetSales) DESC) AS SalesRank
FROM mt3 WHERE OrderStatus = 'Completed' GROUP BY State ORDER BY SalesRank;