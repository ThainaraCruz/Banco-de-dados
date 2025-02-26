CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255),
borda VARCHAR(255),
PRIMARY KEY(id)
);

CREATE TABLE tb_pizzas (
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
descricao VARCHAR(255),
adcional VARCHAR(255),
valor DECIMAL,
categoria_id BIGINT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, borda)
VALUES
    ('Salgada', 'Borda Tradicional'),
    ('Salgada', 'Borda Recheada de Queijo'),
    ('Salgada', 'Borda de Catupiry'),
    ('Doce', 'Borda Recheada com Chocolate'),
    ('Doce', 'Borda de Doce de Leite');

INSERT INTO tb_pizzas (nome, descricao, adcional, valor, categoria_id)
VALUES
    ("Pizza Marguerita", "Pizza clássica com molho de tomate, queijo mozzarella e manjericão fresco", "Parmesão", 35.00, 1),
    ("Pizza Calabresa", "Pizza com calabresa fatiada, azeitonas e queijo mozzarella", "Cebola", 45.00, 1),
    ("Pizza Frango com Catupiry", "Pizza com frango desfiado, catupiry, milho e cebola", "Quejo mozzarella", 55.00, 1),
    ("Pizza Portuguesa", "Pizza com presunto, queijo, ovos, azeitonas e cebola", "Bacon", 65.00, 1),
    ("Pizza Doce de Leite", "Pizza doce com base de leite condensado e doce de leite cremoso", "Ouro branco", 80.00, 2),
    ("Pizza Chocolate com Morango", "Pizza doce com ganache de chocolate e morangos frescos", "M&M", 95.00, 2),
    ("Pizza Banoffee", "Pizza doce com banana, doce de leite e chantilly", "Chocolate Branco", 120.00, 2),
    ("Pizza Nutella", "Pizza doce com creme de Nutella, morangos e chocolate granulado", "BIS", 200.00, 2);

SELECT * FROM tb_pizzas WHERE valor > 45;

SELECT * FROM tb_pizzas WHERE valor BETWEEN 50 AND 100;
  
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";
  
SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE categoria_id = 1;