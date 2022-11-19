UPDATE tbFabricante --exe1
SET nomeFabricante = 'Turma da Malha'
WHERE codFabricante = 3

UPDATE tbVenda --exe2
SET totalVenda = 100.15 - (100.15 * 0.1) --100.15 * 0.9
WHERE codCliente = 1

UPDATE tbProduto --exe3
SET precoProduto = precoProduto  + ( precoProduto * 0.2) 
WHERE codFabricante = 2

UPDATE tbProduto --exe4
SET estoqueProduto  = estoqueProduto - 10 
WHERE codProduto = 3

DELETE FROM tbItensVenda --exe5
WHERE codItensVenda = 4

DELETE FROM tbItensVenda --exe6
WHERE codVenda = 3

DELETE FROM tbFabricante --exe7
WHERE codFabricante = 1

--Não foi possível realizar o delete, pois a tabela tbFabricante está sendo usada como chave estrangeira na tabela tbProduto, com isso gerou um conflito entre elas. Se a ação fosse concluída, isso iria modificar o banco inteiro. 