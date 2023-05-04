USE bdEstoque2


UPDATE tbProduto
SET valorProduto = valorProduto * 1.1
WHERE codFabricante = 1

UPDATE tbProduto
SET valorProduto = valorProduto * 0.93
WHERE codFabricante = 2

UPDATE tbProduto
SET quantidadeProduto = quantidadeProduto - 30
WHERE codFornecedor = 1

UPDATE tbCliente
SET nomeCliente = 'Adriana Nogueira Silva Campos'
WHERE codCliente = 5

UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda * 0.95
WHERE dataVenda between '01/02/2014' and '05/08/2014'

DELETE from tbItensVenda
WHERE codProduto = 5

UPDATE tbProduto 
SET valorProduto = valorProduto * 0.80
WHERE quantidadeProduto > 1000

UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda * 0.90
WHERE codcliente between 2 and 4

UPDATE tbProduto
SET valorProduto = valorProduto * 1.06
WHERE codFabricante = 1


UPDATE tbVenda
SET valorTotalVenda = valorTotalVenda * 1.02
WHERE dataVenda between '01/02/2014' and '15/02/2014'
