CREATE DATABASE db_cidade_dos_vegetais;
USE db_cidade_dos_vegetais;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    descricao TEXT
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    valor DECIMAL(10, 2),
    quantidade INT,
    data_validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES
    ("Frutas", "Frutas frescas e sazonais, ricas em vitaminas"),
    ("Verduras", "Verduras frescas e nutritivas, como alface e couve"),
    ("Legumes", "Legumes frescos, como cenoura, batata e abóbora"),
    ("Hortaliças", "Hortaliças e folhas com alto valor nutricional"),
    ("Ervas", "Ervas frescas para temperos e culinária");

INSERT INTO tb_produtos (nome, valor, quantidade, data_validade, categoria_id)
VALUES
    ("Maçã Gala",  3.99, 100, "2025-03-15", 1),
    ("Banana Prata", 2.49, 150, "2025-03-10", 1),
    ("Alface Americana", 4.50, 200, "2025-03-05", 2),
    ("Cenoura", 1.80, 300, "2025-03-20", 3),
    ("Tomate", 5.00, 120, "2025-03-12", 3),
    ("Salsa", 2.20, 100, "2025-03-30", 5),
    ("Espinafre Fresco",  4.50, 180, "2025-03-30", 4),
    ("Manjericão", 2.80, 120, "2025-03-25", 5);

SELECT * FROM tb_produtos WHERE valor > 3;

SELECT * FROM tb_produtos WHERE valor BETWEEN 2 AND 5;
  
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
  
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE categoria_id = 5;

