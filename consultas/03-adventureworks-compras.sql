/*
Arquivo: 03-adventureworks-compras.sql
Banco: AdventureWorks
Objetivo: relacionar itens de pedidos de compra com o cadastro de produtos.

Tabelas utilizadas:
- Purchasing.PurchaseOrderDetail
- Production.Product

Chave de ligação:
- ProductID
*/

-- Consulta detalhada dos itens dos pedidos de compra.
SELECT
    PO.PurchaseOrderID AS [ID do Pedido],
    P.Name AS [Nome do Produto],
    PO.ProductID AS [Cód. Produto],
    PO.OrderQty AS [Qtd. Pedida],
    PO.UnitPrice AS [Preço Unitário],
    PO.LineTotal AS [Total da Linha],
    PO.ReceivedQty AS [Qtd. Recebida],
    PO.DueDate AS [Data de Entrega]
FROM Purchasing.PurchaseOrderDetail AS PO
INNER JOIN Production.Product AS P
    ON PO.ProductID = P.ProductID
ORDER BY PO.PurchaseOrderID DESC, PO.LineTotal DESC;

-- Identifica itens recebidos parcialmente.
SELECT
    PO.PurchaseOrderID AS [ID do Pedido],
    P.Name AS [Nome do Produto],
    PO.OrderQty AS [Qtd. Pedida],
    PO.ReceivedQty AS [Qtd. Recebida],
    PO.OrderQty - PO.ReceivedQty AS [Qtd. Pendente]
FROM Purchasing.PurchaseOrderDetail AS PO
INNER JOIN Production.Product AS P
    ON PO.ProductID = P.ProductID
WHERE PO.ReceivedQty < PO.OrderQty
ORDER BY [Qtd. Pendente] DESC;

-- Resume o valor comprado por produto.
SELECT
    P.ProductID AS [Cód. Produto],
    P.Name AS [Nome do Produto],
    SUM(PO.OrderQty) AS [Quantidade Total Pedida],
    SUM(PO.LineTotal) AS [Valor Total Comprado],
    AVG(PO.UnitPrice) AS [Preço Unitário Médio]
FROM Purchasing.PurchaseOrderDetail AS PO
INNER JOIN Production.Product AS P
    ON PO.ProductID = P.ProductID
GROUP BY
    P.ProductID,
    P.Name
ORDER BY [Valor Total Comprado] DESC;

-- Retorna os dez produtos com maior valor total comprado.
SELECT TOP 10
    P.Name AS [Nome do Produto],
    SUM(PO.LineTotal) AS [Valor Total Comprado]
FROM Purchasing.PurchaseOrderDetail AS PO
INNER JOIN Production.Product AS P
    ON PO.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY [Valor Total Comprado] DESC;
