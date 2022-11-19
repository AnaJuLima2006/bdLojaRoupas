--DROP DATABASE bdLojaRoupas
CREATE DATABASE bdLojaRoupas
USE bdLojaRoupas
GO
CREATE TABLE tbCliente(
	codCliente INT PRIMARY KEY IDENTITY (1,1)
	, nomeCliente VARCHAR(50) NOT NULL
	,idadeCliente VARCHAR(2) NOT NULL
)
CREATE TABLE tbVendedor(
	codVendedor INT PRIMARY KEY IDENTITY (1,1)
	,nomeVendedor VARCHAR(50) NOT NULL
)
CREATE TABLE tbFuncionario(
	codFuncionario INT PRIMARY KEY IDENTITY (1,1)
	, nomeFuncionario VARCHAR(50) NOT NULL
	, idadeFuncionario VARCHAR(2) NOT NULL
	, dataAdmissao  DATETIME NOT NULL 
	, salarioFuncionario SMALLMONEY
)
CREATE TABLE tbFabricante(
	codFabricante INT PRIMARY KEY IDENTITY (1,1)
	, nomeFabricante VARCHAR(50) NOT NULL
)

CREATE TABLE tbProduto(
	codProduto INT PRIMARY KEY IDENTITY (1,1)
	, nomeFabricante VARCHAR(45) NOT NULL
	, precoProduto SMALLMONEY NOT NULL
	, dataEntradaProduto VARCHAR(10) NOT NULL
	, estoqueProduto INT NOT NULL 
	, codFuncionario INT FOREIGN KEY REFERENCES tbFuncionario(codFuncionario)
	, codFabricante INT FOREIGN KEY REFERENCES tbFabricante(codFabricante)
)
CREATE TABLE tbVenda(
	codVenda INT PRIMARY KEY IDENTITY (1,1)
	, dataVenda  DATETIME NOT NULL 
	, totalVenda SMALLMONEY NOT NULL
	, codCliente INT FOREIGN KEY REFERENCES tbCliente(codCliente)
	, codVendedor INT FOREIGN KEY REFERENCES tbVendedor(codVendedor)
)
CREATE TABLE tbItensVenda(
	codItensVenda INT PRIMARY KEY IDENTITY (1,1)
	, quantItensVenda INT NOT NULL
	, subTotalItensVenda SMALLMONEY NOT NULL
	, codVenda INT FOREIGN KEY REFERENCES tbVenda(codVenda)
	, codProduto INT FOREIGN KEY REFERENCES tbProduto(codProduto)
)
