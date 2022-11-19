USE bdLojaRoupas

INSERT INTO tbCliente (nomeCliente, idadeCliente)
VALUES    ('Maria Josefina dos Santos', 30)
        , ('Mauricio Ramos', 27)
        , ('Maribel Soares', 25)
        , ('Roberto Carlos Guimarães', 35)
        , ( 'Joana Silva Castro', 45)
SELECT * FROM tbCliente

INSERT INTO tbVendedor (nomeVendedor)
VALUES    ('João Santana')
        , ('Raquel Torres')
SELECT * FROM tbVendedor 

INSERT INTO tbFuncionario (nomeFuncionario, idadeFuncionario, dataAdmissao, salarioFuncionario)
VALUES    ('Maria Antonieta de Jesus', 32, '10/10/2018', 2500.00)
        , ('Romeo Montequio Capuleto', 37, '25/05/2015', 2350.00)
SELECT * FROM tbFuncionario

INSERT INTO tbFabricante (nomeFabricante)
VALUES    ('Malwee')
        , ('Marisol')
        , ('Cia da Malha')
SELECT * FROM tbFabricante

INSERT INTO tbProduto (nomeFabricante, precoProduto, dataEntradaProduto, estoqueProduto, codFuncionario, codFabricante)
VALUES    ('Malwee', 44.90, '12/03/2020',200, 1, 1 )
        , ('Malwee', 35.35, '05/05/2020', 300, 2, 1)
        , ('Malwee', 20.00, '10/06/2020', 500, 1,1)
        , ('Marisol', 50.00, '24/08/2021', 150, 1, 2)
        , ('Marisol', 70.00, '27/09/2020', 360, 2,2)
        , ('Marisol', 95.70, '15/08/2019', 60, 1,2)
        , ('Cia da Malha', 19.90, '06/12/2020', 420, 2, 3)
        , ('Cia da Malha', 23.99, '16/07/2021', 90, 1,3)
        , ('Cia da Malha', 30.56, '04/01/2021', 251, 1, 3)
SELECT * FROM tbProduto

INSERT INTO tbVenda (dataVenda, totalVenda, codCliente, codVendedor)
VALUES    ('12/09/2022', 64.90, 3, 2 )
        , ('02/05/2022', 104.34, 4, 2)
        , ('15/09/2022',216.26, 5, 1)
        , ('03/10/2022', 100.15, 1, 2)
        , ('17/07/2022', 120.56, 2, 1)
SELECT * FROM  tbVenda

INSERT INTO tbItensVenda (quantItensVenda, subTotalItensVenda, codVenda, codProduto)
VALUES    (1, 64.90 ,1, 1)
        , (1, 64.90 ,1, 3)
        , (4, 104.34 ,2, 5)
        , (1, 104.34 ,2, 8)
        , (4, 216.26 ,3, 6)
        , (3, 216.26 ,3, 7)
        , (2, 100.15 ,4, 2)
        , (4, 100.15 ,4, 4)
        , (3, 120.56 ,5, 9)
        , (2, 120.56 ,5, 3)
SELECT * FROM tbItensVenda


        