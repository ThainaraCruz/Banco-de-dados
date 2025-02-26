CREATE DATABASE db_farmacia_bem_estar;
USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(255),
    descricao VARCHAR(255)
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    valor DECIMAL(10, 2),
    marca VARCHAR(100),
    quantidade INT,
    data_validade DATE,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES
    ("Medicamentos", "Medicamentos para alívio de dores, febres e doenças"),
    ("Cosméticos", "Produtos de cuidados pessoais como shampoos e cremes"),
    ("Suplementos", "Suplementos alimentares para saúde e bem-estar"),
    ("Higiene Pessoal", "Produtos para higiene diária como sabonetes e pastas de dente"),
    ("Produtos Naturais", "Produtos naturais e orgânicos para saúde");

INSERT INTO tb_produtos (nome, valor, marca, quantidade, data_validade, categoria_id) VALUES
    ("Dipirona", 12.99, "Neo Química", 150, "2026-04-10", 1),
    ("Shampoo Antiqueda", 35.90, "Seda", 60, "2025-11-20", 2),
    ("Creatina Monohidratada", 89.99, "Integralmedica", 40, "2026-01-15", 3),
    ("Sabonete Líquido", 9.50, "Dove", 200, "2025-09-15", 4),
    ("Cápsulas de Ômega 3", 45.00, "Puritan's Pride", 80, "2026-03-05", 3),
    ("Pasta de Dente Sensodyne", 18.00, "Sensodyne", 120, "2025-12-01", 4),
    ("Chá de Erva Doce", 14.00, "Herbarium", 90, "2026-05-30", 5),
    ("Protetor Solar FPS 50",59.90, "La Roche-Posay", 50, "2025-08-10", 2);

SELECT * FROM tb_produtos WHERE valor > 50;

SELECT * FROM tb_produtos WHERE valor BETWEEN 5 AND 60;
  
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";
  
SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE categoria_id = 2;