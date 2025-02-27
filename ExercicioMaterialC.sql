CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    valor DECIMAL,
    quantidade INT,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES
    ("Ferramentas", "Ferramentas para construção e reparos, como martelos, chaves e serrotes"),
    ("Tintas", "Tintas e esmaltes para acabamento e decoração"),
    ("Cimentos e Concretos", "Cimento, argamassa e produtos para construção de fundações e paredes"),
    ("Elétricos", "Fios, cabos, tomadas e outros materiais para instalações elétricas"),
    ("Hidráulicos", "Tubos, conexões e materiais para instalações hidráulicas");

INSERT INTO tb_produtos (nome, valor, quantidade, categoria_id) VALUES
    ("Martelo de Unha", 75.90, 50, 1),
    ("Chave de Fenda", 12.50, 80, 1),
    ("Tinta Acrílica Roxa", 129.90, 120, 2),
    ("Tinta Esmalte Sintético", 72.40, 100, 2),
    ("Cimento Portland", 25.00, 200, 3),
    ("Argamassa Colante", 88.70, 150, 3),
    ("Cabo Elétrico 1,5mm", 8.80, 500, 4),
    ("Canos PVC 100mm", 25.90, 300, 5);

SELECT * FROM tb_produtos WHERE valor > 100;

SELECT * FROM tb_produtos WHERE valor BETWEEN 70 AND 150;
  
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
  
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE categoria_id = 5;
