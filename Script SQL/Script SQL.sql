CREATE DATABASE AGENCIAVIAGENS;

USE AGENCIAVIAGENS;

CREATE TABLE pacotesViagens (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    destino VARCHAR(255) NOT NULL,
    hospedagem VARCHAR(255) NOT NULL,
    diarias VARCHAR(20) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    idFuncionario INT
);

-- INSERT INTO `agenciaviagens`.`pacotesviagens` (`destino`, `hospedagem`, `diarias`, `preco`, `idFuncionario`) VALUES ('Porto  Seguro', 'Hotel ', '03', '800', '1');
-- INSERT INTO `agenciaviagens`.`pacotesviagens` (`destino`, `hospedagem`, `diarias`, `preco`, `idFuncionario`) VALUES ('Pernambuco', 'Pousada', '04', '1200', '1');


CREATE TABLE promocao (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nomePromocao VARCHAR(255) NOT NULL,
    tipoPromocao VARCHAR(255) NOT NULL,
    Desconto DECIMAL(3,2) NOT NULL,
    idpacotes INT
);

-- INSERT INTO `agenciaviagens`.`promocao` (`nomePromocao`, `tipoPromocao`, `Desconto`, `idpacotes`) VALUES ('to de ferias', 'cupom', '0.20', '2');

CREATE TABLE Funcionario (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(50) NOT NULL
);

 -- INSERT INTO `agenciaviagens`.`funcionario` (`nome`, `email`, `senha`) VALUES ('Admin', 'admin@gmail.com', 'admin');

ALTER TABLE pacotesViagens ADD CONSTRAINT FK_pacotesViagens 
    FOREIGN KEY (idFuncionario) 
    REFERENCES Funcionario (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
 
 ALTER TABLE promocao ADD CONSTRAINT FK_promocao 
    FOREIGN KEY (idpacotes)
    REFERENCES pacotesViagens (id)
    ON DELETE CASCADE
    ON UPDATE CASCADE;

    