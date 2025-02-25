CREATE DATABASE db_rhOlympus;
-- Criando o banco de dados

USE db_rhOlympus;
-- Selecionando o banco de dados a ser usado

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
telefone INT NOT NULL,
salario DECIMAL NOT NULL,
PRIMARY KEY(id)
);
-- Criação da tabela

INSERT INTO tb_colaboradores (nome, cargo, telefone, salario)
VALUES 
("Annabeth Chase", "Arquiteta", 987426378, 4000.00),
("Percy Jackson", "Biologo", 987654321, 2400.00),
("Grover Underwood", "Protetor Ambiental", 112233445, 1800.00),
("Leo Valdez", "Engenheiro", 998877665, 4500.00),
("Thalia Grace", "Segurança", 556677889, 1900.00);
-- Inserção de registros na tabela

SELECT * FROM tb_colaboradores WHERE salario >2000;
-- Consulta dos colaboradores com o salário maior que 2000.00

SELECT * FROM tb_colaboradores WHERE salario <2000;
-- Consulta dos colaboradores com o salário menor que 2000.00

UPDATE tb_colaboradores SET salario = 5000.00 WHERE id = "1";
-- Atualização de um registro

